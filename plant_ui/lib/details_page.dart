import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}



class _DetailsPageState extends State<DetailsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      ),
      body: Column(
        children: [
          // const SizedBox(
          //   height: 30,
          // ),
          Container(
            padding: const EdgeInsets.only(left: 25, top: 70),
            child: Image.asset(
              "assets/snakePlant.png",
              fit: BoxFit.contain,
              height: 300,
              width: 300,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Snake Plants",
                      style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Plants make your life with minimal and happy love. Love plants and enjoy life.",
                  style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 230,
                  decoration: BoxDecoration(color: const Color.fromRGBO(118, 152, 75, 1), borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.height_outlined,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  size: 40,
                                ),
                                Text(
                                  "Height",
                                  style: GoogleFonts.poppins(color: const Color.fromRGBO(255, 255, 255, 1), fontSize: 15, fontWeight: FontWeight.w500),
                                ),
                                Text("30cm-40cm", style: GoogleFonts.poppins(color: const Color.fromRGBO(255, 255, 255, 0.6), fontSize: 12, fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.thermostat_outlined,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  size: 40,
                                ),
                                Text(
                                  "Temperature",
                                  style: GoogleFonts.poppins(color: const Color.fromRGBO(255, 255, 255, 1), fontSize: 15, fontWeight: FontWeight.w500),
                                ),
                                Text("20C - 25C", style: GoogleFonts.poppins(color: const Color.fromRGBO(255, 255, 255, 0.6), fontSize: 12, fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.water_drop_outlined,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  size: 40,
                                ),
                                Text(
                                  "Water",
                                  style: GoogleFonts.poppins(color: const Color.fromRGBO(255, 255, 255, 1), fontSize: 15, fontWeight: FontWeight.w500),
                                ),
                                Text("1L", style: GoogleFonts.poppins(color: const Color.fromRGBO(255, 255, 255, 0.6), fontSize: 12, fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Total Price",
                                  style: GoogleFonts.poppins(color: const Color.fromRGBO(255, 255, 255, 0.8), fontSize: 15, fontWeight: FontWeight.w500),
                                ),
                                Text("Rs 350", style: GoogleFonts.poppins(color: const Color.fromRGBO(255, 255, 255, 1), fontSize: 20, fontWeight: FontWeight.w600)),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Product added to cart!")));
                              },
                              child: Container(
                                height: 60,
                                width: 170,
                                decoration: BoxDecoration(color: const Color.fromRGBO(103, 133, 74, 1), borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      size: 27,
                                    ),
                                    Text(
                                      "Add to cart",
                                      style: GoogleFonts.rubik(fontSize: 17, fontWeight: FontWeight.w500, color: const Color.fromRGBO(255, 255, 255, 1)),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
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
