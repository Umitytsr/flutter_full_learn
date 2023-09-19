// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            color: Colors.red,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text('Ali',style: TextStyle(color: Colors.black),))),
          ),
          Card(
            color: Theme.of(context).colorScheme.error,
            child: const SizedBox(height: 100,width:100),
          ),

          const _CustomCard(
            child: SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text('data')),)
          )
        ],
      ),
    );
  }
}

class ProjectMargins{
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({Key? key,required this.child,}) : super(key: key);

  final Widget child; 
  
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: child 
    );
  }

}
