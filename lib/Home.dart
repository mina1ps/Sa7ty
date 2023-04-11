import 'package:flutter/material.dart';
import 'package:medical_care/main.dart';

void main() {
  runApp(MyApp());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xff101a25),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(
              Icons.waving_hand,
              size: 30,
              color: Colors.yellow,
            ),
            Text('Hello! \n Abdelrahman'),
            SizedBox(width: 150),
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('images/9.jpg'),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 140, left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.white12,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                    color: Color(0xFFbacA6AEB0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, right: 250),
              child: Text(
                'Services',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Color(0xff101a25),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("images/doctor.png"),backgroundColor: Color(0xff101a25),
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("images/microscope.png"),backgroundColor: Color(0xff101a25),
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("images/mask.png"),backgroundColor: Color(0xff101a25),
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("images/drug.png"),backgroundColor: Color(0xff101a25),
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("images/capsules.png"),backgroundColor: Color(0xff101a25),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
