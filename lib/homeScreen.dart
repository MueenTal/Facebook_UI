import 'package:Facebook_UI/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widgets widgets = Widgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widgets.search(),
          Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "Stories",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  letterSpacing: 1.2),
                            ),
                            Text("See Archive")
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 180,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              widgets.story("assets/images/story/1.jpg",
                                  "assets/images/persons/1.jpg", "Ali"),
                              widgets.story("assets/images/story/2.jpg",
                                  "assets/images/persons/2.jpg", "Husam"),
                              widgets.story("assets/images/story/3.jpg",
                                  "assets/images/persons/3.jpg", "John"),
                              widgets.story("assets/images/story/4.jpg",
                                  "assets/images/persons/4.jpg", "Azmat"),
                              widgets.story("assets/images/story/5.jpg",
                                  "assets/images/persons/5.jpg", "Ahmed")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        widgets.post(
                            "Husam",
                            "assets/images/persons/2.jpg",
                            "30 mins ago",
                            "Hi friends , good moorning",
                            "assets/images/story/2.jpg"),
                        widgets.post(
                            "Azamat",
                            "assets/images/persons/4.jpg",
                            "10 mins ago'",
                            "All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                            ""),
                        widgets.post(
                            "Ahmed",
                            "assets/images/persons/5.jpg",
                            "3 mins ago",
                            "All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                            "assets/images/story/5.jpg"),
                        widgets.post("Ali", "assets/images/persons/1.jpg",
                            "2 mins ago", "", "assets/images/story/1.jpg"),
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}
