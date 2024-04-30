import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:pinput/pinput.dart';
import 'package:plant_ui/home_page.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/extras2.png",
                height: 150,
                width: 150,
              )
            ],
          ),
          SizedBox(
            width: 330,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Verification",
                  style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter the OTP code from the phone we just sent you",
                  style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Pinput(
                      length: 4,
                      defaultPinTheme: PinTheme(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color.fromRGBO(204, 211, 196, 1),
                            ),
                            boxShadow: const [
                              BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.06), offset: Offset(0, 8), blurRadius: 20, spreadRadius: 0)
                            ]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Didn't recieve OTP code! ",
                      style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text("Resend", style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  // width: 300,
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(offset: Offset(0, 20), blurRadius: 40, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))
                  ]),
                  child: GradientElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Login Successful")));
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                    style: GradientElevatedButton.styleFrom(
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(62, 102, 24, 1),
                          Color.fromRGBO(124, 180, 70, 1),
                        ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 17,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
