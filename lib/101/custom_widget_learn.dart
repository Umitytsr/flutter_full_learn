// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String _title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomFoodButton(title: _title,onPressed: () {
                    
                  },))),
            ),
          ),
          const SizedBox(height: 100),
          Padding(
            padding: _PaddingUtility().normalPadding,
            child: CustomFoodButton(title:  _title,onPressed: () {
              
            }),
          )
        ],
      ),
    );
  }
}

class _ColorsUtility{
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class CustomFoodButton extends StatelessWidget {
  const CustomFoodButton({
    Key? key,
    required this.title,
    required this.onPressed, // tıklama işlemini buradan tanımlayıp yollayabiliyoruz
  }) : super(key: key);
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: _ColorsUtility().redColor,
          shape: const StadiumBorder()),
          onPressed: onPressed,
          child: Padding(
            padding: _PaddingUtility().normalPadding,
            child: Text(title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(color: _ColorsUtility().whiteColor )),
          ));

  }
}

class _PaddingUtility{
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
}
