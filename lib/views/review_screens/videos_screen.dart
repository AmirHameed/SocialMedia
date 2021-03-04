import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:social_media/controllers/gallery_controller.dart';
import 'package:social_media/models/files.dart';
import 'package:social_media/utility/widget/bottomNavBar.dart';
import 'package:social_media/views/truth.dart';
import 'package:storage_path/storage_path.dart';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  GalleryController galleryController = Get.put(GalleryController());
  List<VideoModel> files;
  VideoModel selectedModel;
  String video;
  @override
  void initState() {
    super.initState();
    getVideosPath();
  }

  // getImagesPath() async {
  //   var imagePath = await StoragePath.imagesPath;
  //   var images = jsonDecode(imagePath) as List;
  //   files = images.map<FileModel>((e) => FileModel.fromJson(e)).toList();
  //   if (files != null && files.length > 0)
  //     setState(() {
  //       selectedModel = files[0];
  //       image = files[0].files[0];
  //     });
  // }
  getVideosPath() async {
    var videosPath = await StoragePath.videoPath;
    var videos = jsonDecode(videosPath) as List;
    files = videos.map<VideoModel>((e) => VideoModel.fromJson(e)).toList();
    if (files != null && files.length > 0)
      setState(() {
        selectedModel = files[0];
        video = files[0].files[0];
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 45),
                      child: InkWell(
                        child: Text('X',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        onTap: (){
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,right: 45),
                                child: InkWell(
                                  child: Text('X',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                  onTap: (){
                                  },
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Neumorphic(
                                      style: NeumorphicStyle(
                                          shape: NeumorphicShape.concave,
                                          boxShape:
                                          NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                                          depth: 12,
                                          lightSource: LightSource.topLeft,
                                          color: Color(0xFFFFFFFF)),
                                      child: NeumorphicButton(
                                        style: NeumorphicStyle(
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Text(
                                          'Images',
                                          style: TextStyle(
                                              color: Colors.black, fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: (){
                                          Get.offAndToNamed('/gallery_screen');
                                        },
                                      ),
                                    ),
                                  ),
                                  NeumorphicButton(
                                      style: NeumorphicStyle(
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      child: Text(
                                        'Videos',
                                        style: TextStyle(
                                            color: Colors.black, fontWeight: FontWeight.bold),
                                      ),
                                      onPressed: () {
                                        Get.toNamed('/videos_screen');
                                      }
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape:
                              NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
                              depth: 12,
                              lightSource: LightSource.topLeft,
                              color: Color(0xFFFFFFFF)),
                          child: NeumorphicButton(
                              style: NeumorphicStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              child: Text(
                                'Videos',
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Get.toNamed('/videos_screen');
                              }
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.clear),
                      SizedBox(width: 10),
                      DropdownButtonHideUnderline(
                          child: DropdownButton<VideoModel>(
                            items: getItems(),
                            onChanged: (VideoModel d) {
                              assert(d.files.length > 0);
                              video = d.files[0];
                              setState(() {
                                selectedModel = d;
                              });
                            },
                            value: selectedModel,
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
              Divider(),
              Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: video != null
                      ? Image.file(File(video),
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.width)
                      : Container()),
              Divider(),
              selectedModel == null && selectedModel.files.length < 1
                  ? Container()
                  : Container(
                height: MediaQuery.of(context).size.height * 0.38,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 4),
                    itemBuilder: (_, i) {
                      var file = selectedModel.files[i];
                      return GestureDetector(
                        child: Image.file(
                          File(file),
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          setState(() {
                            video = file;
                          });
                        },
                      );
                    },
                    itemCount: selectedModel.files.length),
              ),
              BottomNavWidget(),
            ],
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem> getItems() {
    return files
        .map((e) => DropdownMenuItem(
         child: Text(
        e.folder,
        style: TextStyle(color: Colors.black),
      ),
      value: e,
    ))
        .toList() ??
        [];
  }}
