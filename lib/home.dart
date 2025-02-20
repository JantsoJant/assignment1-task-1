import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedValue = "Today";
  final List<String> dropdownItems = ["Today", "Tomorrow", "Next Week"];
  final List<Map<String, String>> items = [
    {"price": "25,000", "image": "images/img3.png"},
    {"price": "22,000", "image": "images/img3.png"},
    {"price": "18,000", "image": "images/img3.png"},
    {"price": "24,000", "image": "images/img3.png"},
    {"price": "25,000", "image": "images/img3.png"},
    {"price": "17,000", "image": "images/img3.png"},
    {"price": "10,000", "image": "images/img3.png"},
  ];
  final List<Map<String, String>> products = [
    {"name": "Product 1", "price": "25,000", "image": "images/img3.png"},
    {"name": "Product 2", "price": "22,000", "image": "images/img3.png"},
    {"name": "Product 3", "price": "18,000", "image": "images/img3.png"},
    {"name": "Product 4", "price": "24,000", "image": "images/img3.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Fixed Stack (Non-Scrollable)
          SizedBox(
            height: 290,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(15, 40, 15, 60),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.purpleAccent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.grey[100],
                        child: Image.asset("images/person1.png"),
                      ),
                      Text(
                        "Sobat Tenak",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.grey[100],
                        child: Image.asset("images/msg2.png", width: 30),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Items Price"),
                              DropdownButton<String>(
                                value: selectedValue,
                                icon: Icon(Icons.arrow_drop_down, color: Colors.grey[700]),
                                elevation: 12,
                                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue!;
                                  });
                                },
                                items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                underline: Container(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(items[index]["image"]!),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        items[index]["price"]!,
                                        style: TextStyle(color: Colors.yellow[800]),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                              height: 1,
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.thumb_up, color: Colors.grey[700], size: 20),
                                    SizedBox(width: 5),
                                    Text("Like", style: TextStyle(color: Colors.grey[800], fontSize: 13)),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.message, color: Colors.grey[700], size: 20),
                                    SizedBox(width: 5),
                                    Text("Comment", style: TextStyle(color: Colors.grey[800], fontSize: 13)),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.share, color: Colors.grey[700], size: 20),
                                    SizedBox(width: 5),
                                    Text("Share", style: TextStyle(color: Colors.grey[800], fontSize: 13)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Scrollable Content Below the Stack
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Latest Products", style: TextStyle(fontWeight: FontWeight.w500)),
                            Text("View All", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13)),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage("images/img3.png"),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text("Product 1", style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                                Text("28.000", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage("images/img3.png"),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text("Product 2", style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                                Text("18.000", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage("images/img3.png"),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text("Product 3", style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                                Text("4.200", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage("images/img3.png"),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text("Product 4", style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                                Text("2.000", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          color: Colors.blue,
                          height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("images/person1.png"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.red,
                          width: 400,
                          height: 400,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Salman Ahmad"),
                                        Text("Just Now"),
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.menu),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("New Post Added Lorem Ipsum \nis a Dummy Text"),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      width: 300,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child:
                                        Image(image: AssetImage("images/img3.png"),width: 100,fit: BoxFit.fitWidth,)

                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}