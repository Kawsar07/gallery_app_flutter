import 'package:flutter/material.dart';
import 'package:gallery_app/imageclass.dart';



class ImagePage extends StatelessWidget {
  final ImageClass imageClass;
  const ImagePage({Key? key, required this.imageClass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      clipBehavior: Clip.none,
      panEnabled: false,
      minScale: 1,
      maxScale: 4,
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              imageClass.imageURL,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}