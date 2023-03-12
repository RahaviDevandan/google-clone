import 'package:flutter/material.dart';
import 'package:googleclone/shared/constants.dart';

class Tile extends StatelessWidget {
  final String id, title, time, image, logo, site;

  const Tile({
    Key? key,
    required this.image,
    required this.title,
    required this.logo,
    required this.site,
    required this.time,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Column(
        children: [
          Container(
            height: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Text(
            title,
            maxLines: 3,
            style: const TextStyle(
              height: 1.5,
              color: kblack,
              fontSize: 19,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage(logo),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "$site . $time",
                style: const TextStyle(fontSize: 13, color: kgrey),
              ),
            ],
          ),
          const SizedBox(height: 7),
          const Divider(
            color: kgrey,
          ),
        ],
      ),
    );
  }
}
