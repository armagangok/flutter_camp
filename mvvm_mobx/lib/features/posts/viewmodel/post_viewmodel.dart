import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:mvvm_mobx/features/posts/models/post.dart';
part 'post_viewmodel.g.dart';

class PostViewModel = _PostViewModelBase with _$PostViewModel;

abstract class _PostViewModelBase with Store {
  // if something changes, mark it with @observable

  @observable
  int count = 0;

  @computed
  bool get isEven => count % 2 == 1;

  // @observable
  // bool isServiceRequestLoading = false;

  // @action
  // void changeRequest() => isServiceRequestLoading = !isServiceRequestLoading;

  @action
  void increment() => count++;

  final url = "https://jsonplaceholder.typicode.com/posts";

  @observable
  List<PostModel> posts = [];

  @action
  Future<void> getAllPosts() async {
    final response = await Dio().get(url);

    if (response.statusCode == HttpStatus.ok) {
      final responseData = response.data as List;
      posts = responseData.map((e) => PostModel.fromMap(e)).toList();
      // print(response.data);
    } else {}
  }
}
