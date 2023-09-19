import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/navigate_detailer_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  List<int> selectedItems=[];
  void addSelected(int index,bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context,index){
        return TextButton(
          onPressed: () async{
          final response = await navigatorToWidgetNormal<bool>(
            context, 
            NavigateDetailerLearn(isOkey:selectedItems.contains(index) ,)) ;

          if(response is bool){
            addSelected(index,response);
          }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () {
          
        },
      ),
    );
  }
}


mixin NavigatorManager{
  void navigatorToWidget(BuildContext context,Widget widget){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return widget;
    },
    fullscreenDialog: true, // iphone gibi geliyo
    settings: const RouteSettings(), // Arguman vererek obje yollayabiliriz.
    ));
  }

  Future<T?> navigatorToWidgetNormal<T>(BuildContext context,Widget widget){
    return Navigator.of(context).push<T>(MaterialPageRoute(builder: (context){
      return widget;
    },
    fullscreenDialog: true, // iphone gibi geliyo
    settings: const RouteSettings(), // Arguman vererek obje yollayabiliriz.
    ));
  }
}