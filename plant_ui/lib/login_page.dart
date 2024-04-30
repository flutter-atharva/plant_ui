import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:plant_ui/otp_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/extras1.png",
                  height: 128,
                  width: 200,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 330,
              //color: Colors.red,
              child: Column(
                children: [
                  Text(
                    "Log in",
                    style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(

                        //label: Text("new"),
                        prefixText: "+91 ",
                        prefixStyle: const TextStyle(color: Colors.black, fontSize: 16),
                        hintText: " mobile number",
                        hintStyle: const TextStyle(color: Color.fromRGBO(204, 211, 196, 1)),
                        prefixIcon: const Icon(Icons.call_outlined, color: Color.fromRGBO(204, 211, 196, 1)),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1))),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1))),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1)))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    // width: 300,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(offset: Offset(0, 20), blurRadius: 40, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))
                    ]),
                    child: GradientElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("OTP Sent")));
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtpPage()));
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
                            "Send OTP",
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
            ),
            Image.asset(
              "assets/loginPageImage.png",
              height: 500,
              width: 660,
            )
          ],
        ),
      ),
    );
  }
}
