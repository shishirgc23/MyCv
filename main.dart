import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My CV App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "My CV App",
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              elevation: 2.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 20.0),
                child: Column(
                  children: const <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/shree.jpg"),
                      radius: 40.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Shishir Gc",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "App Developer",
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    Text(
                      "Hello,I am Shishir Gc. I am a App developer and web developer too. ",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "PlayfairDisplay",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 8.0, bottom: 3.0),
              child: Text(
                "Social Links",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              elevation: 2.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        launch("https://www.facebook.com/");
                      },
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        print("i am pressed");
                      },
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blue,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        print("i am pressed");
                      },
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.red,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        print("i am pressed");
                      },
                      icon: const Icon(
                        FontAwesomeIcons.youtube,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 8.0, bottom: 3.0),
              child: Text(
                "Skills",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      "hhttps://www.google.com/imgres?imgurl=https%3A%2F%2Fp.kindpng.com%2Fpicc%2Fs%2F15-155426_mobile-app-development-hd-png-download.png&imgrefurl=https%3A%2F%2Fwww.kindpng.com%2Ffree%2Fmobile-app-development%2F&tbnid=TT9ZPWhREt1vjM&vet=12ahUKEwjl3v-N6vL2AhVbg2MGHdwMCGEQMygJegUIARDyAQ..i&docid=kSQK7i45dRbB5M&w=474&h=280&q=app%20development%20images&ved=2ahUKEwjl3v-N6vL2AhVbg2MGHdwMCGEQMygJegUIARDyA"),
                ),
                title: Text(
                  "App Development",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Flutter,Kotlin",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.reachfirst.com%2Fweb-development-a-powerful-tool-for-business-growth%2F&psig=AOvVaw3YtAHzT10osdUs6shhKUDa&ust=1648901852029000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKjNn5vs8vYCFQAAAAAdAAAAABAD"),
                ),
                title: Text(
                  "Web Development",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "HTML,CSS,JAVASCRIPT",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }

  void launch(String s) {}
}
