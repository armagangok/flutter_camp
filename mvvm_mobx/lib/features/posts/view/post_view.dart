import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mvvm_mobx/features/posts/viewmodel/post_viewmodel.dart';

class PostView extends StatelessWidget {
  final PostViewModel _postViewModel = PostViewModel();

  PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Armağan"),
        // leading: Visibility(
        //   child: Observer(
        //     builder: (_) {
        //       return const CircularProgressIndicator(
        //         valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        //       );
        //     },
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => await _postViewModel.getAllPosts(),
      ),
      body: Observer(
        builder: (_) => ListView.builder(
          itemCount: _postViewModel.posts.length,
          itemBuilder: (context, index) => ListTile(
            title: Text("${_postViewModel.posts[index].title}"),
            subtitle: Text("${_postViewModel.posts[index].body}"),
          ),
        ),
      ),
    );
  }
}
