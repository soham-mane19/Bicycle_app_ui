import 'package:bicycleapp/BicyleModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomindex = 0;
  int _index = 0;
  List<Bicycle> bicycleList = [
    Bicycle(
        image: 'assets/cycle1.png',
        name: 'Kiross',
        type: 'Road Bike',
        price: 1599.99),
    Bicycle(
        image: 'assets/cycle2.png',
        name: 'GT Bike',
        type: 'Road Bike',
        price: 2599.99),
    Bicycle(
        image: 'assets/cycle3.png',
        name: 'Kiross',
        type: 'Road Bike',
        price: 1599.99),
    Bicycle(
        image: 'assets/cycle4.png',
        name: 'GT Bike',
        type: 'Road Bike',
        price: 2599.99),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).colorScheme.secondary,
            ],
            stops: const [0.5, 0.5],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: 'Choose Your\n',
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      TextSpan(
                        text: 'Bicycle',
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ])),
                    const Spacer(),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(55, 182, 233, 1),
                            Color.fromRGBO(72, 92, 236, 1),
                            Color.fromRGBO(75, 76, 237, 1),
                          ])),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                        weight: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 2,
                          color: const Color.fromRGBO(255, 255, 255, 0.2)),
                      gradient: const LinearGradient(colors: [
                        Color.fromRGBO(53, 63, 84, 0.6),
                        Color.fromRGBO(34, 40, 52, 0.6),
                      ])),
                  child: Row(
                    children: [
                      Image.asset("assets/homecycle2.png"),
                      Column(
                        children: [
                          Text(
                            "EXTREME",
                            style: GoogleFonts.allertaStencil(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                          const Spacer(),
                          Text(
                            "30% OFF",
                            style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    _categoryButton(0, 'assets/cycleicon1.png'),
                    _categoryButton(1, 'assets/helmeticon.png'),
                    _categoryButton(2, 'assets/handicon.png'),
                    _categoryButton(3, 'assets/bottolicon.png'),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: bicycleList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          index==1?Navigator.of(context).pushNamed('/detail'):null;
                        },
                        child: Stack(children: [
                          Container(
                            height: 255,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: 1,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 0.2)),
                                gradient: const LinearGradient(colors: [
                                  Color.fromRGBO(53, 63, 84, 0.6),
                                  Color.fromRGBO(34, 40, 52, 0.6)
                                ])),
                          ),
                          Image.asset(bicycleList[index].image),
                          Positioned(
                              top: 125,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    bicycleList[index].type,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            195, 195, 195, 1)),
                                  ),
                                  Text(
                                    bicycleList[index].name,
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1)),
                                  ),
                                  Text(
                                    "${bicycleList[index].price}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            195, 195, 195, 1)),
                                  ),
                                ],
                              ))
                        ]),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 320,
          left: 50,
          child: Transform.rotate(
            angle: 1.5708,
            child: Text(
              "EXTREME",
              style: GoogleFonts.allertaStencil(
                  fontSize: 130,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(6, 255, 255, 255)),
            ),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              bottomindex = value;
            });
          },
          currentIndex: bottomindex,
          backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: bottomindex == 0
                          ? const LinearGradient(colors: [
                              Color.fromRGBO(55, 182, 233, 1),
                              Color.fromRGBO(75, 76, 237, 1)
                            ])
                          : null),
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 30,
                    weight: 30,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                   height: 50,
             width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: bottomindex == 1
                            ? const LinearGradient(colors: [
                                Color.fromRGBO(55, 182, 233, 1),
                                Color.fromRGBO(75, 76, 237, 1)
                              ])
                            : null),
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 30,
                      weight: 30,
                    )),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                   height: 50,
             width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: bottomindex == 2
                            ? const LinearGradient(colors: [
                                Color.fromRGBO(55, 182, 233, 1),
                                Color.fromRGBO(75, 76, 237, 1)
                              ])
                            : null),
                    child: const Icon(
                      Icons.wallet_travel_outlined,
                      color: Colors.white,
                      size: 30,
                      weight: 30,
                    )),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                   height: 50,
             width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: bottomindex == 3
                            ? const LinearGradient(colors: [
                                Color.fromRGBO(55, 182, 233, 1),
                                Color.fromRGBO(75, 76, 237, 1)
                              ])
                            : null),
                    child: const Icon(
                      Icons.person_3_outlined,
                      color: Colors.white,
                      size: 30,
                      weight: 30,
                    )),
                label: ''),
          ]),
    );
  }

  Widget _categoryButton(int index, String icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _index = index;
        });
       
        },
      child: Container(
        margin: const EdgeInsets.only(right: 30),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                width: 1,
                color: index == _index
                    ? const Color.fromRGBO(255, 255, 255, 0.2)
                    : const Color.fromRGBO(0, 0, 0, 0.2)),
            gradient: LinearGradient(
                colors: index == _index
                    ? [
                        const Color.fromRGBO(55, 182, 233, 1),
                        const Color.fromRGBO(73, 84, 237, 1),
                        const Color.fromRGBO(75, 76, 237, 1),
                      ]
                    : [
                        const Color.fromRGBO(255, 255, 255, 1),
                        const Color.fromRGBO(161, 161, 161, 1),
                      ])),
        child: Image.asset(icon),
      ),
    );
  }
}
