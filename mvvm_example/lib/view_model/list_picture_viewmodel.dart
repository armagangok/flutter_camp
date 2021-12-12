import 'package:mvvm_sample_app/services/services.dart';

import '../api/model/picsum_model.dart';

ListPictureViewModel listPictureViewModel = ListPictureViewModel();

class ListPictureViewModel {
  List<PictureViewModel>? pictures = [];

  Future<void> fetchPictures() async {
    final data = await Service().fetchData();
    pictures = data.map((e) => PictureViewModel(e)).toList();
  }
}

class PictureViewModel {
  PicSumModel? picSumModel;
  PictureViewModel(this.picSumModel);
}
