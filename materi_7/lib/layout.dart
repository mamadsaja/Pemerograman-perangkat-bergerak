import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class M_1201222041 extends StatefulWidget {
  const M_1201222041({super.key});

  @override
  State<M_1201222041> createState() => _M_1201222041State();
}

class _M_1201222041State extends State<M_1201222041> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Media Camera"),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(""),
              Image.network(""),
              ElevatedButton(onPressed: () {}, child: const Text("take video form Galery")),
              ElevatedButton(onPressed: () {}, child: const Text("take video form Galery")),
              ElevatedButton(onPressed: () {}, child: const Text("take video form Galery")),
              ElevatedButton(onPressed: () {}, child: const Text("take video form Galery")),
              if (imageFile != null) Image.file(imageFile),
              if (videoFile != null) 
              AspectRatio(aspectRatio: _controller!.value.aspectRatio, child: VideoPlayer(_controller!))
            ],
            
          ),
        ),
      ),
    );
  }
  File? imageFile;

  Future pickImage() async{
    imageFile = (await ImagePicker().pickImage(source : ImageSource.gallery)) as File?;

    if (imageFile == null) return;

    final imageTemp = File(imageFile.path);

    setState(() {
      this.imageFile = imageTemp;
    });
  }

  Future pickPicture() async{
    final imageFile = 
      await ImagePicker().pickImage(source: ImageSource.camera);

      if(imageFile == null) return;

      final imageTemp = File(imageFile.path);

      setState(() {
        this.imageFile = imageTemp;
      });
  
  }

  File? videoFile;
  VideoPlayerController? controller;

  Future pickvideo() async{
    final videoFile = await ImagePicker().pickVideo(source: ImageSource.gallery);

    if(videoFile == null) return;
    final videoTemp = File(videoFile.path);

    _controller = videoPlayerController.file(videoTemp)
    ..initialize().then(_){
      setState(() {
        this.videoFile = videoTemp;
      });
      _controller!.play();
      _controller!.setlooping(true);

    }
  }
  
}