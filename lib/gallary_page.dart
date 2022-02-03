import 'package:flutter/material.dart';
import 'package:gallery_app/image.dart';
import 'package:gallery_app/imageclass.dart';

class GallaryPage extends StatelessWidget {
  GallaryPage({Key? key}) : super(key: key);
  List<String> list = [
    "https://picsum.photos/id/237/1000/2000",
    "https://picsum.photos/id/238/1000/2000",
    "https://picsum.photos/id/239/1000/2000",
    "https://picsum.photos/id/240/1000/2000",
    "https://picsum.photos/id/242/1000/2000",
    "https://picsum.photos/id/243/1000/2000",
    "https://picsum.photos/id/244/1000/2000",
    "https://picsum.photos/id/247/1000/2000",
    "https://picsum.photos/id/248/1000/2000",
    "https://picsum.photos/id/249/1000/2000",
    "https://picsum.photos/id/257/1000/2000",
    "https://picsum.photos/id/258/1000/2000",
    "https://picsum.photos/id/259/1000/2000",
    "https://picsum.photos/id/260/1000/2000",
    "https://picsum.photos/id/264/1000/2000",
    "https://picsum.photos/id/265/1000/2000",
    "https://picsum.photos/id/266/1000/2000",
    "https://picsum.photos/id/267/1000/2000",
    "https://picsum.photos/id/268/1000/2000",
    "https://picsum.photos/id/249/1000/2000",
  ];
  List<ImageClass> get image =>
      List.generate(list.length, (index) => ImageClass("${list[index]}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Gallery",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: image.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ImagePage(
                                    imageClass: image[index],
                                  )),
                            );
                          },
                          child: Ink(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: NetworkImage(list[index].toString()),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ))
            ],
          )),
    );
  }
}