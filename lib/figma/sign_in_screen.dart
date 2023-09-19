import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/image_learn_202.dart';
import 'package:flutter_full_learn/figma/widget/elevated_button.dart';
import 'package:flutter_full_learn/figma/widget/outlined_button.dart';
import 'package:flutter_full_learn/figma/widget/text_button.dart';
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back),color: Colors.black,),
        
      ),
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10,),
          const Text('Welcome Back!',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
          const SizedBox(height: 30,),
          CustomElevatedButton(backgroundColor: const Color(0xff7583CA),text: 'CONTINUE WITH FACEBOOK',image: ImagePath.facebook_icon.toWidget()),
          const SizedBox(height: 20,),
          const CustomOutlinedButton(),
          const SizedBox(height: 40,),
          const Text('OR LOG IN WITH EMAIL',style: TextStyle(color: Color(0xffA1A4B2),fontSize: 14),),
          const SizedBox(height: 40,),
          const CustomTextField(keybordType: TextInputType.emailAddress,hint: 'Email adress',),
          const SizedBox(height: 20,),
          const CustomTextField(keybordType: TextInputType.text, hint: 'Pasword'),
          const SizedBox(height: 30,),
          const CustomElevatedButton(backgroundColor: Color(0xff8E97FD), text: 'LOG IN'),
         
          const CustomTextButton(textColor: Color(0xff3F414E), text: 'Forgot Password?'),
          const SizedBox(height: 50,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ALREADY HAVE AN ACCOUNT?'),
              CustomTextButton(textColor: Color(0xff8E97FD),text: 'SIGN UP',)
            ],
          )

        ],
       ),
    );
  }
}