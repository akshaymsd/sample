import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/container_widgets.dart';
import '../widgets/slider_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> Imglist = [
    {"txt": "Fashion", "img": "assets/img/img1.png"},
    {"txt": "Fashion", "img": "assets/img/img1.png"},
    {"txt": "Fashion", "img": "assets/img/img1.png"},
    {"txt": "Fashion", "img": "assets/img/img1.png"},
    {"txt": "Fashion", "img": "assets/img/img1.png"},
    {"txt": "Fashion", "img": "assets/img/img1.png"},
  ];

  List<Map<String, dynamic>> slider = [
    {"img": "assets/img/img2.png"},
    {"img": "assets/img/img2.png"},
    {"img": "assets/img/img2.png"},
    {"img": "assets/img/img2.png"},
  ];

  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              label: "home"),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.bag_fill,
              color: Colors.black,
            ),
            label: "basket",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              label: "Favourites"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                color: Colors.black,
              ),
              label: "profile"),
        ],
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "ma",
              style: GoogleFonts.poppins(
                  color: Colors.indigo, fontWeight: FontWeight.w800),
            ),
            Text(
              "x",
              style: GoogleFonts.poppins(
                  color: Colors.red, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite_outline_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(CupertinoIcons.search),
                suffixIcon: Icon(Icons.document_scanner_outlined),
                hintText: "Search here.",
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Imglist.length,
              itemBuilder: (context, index) => GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: ContainerWidget(
                    img: Imglist[index]["img"],
                    txt: Imglist[index]["txt"],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: double.infinity,
            color: Colors.indigo,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MAx mania Sale..! asdasda dsnsdjsd asask hashajs hahsj",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CarouselSlider.builder(
            itemCount: slider.length,
            carouselController: _controller,
            options: CarouselOptions(
              height: 150,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
            itemBuilder: (context, index, realIndex) {
              return SliderWidget(
                img: slider[index]["img"],
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Offer Zone",
              style: GoogleFonts.poppins(
                  color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
