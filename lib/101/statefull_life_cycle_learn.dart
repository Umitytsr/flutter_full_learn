// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({Key? key, required this.message}) : super(key: key);
  final String message;
  
  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initState gibi çalışır. initState'den sonra çalışmaya başlar. Sayfanın içinde ki değerler komple 
    // değiştiğinde çalışmaya başlar.
    debugPrint('c');
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Üst class'lardan çağırınca gelen komponentlerden birisi.
    debugPrint('b');
  }

  

  @override
  void initState() {
    super.initState();
    // Henüz ekranın çizilmediği yer. Burada güncelleme olmaz. initState bitince çizim olur.
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    computeName();
    debugPrint('a');
  }

  @override
  void dispose() {
    super.dispose();
    // sayfanın öldüğü andır.
    debugPrint('alo');
  }

  void computeName(){
    if(_isOdd){
      _message += 'Çift';
    }else{
      _message += 'Tek'; 
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message)
      ),
      body: _isOdd 
      ? TextButton(onPressed: (){}, child: Text(_message)) 
      : ElevatedButton(onPressed: (){}, child: Text(_message))
    );
  }
}