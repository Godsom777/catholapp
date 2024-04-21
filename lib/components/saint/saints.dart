import 'package:flutter/material.dart';

class SaintOfTheDay extends StatelessWidget {
  const SaintOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        color: Color.fromARGB(255, 247, 247, 247),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            const Flexible(
                flex: 3,
                fit: FlexFit.loose,
                child: Image(image: AssetImage('assets/images/black.jpg'))),
            Spacer(
              flex: 1,
            ),
            Flexible(
                fit: FlexFit.loose,
                flex: 3,
                child: Column(
                  children: [
                    const Text(
                      'Saint Ezekiel',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: const TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(185, 37, 37, 37),
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                                text:
                                    'He was the greatest of his time, made his impact and that touched alot of people')
                          ]),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
