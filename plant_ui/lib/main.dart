import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:plant_ui/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const StartedPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StartedPage extends StatefulWidget {
  const StartedPage({super.key});

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: Column(
        children: [
          Image.asset(
            'assets/startedPageImage.png',
            height: 560,
            width: 660,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                  height: 110,
                  width: 270,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enjoy your ",
                        style: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "life with ",
                            style: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Plants ",
                            style: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(offset: Offset(0, 20), blurRadius: 40, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))
            ]),
            child: GradientElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              style: GradientElevatedButton.styleFrom(
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(62, 102, 24, 1),
                  Color.fromRGBO(124, 180, 70, 1),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  Icon(
                    Icons.navigate_next_outlined,
                    size: 27,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
