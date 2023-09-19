import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;
  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;
 
  @override
  void initState() {
     super.initState();
     _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  void changeBackroundColor(Color color){
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(widget.initialColor != _backgroundColor && widget.initialColor != null){
      changeBackroundColor(widget.initialColor!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if(value ==  _MyColors.red.index){
             changeBackroundColor(Colors.red);
          }else if(value == _MyColors.yellow.index){
            changeBackroundColor(Colors.yellow);
          }else if(value == _MyColors.blue.index){ 
            changeBackroundColor(Colors.blue);
          }
        },
        items: const [
        BottomNavigationBarItem(icon: ColorContainer(color: Colors.red),label: 'Red'),
        BottomNavigationBarItem(icon: ColorContainer(color: Colors.yellow,),label: 'Yellow'),
        BottomNavigationBarItem(icon: ColorContainer(color: Colors.blue,),label: 'Blue'),
      ]),
    );
  }
}

enum _MyColors{red,yellow,blue}

class ColorContainer extends StatelessWidget {
  const ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(color: color,width: 10,height: 10,);
  }
}
