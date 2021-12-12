import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mvvm_sample_app/view_model/list_picture_viewmodel.dart';
import 'package:transparent_image/transparent_image.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: listPictureViewModel.fetchPictures(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Scaffold(
              body: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        "${listPictureViewModel.pictures![index].picSumModel!.downloadUrl}"),
                  );
                },
                itemCount: listPictureViewModel.pictures!.length.toInt(),
              ),
            );
            // StaggeredGridView.countBuilder(
            //   crossAxisCount: 1,
            //   itemBuilder: (BuildContext context, int index) => Container(
            //     color: Colors.amber,
            //     child: FadeInImage.memoryNetwork(
            //       placeholder: kTransparentImage,
            //       image:
            //           '${listPictureViewModel.pictures![index].picSumModel!.downloadUrl}',
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            //   staggeredTileBuilder: (index) => StaggeredTile.count(
            //     2,
            //     index.isEven ? 2 : 1,
            //   ),
            //   // mainAxisSpacing: 4.0,
            //   // crossAxisSpacing: 4.0,
            // );
          }
        },
      ),
    );
  }
}
