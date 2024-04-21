import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

SessionTitles(
  final String header,
  final String subHeader,
  final ImageProvider image,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image(image: image),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  header,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  subHeader,
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.chevron_right_circle_fill,
              color: Color(0x7A9B27B0)
            ))
      ],
    ),
  );
}
