import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  List<PostModel>? _items;
  late String name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  @override
  void initState(){
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  Future<void> _addItemToService(PostModel model) async {
    final response = await _dio.post('posts',data:model);
    changeLoading();
    if (response.statusCode == HttpStatus.created) {
      name = ' basarili';
    }
    changeLoading();
  }

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_isLoading ? const CircularProgressIndicator(color: Colors.white) : const SizedBox.shrink()],
      ),
      body: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: 'Title'),
            textInputAction: TextInputAction.next, ),
          TextField(
            controller: _bodyController,
            decoration: const InputDecoration(labelText: 'Body'),
            textInputAction: TextInputAction.next, ),
          TextField(
            controller: _userIdController,
            textInputAction: TextInputAction.next, 
            keyboardType: TextInputType.number,
            autofillHints: const [AutofillHints.creditCardNumber],
            decoration: const InputDecoration(labelText: 'UserId')),
          TextButton(
            onPressed: _isLoading ? null : () { // burada kayıt işlemi uzun sürebilir o yüzden bunu yapmak faydalı
              if(_titleController.text.isNotEmpty 
              && _bodyController.text.isNotEmpty
              && _userIdController.text.isNotEmpty){
                final model = PostModel(
                  body: _bodyController.text, 
                  title: _titleController.text, 
                  userId: int.tryParse(_userIdController.text));
                
                _addItemToService(model);
              }
            }, 
            child: const Text('Send')
          )  
        ]
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    super.key,
    required PostModel? model,
  }) : _model = model;

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(_model?.title ?? 'Empty'),
          subtitle: Text(_model?.body ?? ''),
        ),
      ),
    );
  }
}