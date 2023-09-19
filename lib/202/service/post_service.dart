import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

abstract class IPostService{
  Future<bool> addItemToService(PostModel model);
  Future<List<PostModel>?> fetchPostItems();
}

class PostService implements IPostService{
  final Dio _dio;
  PostService() : _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<bool> addItemToService(PostModel model) async {
    final response = await _dio.post('posts',data:model);
    
    return response.statusCode == HttpStatus.created;
   
  }

  @override
  Future<List<PostModel>?> fetchPostItems() async {

    try{
      final response = await _dio.get(_PostServicePaths.posts.name);

      if (response.statusCode == HttpStatus.ok){
        final _datas = response.data;

        if (_datas is List) {
         return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }

    }catch(e){
      
    }

    return null;
    
  }
}

enum _PostServicePaths{
  posts,comments
}