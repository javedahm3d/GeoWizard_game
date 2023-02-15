import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:whatsapp_clone/global.dart';
import 'package:whatsapp_clone/screens/country_battle.dart';
import 'package:whatsapp_clone/screens/pinpoint_mode.dart';
import 'package:whatsapp_clone/widgets/modeTile.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
//routing to selected game mode
  routeMode() {
    //route to pin point
    if (selectedMode == 'Pin Point') {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PinPointModePage(),
      ));
    }

    //route to country battle
    if (selectedMode == 'Country Battle') {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const CountryBattleModePage(),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Geo", style: TextStyle(color: Colors.greenAccent)),
          Text("Wizard", style: TextStyle(color: Colors.orange)),
        ],
      )),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

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
              padding:
                  const EdgeInsets.symmetric(horizontal: 10).copyWith(right: 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            selectedMode = 'Country Battle';
                          });
                        },
                        splashColor: Colors.yellow,
                        child: ModeTile(
                          modeId: 1,
                          modeName: 'Country Battle',
                          imageName: 'country_battle.jpg',
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            selectedMode = 'Pin Point';
                          });
                        },
                        child: ModeTile(
                          modeId: 2,
                          modeName: 'Pin Point',
                          imageName: 'pinPoint.jpg',
                        )),
                  ],
                ),
              ),
            ),

            //selected mode displayed

            Text('selected mode : $selectedMode'),

            SizedBox(
              height: 30,
            ),

            //play button

            InkWell(
              onTap: routeMode,
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
