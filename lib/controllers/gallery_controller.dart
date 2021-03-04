import 'dart:convert';

import 'package:get/get.dart';
import 'package:social_media/models/files.dart';
import 'package:storage_path/storage_path.dart';


class GalleryController extends GetxController{
  List<FileModel> files;
  FileModel selectedModel;
  String image;
  getImagesPath() async {
    var imagePath = await StoragePath.imagesPath;
    var images = jsonDecode(imagePath) as List;
    files = images.map<FileModel>((e) => FileModel.fromJson(e)).toList();
    if (files != null && files.length > 0) {
      selectedModel = files[0];
      update();
      image = files[0].files[0];
      update();
    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getImagesPath();
  }
}