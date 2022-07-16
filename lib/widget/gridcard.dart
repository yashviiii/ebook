import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String? image;
  final Function onPress;
  final String? text;
  const GridCard({
    Key? key,
    this.image,
    required this.onPress,
    this.text, required this.color1, required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPress();
      },
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color1,
                Colors.orangeAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
        ),
        child: Card(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Image.asset(image.toString()),
              ///////////////UNCOMMENT IF YOU NEED NETWORK IMAGE
              // child: CachedNetworkImage(
              //   progressIndicatorBuilder: (context, url, progress) => Center(
              //     child: CircularProgressIndicator(
              //       value: progress.progress,
              //     ),
              //   ),
              //   errorWidget: (context, url, error) => const Icon(Icons.error),
              //   imageUrl: image.toString(),
              // ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Text(
                text.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w900),
              ),
            )
          ],
        )),
      ),
    );
  }
}
