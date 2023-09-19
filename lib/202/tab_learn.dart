import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double notchMargin = 10;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: () {
          _tabController.animateTo(_MyTabViews.home.index);
        },),
        bottomNavigationBar:_myBottomAppBar(),  
        appBar: AppBar(),
        body: _tabBarView(),
      ),
    );
  }

  BottomAppBar _myBottomAppBar() {
    return BottomAppBar(
        notchMargin: notchMargin,
        shape: const CircularNotchedRectangle(),
          child: _myTabBar()
        );
  }

  TabBar _myTabBar() {
    return TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.red,
            padding: EdgeInsets.zero,
            controller: _tabController,
            tabs:_MyTabViews.values.map((e) => Tab(text:'${e.name}')).toList());
  }

  TabBarView _tabBarView() {
    return TabBarView(
        physics: const NeverScrollableScrollPhysics(),// sağa sola geçişi önler
        controller: _tabController,
        children: const [
          IconLearnView(),
          ImageLearn(),
          IconLearnView(),
          ImageLearn(),
        ],
      );
  }
}

enum _MyTabViews{home, setting, favorite, profile}

extension _MyTabViewExtension on _MyTabViews{

}