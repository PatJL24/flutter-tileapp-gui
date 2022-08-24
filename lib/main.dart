import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 250, 1),
      appBar: AppBar(
        title: const Text(
          'tile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings, size: 30))
        ],
        backgroundColor: Color.fromRGBO(51, 152, 218, 1),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Active Recently'),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.menu,
                  size: 20,
                )
              ],
            ),

            SizedBox(
              height: 20,
            ),

            //Joe and Rug
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.more_horiz,
                              size: 30,
                            ),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              Icons.wallet,
                              size: 80,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text("Joe's Wallet"),
                        ),
                        Container(
                          child: Text(
                            "2m ago",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              size: 20,
                            ),
                            Text(
                              "FIND THIS TILE",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.more_horiz,
                              size: 30,
                            ),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              Icons.shopping_bag,
                              size: 80,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text("Rug Backpack"),
                        ),
                        Container(
                          child: Text(
                            "2h ago",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              size: 20,
                            ),
                            Text(
                              "FIND THIS TILE",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),

            SizedBox(
              height: 10,
            ),

            //laptop and cat
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                //laptop
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.more_horiz,
                              size: 30,
                            ),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              Icons.laptop,
                              size: 80,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text("Laptop Backpack"),
                        ),
                        Container(
                          child: Text(
                            "4d ago",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              size: 20,
                            ),
                            Text(
                              "FIND THIS TILE",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                //Cat
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.more_horiz,
                              size: 30,
                            ),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              Icons.earbuds,
                              size: 80,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text("Sophie - Cat"),
                        ),
                        Container(
                          child: Text(
                            "1w ago",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              size: 20,
                            ),
                            Text(
                              "FIND THIS TILE",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),

            SizedBox(
              height: 10,
            ),


            //Random #3
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.more_horiz,
                              size: 30,
                            ),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              Icons.wallet,
                              size: 80,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text("Dangerous"),
                        ),
                        Container(
                          child: Text(
                            "6w ago",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              size: 20,
                            ),
                            Text(
                              "FIND THIS TILE",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.more_horiz,
                              size: 30,
                            ),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              Icons.cabin_outlined,
                              size: 80,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text("Cabin"),
                        ),
                        Container(
                          child: Text(
                            "3M ago",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              size: 20,
                            ),
                            Text(
                              "FIND THIS TILE",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),

            SizedBox(
              height: 10,
            ),

            //Random #4
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.more_horiz,
                              size: 30,
                            ),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              Icons.kayaking,
                              size: 80,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text("kayaking"),
                        ),
                        Container(
                          child: Text(
                            "2w ago",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              size: 20,
                            ),
                            Text(
                              "FIND THIS TILE",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.more_horiz,
                              size: 30,
                            ),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Icon(
                              Icons.newspaper,
                              size: 80,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text("Rug Backpack"),
                        ),
                        Container(
                          child: Text(
                            "1w ago",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              size: 20,
                            ),
                            Text(
                              "FIND THIS TILE",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),

            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'tiles',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_pin),
              label: 'Location',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
          ),
        ],
      ),
    );
  }
}
