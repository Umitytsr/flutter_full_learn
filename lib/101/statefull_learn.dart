import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});
  // Burası değişmez bir component. Dışardan veri alıp verme işlemi burada gerçekleşir.
  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  // Değişiklikler burada olur.

  int _countValue = 0;
  
  void _updateCounter(bool isIncrement){
    if(isIncrement){
      _countValue += 1;
    }else{
      _countValue -= 1;
    }

    setState(() {
          
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(child: Text('$_countValue',style: Theme.of(context).textTheme.displayMedium,)),
          const Placeholder(),
          const CounterHelloButton()
        ],
      ),
        
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
          onPressed: () {
            _updateCounter(true);
          },
          child: const Icon(Icons.add),
        );
  }

  Padding _deincrementButton() {
    return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: FloatingActionButton(
            onPressed: () {
              _updateCounter(false);
            },
            child: const Icon(Icons.remove),
          ),
        );
  }
}