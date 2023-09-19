import 'package:flutter/material.dart';
import 'package:flutter_full_learn/figma/widget/elevated_button.dart';
import 'package:flutter_full_learn/figma/widget/outlined_button.dart';
import 'package:flutter_full_learn/figma/widget/text_field.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome Back!',style: TextStyle(fontSize: 28),),
          SizedBox(height: 30,),
          CustomElevatedButton(),
          SizedBox(height: 30,),
          CustomOutlinedButton(),
          SizedBox(height: 30,),
          Text('OR LOG IN WITH EMAIL',style: TextStyle(color: Color(0xffA1A4B2),fontSize: 14),),
          SizedBox(height: 30,),
          CustomTextField(),
        ],
       ),
    );
  }
}