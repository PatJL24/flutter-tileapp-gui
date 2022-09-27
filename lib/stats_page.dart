import 'package:flutter/material.dart';
import 'reusable_tab.dart';
import 'reusable_tile.dart';
import 'package:fitnessapp/fitness_icons_icons.dart';

const Color selectedTileColor = Color.fromRGBO(72, 73, 129, 1);
const Color unSelectedTileColor = Color.fromRGBO(245, 245, 255, 1);
const Color selectedTextColor = Colors.white;
const Color unSelectedTextColor = Color.fromRGBO(163, 162, 177, 1);

class stats extends StatefulWidget {
  const stats({Key? key}) : super(key: key);

  @override
  State<stats> createState() => _statsState();
}

class _statsState extends State<stats> {
  String timeString = "";

  Color tileColor1 = selectedTileColor;
  Color textColor1 = selectedTextColor;

  Color tileColor2 = unSelectedTileColor;
  Color textColor2 = unSelectedTextColor;

  Color tileColor3 = unSelectedTileColor;
  Color textColor3 = unSelectedTextColor;

  /*
    1 = first tile selected
    2 = second tile selected
    3 = third tile selected
   */
  void updateTileColor(int selectedTile) {
    if (selectedTile == 1) {
      if (tileColor1 != selectedTileColor && textColor1 != selectedTextColor) {
        tileColor1 = selectedTileColor;
        textColor1 = selectedTextColor;

        tileColor2 = unSelectedTileColor;
        textColor2 = unSelectedTextColor;

        tileColor3 = unSelectedTileColor;
        textColor3 = unSelectedTextColor;
      }
    }

    if (selectedTile == 2) {
      if (tileColor2 != selectedTileColor && textColor2 != selectedTextColor) {
        tileColor2 = selectedTileColor;
        textColor2 = selectedTextColor;

        tileColor1 = unSelectedTileColor;
        textColor1 = unSelectedTextColor;

        tileColor3 = unSelectedTileColor;
        textColor3 = unSelectedTextColor;
      }
    }

    if (selectedTile == 3) {
      if (tileColor3 != selectedTileColor && textColor3 != selectedTextColor) {
        tileColor3 = selectedTileColor;
        textColor3 = selectedTextColor;

        tileColor1 = unSelectedTileColor;
        textColor1 = unSelectedTextColor;

        tileColor2 = unSelectedTileColor;
        textColor2 = unSelectedTextColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,
                size: 20, color: Color.fromRGBO(75, 75, 137, 1)),
            onPressed: () {},
            padding: EdgeInsets.symmetric(horizontal: 40),
          ),
          title: Text(
            "STATS",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(75, 75, 137, 1)),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                //Toggle Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // TODO add custom Tabbar using containers
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: MediaQuery.of(context).size.width - 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: unSelectedTileColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: MediaQuery.of(context).size.width - 70,
                          height: MediaQuery.of(context).size.height / 25,
                        ),
                        Positioned(
                          left: 5,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                updateTileColor(1);
                              });
                            },
                            child: ReusableTab(
                              dateText: "Day",
                              tileColor: tileColor1,
                              textColor: textColor1,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 110,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                updateTileColor(2);
                              });
                            },
                            child: ReusableTab(
                              dateText: "Week",
                              tileColor: tileColor2,
                              textColor: textColor2,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 225,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                updateTileColor(3);
                              });
                            },
                            child: ReusableTab(
                              dateText: "Month",
                              tileColor: tileColor3,
                              textColor: textColor3,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                //First Row
                Row(
                  children: [
                    ReusableTile(
                        colour: Color.fromRGBO(255, 105, 104, 1),
                        topText: "Hart Rate",
                        midTextLarge: "124 ",
                        midTextSmall: "bpm",
                        secLastText: "80-120",
                        lastText: "Healthy",
                        childWidget: Icon(FitnessIcons.heartbeat,
                            size: 30, color: Colors.white)),
                    SizedBox(
                      width: 20,
                    ),
                    ReusableTile(
                        colour: Color.fromRGBO(122, 84, 255, 1),
                        topText: "Sleep",
                        midTextLarge: "8 h ",
                        midTextSmall: "42 m",
                        secLastText: "Deep Sleep",
                        lastText: "5 h 13 m",
                        childWidget: Icon(
                          Icons.bed,
                          size: 30,
                          color: Colors.white,
                        ))
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                //Second Row
                Row(
                  children: [
                    ReusableTile(
                        colour: Color.fromRGBO(255, 143, 97, 1),
                        topText: "Energy Burn",
                        midTextLarge: "583 ",
                        midTextSmall: "kcal",
                        secLastText: "Daily Goal",
                        lastText: "900 kcal",
                        childWidget: Icon(
                          FitnessIcons.fire,
                          size: 30,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ReusableTile(
                        colour: Color.fromRGBO(42, 95, 255, 1),
                        topText: "Steps",
                        midTextLarge: "16,741",
                        midTextSmall: "",
                        secLastText: "Daily Goal",
                        lastText: "20,000 steps",
                        childWidget: Icon(
                          Icons.directions_walk,
                          size: 30,
                          color: Colors.white,
                        ))
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                //Third Row
                Row(
                  children: [
                    ReusableTile(
                        colour: Color.fromRGBO(90, 101, 255, 1),
                        topText: "Running",
                        midTextLarge: "5,3 ",
                        midTextSmall: "km",
                        secLastText: "Daily Goal",
                        lastText: "10 km",
                        childWidget: Icon(
                          Icons.directions_run,
                          size: 30,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ReusableTile(
                        colour: Color.fromRGBO(150, 218, 69, 1),
                        topText: "Cycling",
                        midTextLarge: "12,5 ",
                        midTextSmall: "km",
                        secLastText: "Daily Goa;",
                        lastText: "20 km",
                        childWidget: Icon(
                          Icons.directions_bike,
                          size: 30,
                          color: Colors.white,
                        ))
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                //Fourth Row
                Row(
                  children: [
                    ReusableTile(
                        colour: Colors.purple,
                        topText: "Learning",
                        midTextLarge: "1 h ",
                        midTextSmall: "39 m",
                        secLastText: "Comp Sci",
                        lastText: "Flutter",
                        childWidget: Icon(
                          Icons.school,
                          size: 30,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ReusableTile(
                        colour: Colors.lightBlueAccent,
                        topText: "Flying",
                        midTextLarge: "200 ",
                        midTextSmall: "km",
                        secLastText: "New York",
                        lastText: "1 d 2 h 56 m",
                        childWidget: Icon(
                          Icons.airplane_ticket,
                          size: 30,
                          color: Colors.white,
                        ))
                  ],
                ),

                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),

        //Bottom Nav Bar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromRGBO(74, 75, 137, 1),
          unselectedItemColor: Color.fromRGBO(165, 166, 195, 1),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FitnessIcons.helmet),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(FitnessIcons.dumbbell),
              label: 'Stats',
            ),
            BottomNavigationBarItem(
              icon: Icon(FitnessIcons.medal),
              label: 'Rewards',
            ),
            BottomNavigationBarItem(
              icon: Icon(FitnessIcons.archery_target),
              label: 'Goals',
            )
          ],
        ),
      ),
    );
  }
}
