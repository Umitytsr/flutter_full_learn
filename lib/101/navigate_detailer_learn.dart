// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NavigateDetailerLearn extends StatefulWidget {
  const NavigateDetailerLearn({Key? key,this.isOkey = false,}) : super(key: key);
  final bool isOkey;
  @override
  State<NavigateDetailerLearn> createState() => _NavigateDetailerLearnState();
}

class _NavigateDetailerLearnState extends State<NavigateDetailerLearn> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //ModalRoute.of(context).settings.arguments
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(onPressed: () {
          Navigator.of(context).pop(!widget.isOkey);
        }, icon: Icon(Icons.check,color: widget.isOkey ? Colors.red : Colors.green,), 
        label: widget.isOkey ? const Text('Red'): const Text('Onayla')),
      ),
    );
  }
}