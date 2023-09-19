import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();

  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            //keyboardType: TextInputType.number, //numara olarak açar.
            //keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email], // klavyeye @ tuşunu ekler
            inputFormatters: [TextProjectInputFormatter()._formatter],
            autofocus: true,
            focusNode: focusNodeTextFieldOne, //
            textInputAction: TextInputAction.next, // bir altta ki text'e geçer
            maxLength: 15, // maximum yazılacak karakter için
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.mail),
              border: OutlineInputBorder(),
              //hintText: 'Mail', // içine yazar
              labelText: 'Mail', // üstüne yazar 
            ),
            buildCounter: (BuildContext context, {int? currentLength,bool? isFocused,int? maxLength}) {
              return _animationContainer(currentLength);
              },
          ),
          TextField(
            focusNode: focusNodeTextFieldTwo,
            minLines: 2,
            maxLines: 4,
            )
        ],
      ),
      
    );
  }

  AnimatedContainer _animationContainer(int? currentLength) {
    return AnimatedContainer(
          key: key,
          color: Colors.green[100*(currentLength ?? 0)],
          height: 10,
          width: 10.0 * (currentLength ?? 0), 
          duration: const Duration(
            seconds: 1
            ),);
  }
}

class TextProjectInputFormatter{
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue){
            if(oldValue.text == 'a'){
            return oldValue;
            }
            return oldValue;
            
          });
}