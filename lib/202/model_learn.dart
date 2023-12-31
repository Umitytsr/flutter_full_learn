// ignore_for_file: public_member_api_docs, sort_constructors_first
class PosModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PosModel2 {
  int userId;
  int id;
  String title;
  String body;
  PosModel2(
    this.userId,
    this.id,
    this.title,
    this.body
  );
}
class PosModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;
  PosModel3(
    this.userId,
    this.id,
    this.title,
    this.body,
  );
}

class PosModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;
  PosModel4({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
}

class PosModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  int get userId => _userId;
  int get id => _id;
  String get title => _title;
  String get body => _body;

  PosModel5({
    required int userId, 
    required int id, 
    required String title, 
    required String body
    }) : _userId = userId, _id = id, _title = title, _body = body;

}

class PosModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PosModel6({
    required int userId, 
    required int id, 
    required String title, 
    required String body
    }) : _userId = userId, _id = id, _title = title, _body = body;
}

class PosModel7 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PosModel7({
    int userId = 0, 
    int id = 0, 
    String title = '', 
    String body = ''
    }) : _userId = userId, _id = id, _title = title, _body = body;
}

class PosModel8 {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;
  PosModel8({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  void updateBody(String? data) {
    if(data != null && data.isNotEmpty){
      data.length;
    }
  }


  PosModel8 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PosModel8(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
