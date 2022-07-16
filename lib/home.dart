import 'package:ebook/webview.dart';
import 'package:ebook/widget/gridcard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Books Club",style: TextStyle(fontSize: 25,fontFamily: 'Montserrat', fontWeight: FontWeight.w900),),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body:
      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       SizedBox(height: 20,),
      //       Text(
      //           "PDF's",
      //         style: TextStyle(
      //           backgroundColor: Colors.grey,
      //           fontSize: 22,
      //           fontWeight: FontWeight.bold
      //         ),
      //       ),
            GridView.count(
                padding: EdgeInsets.fromLTRB(25, 15, 25, 10),
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 25,
                scrollDirection: Axis.vertical,
                childAspectRatio: 2 / 2.6,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  GridCard(
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebViewExample(
                                    title: "Z Library", url: 'https://1lib.in/')));
                      },
                      text: 'Z Library',
                      image: 'assets/books.jpg',
                      color1: Colors.blue,
                      color2: Colors.white,
                  ),
                  GridCard(
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WebViewExample(
                                    title: 'LibriVox Audio Books',
                                    url: 'https://librivox.org')));
                        // _launchInWebViewOrVC(Uri.parse('https://librivox.org'));
                      },
                      text: 'LibriVox Audio Books',
                      image: 'assets/audio-book (1).png',
                      color1: Colors.green,
                      color2: Colors.white,
                  ),
                  GridCard(
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WebViewExample(
                                    title: 'Open Library Internet Archive', url: 'https://openlibrary.org')));
                      },
                      text: 'Open Library Internet Archive',
                      image: 'assets/books (1).png', color1: Colors.purple, color2: Colors.white,),
                  GridCard(
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebViewExample(
                                    title: "Tantor Media", url: 'https://tantor.com')));
                      },
                      text: 'Tantor Media Audio Books',
                      image: 'assets/mermaid.jpg',color1: Colors.purple, color2: Colors.white),
                  GridCard(
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WebViewExample(
                                    title: "Epic Reads",
                                    url: 'https://www.epicreads.com')));
                      },
                      text: 'Epic Reads',
                      image: 'assets/knowledge.png', color1: Colors.redAccent, color2: Colors.white),

                  GridCard(
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WebViewExample(
                                    title: 'PDF Drives',
                                    url: 'https://www.pdfdrive.com')));
                      },
                      text: 'PDF Drives',
                      image: 'assets/book-shelf.png', color1: Colors.indigo, color2: Colors.white),
                  GridCard(
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WebViewExample(
                                    title: 'Library Genesis',
                                    url: 'https://libgen.is')));
                      },
                      text: 'Library Genesis',
                      image: 'assets/accounting-book.png',color1: Colors.purple, color2: Colors.white),
                ]),
      //     ],
      //   ),
      // ),
    );
  }
}
