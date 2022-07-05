import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String? image;
  final Function onPress;
  final String? text;
  const GridCard({
    Key? key,
    this.image,
    required this.onPress,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPress();
      },
      child: Card(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
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
    );
  }
}
