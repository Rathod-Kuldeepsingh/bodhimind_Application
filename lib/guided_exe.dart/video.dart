import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoListScreen extends StatefulWidget {
  const VideoListScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VideoListScreenState createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen> {
  List<Map<String, String>> videoDetails = [
    {
      'url': 'https://youtu.be/j7d5Plai03g?si=r2Nz5YVuHJcNiiw1',
      'description': '10-Minute For Daily \nMeditation',
      'subtitle': 'Finding Inner Peace'
    },
    {
      'url': 'https://youtu.be/2FGR-OspxsU?si=MXrMGWeYPe3RId3I',
      'description': '10-Minute Meditation For \nHealing',
      'subtitle': 'Releasing Emotional Wounds'
    },
    {
      'url': 'https://youtu.be/wkse4PPxkk4?si=xr4kO6xI_8AAM26H',
      'description': '10-Minute Meditation For \nAnger',
      'subtitle': 'Transforming Fury into Calm'
    },
    {
      'url': 'https://youtu.be/IN5z4gNOVYg?si=Y8IZndb0G1145Ecs',
      'description': ' 10-Minute Meditation For \n Kids',
      'subtitle': 'Calm Your Mind, Brighten Your Day'
    },
    {
      'url': 'https://youtu.be/p7Rfz3M0hIo?si=5g4wHwqrkQ7uJCEr',
      'description': '5-Minute Meditation For \nAnxiety',
      'subtitle': 'A Safe Space for Your Thoughts'
    },
    {
      'url': 'https://youtu.be/tOE17a0GfPM?si=OxpxXcAWXWeqxyEH',
      'description': '10-Minute Meditation For Mindfulness Meditation',
      'subtitle': 'Breathe, Observe, and Let Go'
    },
    {
      'url': 'https://youtu.be/tIZpNrr0uX8?si=BJjsJr2V7v8ZfYNN',
      'description': '10-Minutes Of Peaceful \nBeach Sounds For Meditation',
      'subtitle': 'Waves of Calm: A Coastal Escape'
    },
    {
      'url': 'https://youtu.be/4S3yJkGWM4E?si=CpEZii9hbLTdb9g1',
      'description': '10-Minutes Of Peaceful \nForest Sounds For Meditation',
      'subtitle': 'Meditate with the Forest'
    },
    {
      'url': 'https://youtu.be/m-AwFaSW2OA?si=Yh3uUJjmXVjatLtI',
      'description': 'Yoga Every Day For \n30-Days',
      'subtitle': 'A Journey of Self-Discovery on Mat'
    },
    {
      'url': 'https://youtu.be/lce8Rlusjq4?si=2slIOHN1oJ42F2Zs',
      'description': '7 Minutes Of Self-Care \nFor The Week',
      'subtitle': 'Nurturing Your Mind, Body, and Soul'
    },
    {
      'url': 'https://youtu.be/1jz7msnmFLU?si=I7JXGNSkb596gjq-',
      'description': 'How Running 3 Miles Every \nDay Affected Our Mental Health',
      'subtitle': 'Finding Rhythm in Your Breath'
    },
    // Add more videos and descriptions here
  ];
  final List<Color> color = [
    const Color.fromARGB(255, 219, 68, 245),
    const Color.fromARGB(255, 27, 154, 238),
    const Color.fromARGB(255, 92, 206, 251),
    const Color.fromARGB(255, 103, 239, 121),
    const Color.fromARGB(255, 232, 246, 75),
    const Color.fromARGB(255, 238, 130, 48),
    const Color.fromARGB(255, 241, 57, 57),
    const Color.fromARGB(255, 92, 206, 251),
    const Color.fromARGB(255, 103, 239, 121),
    const Color.fromARGB(255, 232, 246, 75),
    const Color.fromARGB(255, 27, 154, 238),
  ];
  final List<Image> images = [
    Image.asset(
      "asset/meditation.png",
      width: 70,
      alignment: Alignment.topLeft,
    ),
    Image.asset(
      "asset/buddhist-yoga-pose.png",
      width: 70,
      alignment: Alignment.topLeft,
    ),
    Image.asset(
      "asset/anger.png",
      width: 70,
      alignment: Alignment.topLeft,
    ),
    Image.asset(
      "asset/exercise.png",
      width: 70,
      alignment: Alignment.topLeft,
    ),
    Image.asset(
      "asset/anxiety.png",
      width: 70,
      alignment: Alignment.topLeft,
    ),
    Image.asset(
      "asset/brain.png",
      width: 70,
      alignment: Alignment.topLeft,
    ),
    Image.asset(
      "asset/beach.png",
      width: 70,
      alignment: Alignment.topLeft,
    ),
    Image.asset(
      "asset/trees.png",
      width: 70,
      alignment: Alignment.topLeft,
    ),
    Image.asset(
      "asset/hinduist-yoga-position.png",
      width: 70,
      alignment: Alignment.topLeft,
    ),
      Image.asset(
      "asset/self-care.png",
      width: 70,
      alignment: Alignment.topLeft,
    ),
    Image.asset(
      "asset/runner.png",
      width: 70,
      alignment: Alignment.topLeft,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Text(
          'Guided Execsise',
          style: GoogleFonts.openSans(
              textStyle:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/bottomnavigation'),
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
        itemCount: videoDetails.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              // title: Text(title[index]),
              // subtitle: Text(videoDetails[index]['description']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoPlayerScreen(
                      videoUrl: videoDetails[index]['url']!,
                      description: videoDetails[index]['description']!,
                    ),
                  ),
                );
              },
              child: Card(
                margin: const EdgeInsets.all(10.0),
                color: color[index],
                child: ListTile(
                  leading: images[index],
                  title: Text(
                    videoDetails[index]['description']!,
                    style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      videoDetails[index]['subtitle']!,
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
              ));
        },
      ),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  final String description;

  const VideoPlayerScreen(
      {super.key, required this.videoUrl, required this.description});

  @override
  // ignore: library_private_types_in_public_api
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late YoutubePlayerController _youtubeController;
  late VideoPlayerController _videoController;
  bool _isYoutube = false;

  @override
  void initState() {
    super.initState();
    if (YoutubePlayer.convertUrlToId(widget.videoUrl) != null) {
      _isYoutube = true;
      _youtubeController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl)!,
        flags: const YoutubePlayerFlags(autoPlay: true),
      );
    } else {
      _videoController = VideoPlayerController.asset(
          'assets/sample_video.mp4') // Add your local video path
        ..initialize().then((_) {
          setState(() {});
        });
    }
  }

  @override
  void dispose() {
    if (_isYoutube) {
      _youtubeController.dispose();
    } else {
      _videoController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   title: const Text(
      //     'Bodhimind Player',
      //     style: TextStyle(
      //         color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
      //   ),
      //   backgroundColor: Colors.black,
      // ),
      body: Column(children: [
        Expanded(
          child: _isYoutube
              ? YoutubePlayer(
                  controller: _youtubeController,
                  showVideoProgressIndicator: true,
                )
              : Column(
                  children: [
                    _videoController.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: _videoController.value.aspectRatio,
                            child: VideoPlayer(_videoController),
                          )
                        : Container(),
                    VideoProgressIndicator(
                      _videoController,
                      allowScrubbing: true,
                    ),
                    IconButton(
                      icon: Icon(_videoController.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow),
                      onPressed: () {
                        setState(() {
                          _videoController.value.isPlaying
                              ? _videoController.pause()
                              : _videoController.play();
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        widget.description,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
        ),
      ]),
    ));
  }
}
