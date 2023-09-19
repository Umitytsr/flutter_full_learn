import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget{
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a'* 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b'*50)
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 200,minWidth: 100,maxHeight:120,minHeight: 10), 
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            /*
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [Colors.red,Colors.black]),
              boxShadow: const [BoxShadow(
                //color: Colors.green,
                offset: Offset(0.1,1),
                blurRadius:  12,
              )],
              // shape: BoxShape.circle , // yuvarlak olması için
              border: Border.all(width: 10,color: Colors.white12),
            ), */

            // üstteki decoration yerine bu da olabilir.
            decoration: ProjectUtility.boxDecoration,
            child: Text('b'*50,maxLines: 1,),
          )
        ],
      ),
    );
  }
}

class ProjectUtility{
  static BoxDecoration boxDecoration =BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [Colors.red,Colors.black]),
              boxShadow: const [BoxShadow(
                //color: Colors.green,
                offset: Offset(0.1,1),
                blurRadius:  12,
              )],
              // shape: BoxShape.circle , // yuvarlak olması için
              border: Border.all(width: 10,color: Colors.white12),
            );
}

// veya

class ProjectContainerDecoration extends BoxDecoration{
  ProjectContainerDecoration(): super(
      borderRadius : BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [Colors.red,Colors.black]),
              boxShadow: const [BoxShadow(
                //color: Colors.green,
                offset: Offset(0.1,1),
                blurRadius:  12,
              )],
              // shape: BoxShape.circle , // yuvarlak olması için
              border: Border.all(width: 10,color: Colors.white12));
}