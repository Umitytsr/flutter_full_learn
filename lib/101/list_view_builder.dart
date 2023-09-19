import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(color:Colors.white);
        },
        itemBuilder: (context,index){
        return SizedBox(
          height: 200,
          child: Column(
            children: [
              const Expanded(child: RandomImage()),
              Text('${index+1}')
            ],
          ),
        );
      },itemCount: 15,),
    );
  }
}