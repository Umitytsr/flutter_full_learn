import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';


class StatefulStatelessDeneme extends StatelessWidget {
  const StatefulStatelessDeneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          RandomImage(height: 200),
          //StatefulDenemeState()
        ],
      ),
    );
  }
}

class StatefulDeneme extends StatefulWidget {
  const StatefulDeneme({super.key});

  @override
  State<StatefulDeneme> createState() => _StatefulDenemeState();
}

class _StatefulDenemeState extends State<StatefulDeneme> {
  @override
  Widget build(BuildContext context) {
    int count =0;

    void updateCount(){
      setState(() {
        ++count;
      });
    }
    return Scaffold(
      body: FloatingActionButton(onPressed: () {
        updateCount();
      },
      child: Text('Merhaba $count'),
      ),
    );
  }
}