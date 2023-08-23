import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  List<String> lItems = ['Add Money', 'Peter', 'Gillian','Kelie','Mary','Rose','John Wick'];
  List<String> lPhotos = [
    '',
    'assets/images/p2.jpg',
    'assets/images/p3.jpg',
    'assets/images/p1.jpg',
    'assets/images/p3.jpg',
    'assets/images/p1.jpg',
    'assets/images/p2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/wallpaper.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        //First Row
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                          IconButton(
                            icon: const Icon(Icons.notifications_none),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        //Second Row
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 18),
                            child: Text(
                              'Wallet',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 230,
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                      top: 240,
                    ),
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 230,
                            width: 360,
                            margin: const EdgeInsets.only(
                              left: 7,
                            ),
                            child: const Card(
                              elevation: 1,
                              surfaceTintColor: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Card no.',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                        Card(
                                          shape: ContinuousRectangleBorder(),
                                          color: Colors.pink,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 7, horizontal: 14),
                                            child: Text(
                                              'VISA',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '****',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text(
                                            '****',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text(
                                            '****',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text(
                                            '9988',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Expires',
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '06/23',
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 12, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Send Money',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              Container(
                height: 140,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: lItems.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 140,
                        width: 120,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Card(
                          elevation: 1,
                          surfaceTintColor: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              index == 0
                                  ? CircleAvatar(
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add,
                                            size: 30,
                                            color: Colors.white,
                                          )),
                                      backgroundColor: Colors.blue,
                                      radius: 25,
                                    )
                                  : CircleAvatar(
                                      backgroundImage:
                                          AssetImage(lPhotos[index]),
                                      radius: 30),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                lItems[index].toString(),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: index==0 ? FontWeight.bold : FontWeight.normal
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 12, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'All',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Received',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Sent',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '23 july 2019',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 80,
                margin: const EdgeInsets.symmetric(horizontal: 12.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.yellow,
                      child: Icon(
                        Icons.edit_note_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Florenti Restaurant',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '07-23',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '20.04',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Text(
                      '- \$ 251.0',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(
                indent: 70,
                thickness: 1,
                color: Colors.black26,
              ),
              Container(
                width: double.infinity,
                height: 80,
                margin: const EdgeInsets.symmetric(horizontal: 12.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.pink,
                      child: Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Transfer to Anna',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '07-23',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '14.01',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Text(
                      '- \$ 64.0',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
