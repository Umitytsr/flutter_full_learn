import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final _title = 'Welcome Learn';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        debugPrint('geri gitti');
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(_title, ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          leading: const Icon(Icons.chevron_left),
          leadingWidth: 40,
          actionsIconTheme: const IconThemeData(color:Colors.red,size: 34),
          toolbarTextStyle: const TextStyle(color : Colors.deepPurpleAccent),
          automaticallyImplyLeading: false, // sayfada text butonu gelmesin demek
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu_sharp)),
            const Center(child: CircularProgressIndicator())
          ],
        ),
      ),
    );
  }
}