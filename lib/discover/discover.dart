import 'package:flutter/material.dart';
import 'package:googleclone/discover/tile.dart';
import 'package:googleclone/shared/constants.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 70),
          const Padding(
            padding: EdgeInsets.only(left: 345),
            child: Icon(
              Icons.account_circle_rounded,
              size: 40,
              color: Colors.blueGrey,
            ),
          ),
          const SizedBox(height: 15),
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/logo.jpg",
                height: 45,
              )),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 50,
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: "Ask anything",
                suffixIcon: Container(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/mic.png",
                        height: 22,
                      ),
                      SizedBox(width: 30),
                      Image.asset(
                        "assets/cam.png",
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(60.0),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 221, 225, 226),
                  blurRadius: 10.0,
                  offset: Offset(0, 0),
                ),
              ],
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            shrinkWrap: true,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Tile(
                  image: products[index]["image"],
                  title: products[index]["title"],
                  logo: products[index]["logo"],
                  site: products[index]["site"],
                  time: products[index]["time"],
                  id: products[index]["id"]);
            },
          ),
        ],
      ),
    );
  }
}
