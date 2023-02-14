import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Geo", style: TextStyle(color: Colors.greenAccent)),
          Text("Wizard", style: TextStyle(color: Colors.orange)),
        ],
      )),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            //user profile image
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/890664645740175360/ATnwBuw__400x400.jpg'),
              radius: 40,
            ),

            //user name
            Text(
              'username',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 30),

            //select mode text
            Text(
              'select mode',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            // horizontal sliding options

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 250,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 250,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),

            //selected mode
            Text('selected mode'),

            SizedBox(
              height: 30,
            ),

            InkWell(
              onTap: () {},
              child: Container(
                width: 130,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    'play',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
