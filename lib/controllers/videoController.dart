import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController {
  VideoPlayerController controller;
  Future<void> initializeVideoPlayerFuture;
 @override
  void onInit() {
    controller = VideoPlayerController.asset("assets/coffee.mp4");

      // Once the video has been loaded we play the video and set looping to true.
    initializeVideoPlayerFuture = controller.initialize();
    controller.setLooping(true);
    super.onInit();

}

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
