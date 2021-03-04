// // import 'dart:convert';
// // import 'dart:io';
// //
// // import 'package:flutter/material.dart';
// // import 'package:instagrampicker/file.dart';
// // import 'package:storage_path/storage_path.dart';
// //
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Instagrm picker demo',
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(
// //         visualDensity: VisualDensity.adaptivePlatformDensity,
// //       ),
// //       home: MyHomePage(title: 'Flutter Demo Home Page'),
// //     );
// //   }
// // }
// //
// // class MyHomePage extends StatefulWidget {
// //   MyHomePage({Key key, this.title}) : super(key: key);
// //
// //   final String title;
// //
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //   List<FileModel> files;
// //   FileModel selectedModel;
// //   String image;
// //   @override
// //   void initState() {
// //     super.initState();
// //     getImagesPath();
// //   }
// //
// //   getImagesPath() async {
// //     var imagePath = await StoragePath.imagesPath;
// //     var images = jsonDecode(imagePath) as List;
// //     files = images.map<FileModel>((e) => FileModel.fromJson(e)).toList();
// //     if (files != null && files.length > 0)
// //       setState(() {
// //         selectedModel = files[0];
// //         image = files[0].files[0];
// //       });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: Column(
// //           children: <Widget>[
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: <Widget>[
// //                 Row(
// //                   children: <Widget>[
// //                     Icon(Icons.clear),
// //                     SizedBox(width: 10),
// //                     DropdownButtonHideUnderline(
// //                         child: DropdownButton<FileModel>(
// //                           items: getItems(),
// //                           onChanged: (FileModel d) {
// //                             assert(d.files.length > 0);
// //                             image = d.files[0];
// //                             setState(() {
// //                               selectedModel = d;
// //                             });
// //                           },
// //                           value: selectedModel,
// //                         ))
// //                   ],
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: Text(
// //                     'Next',
// //                     style: TextStyle(color: Colors.blue),
// //                   ),
// //                 )
// //               ],
// //             ),
// //             Divider(),
// //             Container(
// //                 height: MediaQuery.of(context).size.height * 0.45,
// //                 child: image != null
// //                     ? Image.file(File(image),
// //                     height: MediaQuery.of(context).size.height * 0.45,
// //                     width: MediaQuery.of(context).size.width)
// //                     : Container()),
// //             Divider(),
// //             selectedModel == null && selectedModel.files.length < 1
// //                 ? Container()
// //                 : Container(
// //               height: MediaQuery.of(context).size.height * 0.38,
// //               child: GridView.builder(
// //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                       crossAxisCount: 4,
// //                       crossAxisSpacing: 4,
// //                       mainAxisSpacing: 4),
// //                   itemBuilder: (_, i) {
// //                     var file = selectedModel.files[i];
// //                     return GestureDetector(
// //                       child: Image.file(
// //                         File(file),
// //                         fit: BoxFit.cover,
// //                       ),
// //                       onTap: () {
// //                         setState(() {
// //                           image = file;
// //                         });
// //                       },
// //                     );
// //                   },
// //                   itemCount: selectedModel.files.length),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //
// //   List<DropdownMenuItem> getItems() {
// //     return files
// //         .map((e) => DropdownMenuItem(
// //       child: Text(
// //         e.folder,
// //         style: TextStyle(color: Colors.black),
// //       ),
// //       value: e,
// //     ))
// //         .toList() ??
// //         [];
// //   }
// // }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:quill_delta/quill_delta.dart';
// import 'package:zefyr/zefyr.dart';
//
// class Description extends StatefulWidget {
//   @override
//   _DescriptionState createState() => _DescriptionState();
// }
//
// class _DescriptionState extends State<Description> {
//   ZefyrController _controller;
//   FocusNode _focusNode;
//   bool isSelected = false;
//
//   @override
//   void initState() {
//     // TODO: implement
//     final document = _loadDocument();
//     _controller = ZefyrController(document);
//     _focusNode = FocusNode();
//     super.initState();
//   }
//
//   NotusDocument _loadDocument() {
//     final Delta delta = Delta()..insert('Enter the description\n');
//     return NotusDocument.fromDelta(delta);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     double l = MediaQuery.of(context).size.longestSide;
//     Orientation orien = MediaQuery.of(context).orientation;
//     bool screen = orien == Orientation.portrait ? true : false;
//     final editor = ZefyrField(
//       height: 200.0,
//       // set the editor's height
//       decoration: InputDecoration(
//         labelText: 'Description',
//       ),
//       controller: _controller,
//       focusNode: _focusNode,
//       autofocus: false,
//       physics: ClampingScrollPhysics(),
//     );
//     final form = ListView(
//       children: <Widget>[
//         SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.only(top: 15, right: 8, left: 8),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Directions(),
//                 // Padding(
//                 //   padding: const EdgeInsets.only(top: 10),
//                 //   child: ContainerLine(),
//                 // ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10, bottom: 10),
//                   child: Center(
//                       child: Text(
//                         "Description",
//                         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//                       )),
//                 ),
//                 Container(
//                   height: 1,
//                   decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.grey[300],
//                       )),
//                 ),
//                 editor,
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10, bottom: 10),
//                   child: Text(
//                     "Frequently asked questions",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//                   ),
//                 ),
//                 Container(
//                   height: 1,
//                   decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.grey[300],
//                       )),
//                 ),
//                 isSelected == false ?
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 10, right: 10,top: 10),
//                   child:
//                   InkWell(
//                     child: Align(
//                       alignment: Alignment.bottomRight,
//                       child: Text(
//                         "+ Add FAQ",
//                         // style: TextStyle(fontSize: 15, color: kMainColor),
//                       ),
//                     ),
//                     onTap: (){
//                       setState(() {
//                         isSelected = true;
//                       });
//                     },
//                   ),
//                 ) : Container(),
//                 Text(
//                   "Add questions and answers for your buyers",
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 isSelected == true ? Column(
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.only(top: 8),
//                       padding: const EdgeInsets.only(bottom: 8),
//                       height: width/10,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(6),
//                           border: Border.all(
//                               color: Colors.grey[400]
//                           )
//                       ),
//                       child: TextFormField(
//                         maxLength: 20,
//                         minLines: 1,
//                         decoration: InputDecoration(
//                             hintText: "Add a question",
//                             border: InputBorder.none,
//                             contentPadding: const EdgeInsets.symmetric(horizontal: 10,)
//                         ),
//
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.only(top: 8),
//                       padding: const EdgeInsets.only(bottom: 8),
//                       height: width/6,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(6),
//                           border: Border.all(
//                               color: Colors.grey[400]
//                           )
//                       ),
//                       child: TextFormField(
//                         maxLength: 30,
//                         minLines: 1,
//                         maxLines: 15,
//                         decoration: InputDecoration(
//                             hintText: "Add an answer",
//                             border: InputBorder.none,
//                             contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3)
//                         ),
//
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 10,top: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           RaisedButton(
//                             child: Text("Cancel",style: TextStyle(color: Colors.white),),
//                             color: Colors.grey,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                             onPressed: (){},
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 30),
//                             child: RaisedButton(
//                               child: Text("Add",style: TextStyle(color: Colors.white),),
//                               // color: kMainColor,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                               onPressed: (){
//                                 setState(() {
//                                   isSelected = false;
//                                 });
// //                              Navigator.push(context, MaterialPageRoute(builder: (context) => PackageScreen()));
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ) : Container(),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10,bottom: 10),
//                   child: Container(
//                     height: 1,
//                     decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.grey[300],
//                         )),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 10,top: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       RaisedButton(
//                         child: Text("Cancel",style: TextStyle(color: Colors.white),),
//                         color: Colors.grey,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         onPressed: (){},
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 30),
//                         child: RaisedButton(
//                           child: Text("Save",style: TextStyle(color: Colors.white),),
//                           // color: kMainColor,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                           onPressed: (){
//                             // Navigator.push(context, MaterialPageRoute(builder: (context) => Requirements()));
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           leading: IconButton(
//             icon: Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//             ),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: Text(
//             "Description & FAQ",
//             style: TextStyle(color: Colors.black),
//           ),
//           actions: [
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 5),
//                 child: InkWell(
//                   // child: Text('Save',style: TextStyle(color: kMainColor,fontSize: 12),),
//                   onTap: (){},
//                 ),
//               ),
//             ),
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 5),
//                 child: InkWell(
//                   // child: Text('| Save & Preview',style: TextStyle(color: kMainColor,fontSize: 12),),
//                   onTap: (){
//                     // Navigator.push(context, MaterialPageRoute(builder: (context) => GigDetail()));
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: Container(
//             child:
//             ZefyrScaffold(child: form)
//         ),
//       ),
//     );
//   }
// }
// //Container(
// //child: ZefyrScaffold(
// //child: ZefyrEditor(
// //controller: _controller,
// //focusNode: _focusNode,
// //),
// //),
// //),