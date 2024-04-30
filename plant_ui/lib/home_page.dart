import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_ui/details_page.dart';

List indoorCards = [
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },
  {
    "name": "Snake plant",
    "price": "Rs350",
    "image": "assets/snakePlant.png"
  },

];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                "assets/extras3.png",
                height: 100,
                width: 250,
                alignment: Alignment.topLeft,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 70,
                      width: 220,
                      child: Text(
                        "Find your favourite plants",
                        style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        
                        Icons.shopping_bag_outlined,
                        shadows: [BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 16,
                          color: Color.fromRGBO(0, 0, 0, 0.15)
                        )],
                        color: Color.fromRGBO(62, 102, 24, 1),
                        size: 30,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Align(
                  //alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 120,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(204, 231, 185, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "30% OFF",
                                style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "1-15 May",
                                style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            "assets/offers.png",
                            height: 150,
                            width: 100,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Indoor",
                      style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                    height: 200,
                    //width:300,
                    //padding: EdgeInsets.only(right: 5),
                    child: IndoorCards()),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Outdoor",
                      style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                    height: 200,
                    //width:300,
                    //padding: EdgeInsets.only(right: 5),
                    child: IndoorCards())
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IndoorCards extends StatefulWidget {
  const IndoorCards({super.key});

  @override
  State<IndoorCards> createState() => _IndoorCardsState();
}

class _IndoorCardsState extends State<IndoorCards> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: indoorCards.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsPage()));
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 180,
                width: 150,
                
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: const [BoxShadow(offset: Offset(0, 7.52), color: Color.fromRGBO(0, 0, 0, 0.06), blurRadius: 18.8)]
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "${indoorCards[index]["image"]}",
                      height: 115,
                      width: 90,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Snake Plants",
                      style: GoogleFonts.dmSans(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "${indoorCards[index]["price"]}",
                          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: const Color.fromRGBO(62, 102, 24, 1)),
                        ),
                        const Icon(
                          Icons.shopping_bag_outlined,
                          color: Color.fromRGBO(62, 102, 24, 1),
                          size: 17,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
