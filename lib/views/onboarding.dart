// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class OnBoardingScreen extends StatelessWidget {
//   final _controller = new PageController();
//   Widget _buildImage(String assetName) {
//     return Align(
//       child: Image.asset(assetName, width: 350.0),
//       alignment: Alignment.bottomCenter,
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             PageView.builder(
//               controller: _controller,
//               itemCount: 5,
//               itemBuilder: (BuildContext context, int index) {
//                 return Column(
//                   children: [
//                     _buildImage(),
//                   ],
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
