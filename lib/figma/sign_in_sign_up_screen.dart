import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/image_learn_202.dart';
import 'package:flutter_full_learn/figma/widget/elevated_button.dart';
import 'package:flutter_full_learn/figma/widget/text_button.dart';

class SignInSingUpScreen extends StatelessWidget {
  const SignInSingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: [
          Stack(
            children: [
              ImagePath.vector_top.toWidget(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50,right: 123,left: 123),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Silent',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: ImagePath.water_drop.toWidget(),
                        ),
                        const Text('Moon',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60,right: 40.69,left:42.09,bottom: 99.31 ),
                    child: ImagePath.sing_up_human.toWidget(),
                  ),  
                ],
              )
            ]
          ),

          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text('We are what we do',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58)+const EdgeInsets.only(top: 15),
            child: const Center(
              child: Text(
                'Thousand of people are using silent moon for small meditation',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16,)),
            ),
          ),
          const SizedBox(height: 62,),
          const CustomElevatedButton(backgroundColor: Color(0xff8E97FD), text: 'SIGN UP'),
          
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ALREADY HAVE AN ACCOUNT?'),
              CustomTextButton(textColor: Color(0xff8E97FD),text: 'LOG IN',)
            ],
          )
        ],
      ),      
    );
  }
}