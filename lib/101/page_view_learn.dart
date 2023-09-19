import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex = 0;

  void _updatePageIndex(int index){
    setState(() {
      _currentPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          children: [
            Text('$_currentPageIndex'),
            const Spacer(),
            FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                  duration: _DurationUtility._durationLow, 
                  curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_left)),
            FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: _DurationUtility._durationLow,
                   curve: Curves.slowMiddle);
              },child: const Icon(Icons.chevron_right)
            ),
          ],
        ),
      ),
      appBar: AppBar(),
      body: PageView(
        controller: _pageController, // sonraki sayfanın bir kısmını gösteriyo.(Spoiler veriyo gibi)
        padEnds: false,
        onPageChanged: _updatePageIndex,
        children: const [
          ImageLearn(),
          IconLearnView(),
          StackLearn(),
          ],
      ),
    );
  }
}

class _DurationUtility{
  static const _durationLow = Duration(milliseconds: 200);
}