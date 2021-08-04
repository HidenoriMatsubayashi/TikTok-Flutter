import 'package:tiktok_flutter/data/demo_data.dart';
import 'package:tiktok_flutter/data/video.dart';

class VideosAPI {
  List<Video> listVideos = <Video>[];

  VideosAPI() {
    load();
  }

  void load() async {
    listVideos = await getVideoList();
  }

  Future<List<Video>> getVideoList() async {
    var videoList = <Video>[];
    var videos;

    videos = data;
    videos.forEach((element) {
      Video video = Video.fromJson(element);
      videoList.add(video);
    });

    return videoList;
  }
}
