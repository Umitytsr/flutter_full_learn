import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({super.key});
  final _title = 'Create your first not';
  final _description = 'Add a Note ';
  final _createNote = 'Create a Note';
  final _importNote = 'Import Notes';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark,),
      body: Padding(
        padding: PaddingItems().horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleLogo),
            _TitleWidget(title: _title),
            Padding( 
              padding: PaddingItems().verticalPadding, 
              child: _SubTitleWidget(description: _description * 15),
            ),
            const Spacer(),

            ElevatedButton(onPressed: () {}, 
            child: SizedBox(
              height: ButtonHeights.buttonNormalHeight,
              child: Center(
                child: Text(_createNote,
                style: Theme.of(context).textTheme.headlineSmall,)))),

            TextButton(onPressed: () {
              
            }, child: Text(_importNote)),
            const SizedBox(
              height: ButtonHeights.buttonNormalHeight,
            )
          ]),
      ),
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({Key? key,this.textAlign = TextAlign.center ,required this.description,
  }) : super(key: key);
  final TextAlign textAlign;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      maxLines: 3,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black,fontWeight: FontWeight.w400 ),
      );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
      color: Colors.black,fontWeight: FontWeight.w600), 
      );
  }
}

class PaddingItems{
  final  EdgeInsets horizontalPadding = const EdgeInsets.symmetric(horizontal: 20);
  final  EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 12);
}


class ImageItems {
  final String appleLogo= 'Apple-logo';
}

class PngImage extends StatelessWidget{
  const PngImage({super.key,required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_imageDraw, fit: BoxFit.cover, width: 300, height: 300,);
  }
  String get _imageDraw => 'assets/png/$name.png';
}

class ButtonHeights{
  static const double buttonNormalHeight = 50;
}