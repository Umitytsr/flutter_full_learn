import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PosModel8(body: 'a');

  @override
  void initState() {
    super.initState();

    final user1 = PosModel1()
    ..userId=1..id=1..body='bd'..title='tt';
    user1.id = 3;

    final user2 = PosModel2(1, 2, 'title', 'body');
    user2.body = 'a';

    // final user3 = PosModel3(1, 2, 'a', 'b');
    // user3.body = 'a'; -> doğrudan kullanamazsın
  
    final user4 = PosModel4(userId:1,id: 2,title: 'a',body: 'b');
    // user4.body = 'c'; > doğrudan kullanamazsın

    final user5 = PosModel5(userId: 1, id: 2, title: 'title', body: 'body');
    user5.body;

    final user6 = PosModel6(userId: 1, id: 2, title: 'a', body: 'b');
    final user7 = PosModel7(userId: 1, id: 2, title: 'a', body: 'b');

    // Service işlemlerinde en çok kullanılan yöntem
    final user8 = PosModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user9 = user9.copyWith(title: 'ÜY');
          user9.updateBody(null);
        });
      },),
      appBar: AppBar(title: Text(user9.title ?? 'Not has any delta'),)
    );
  }
}