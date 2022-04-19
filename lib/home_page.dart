

import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizeHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        width: double.infinity,
        height: sizeHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            const CircleAvatar(
              radius: 92,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '@khoir_roni',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: const [
                BlockName(
                  label: 'Instagram',
                  url: 'https://www.instagram.com/khoir_roni/',
                ),
                BlockName(
                  label: 'Youtube',
                  url: 'https://youtu.be/ClyWEQobBco',
                ),
                BlockName(
                  label: 'Linkedin',
                  url: 'https://www.linkedin.com/in/muhammad-ali-khoironi/',
                ),
                BlockName(
                  label: 'Github',
                  url: 'https://github.com/khoir-roni/',
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Dibuat Mengunakan',
                    style: GoogleFonts.lobsterTwo(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BlockName extends StatelessWidget {
  const BlockName({
    Key? key,
    required this.label,
    required this.url,
  }) : super(key: key);
  final String url;
  final String label;

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: SizedBox(
        width: sizeWidth < 600 ? sizeWidth * 0.95 : 600,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          onPressed: () {
            html.window.open(url, "_blank");
            // 'https://www.instagram.com/khoir_roni/'
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              label,
              style: GoogleFonts.roboto(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
