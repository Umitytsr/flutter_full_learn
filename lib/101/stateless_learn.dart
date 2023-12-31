import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget{
  const StatelessLearn({super.key});
  final text2 = 'Ümit';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(text: text2),
          const TitleTextWidget(text: 'Ümit2'),
          const TitleTextWidget(text: 'Ümit3'),
          const TitleTextWidget(text: 'Ümit4'),
        
          const _CustomContainer(),
          _emptyBox(),
      ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10,);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer();

  @override
  Widget build(BuildContext context) {
    return Container (
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.red)
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key,required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}