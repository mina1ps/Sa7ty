import 'package:flutter/material.dart';
import 'package:medical_care/appointment_list.dart';
import 'package:medical_care/booking_calendar.dart';
import 'package:medical_care/doctor_list.dart';
import 'package:medical_care/main.dart';
import 'package:bottom_bar_matu/bottom_bar_matu.dart';

void main() {
  runApp(MyApp());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xff101a25),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
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
              margin: const EdgeInsets.only(top: 140, left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                    color: Color(0xFFbacA6AEB0),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 250),
              child: Text(
                'Services',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 100,
                    color: const Color(0xff101a25),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: const CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("images/doctor.png"),
                            backgroundColor: Color(0xff101a25),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          child: const CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage("images/microscope.png"),
                            backgroundColor: Color(0xff101a25),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          child: const CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("images/mask.png"),
                            backgroundColor: Color(0xff101a25),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          child: const CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("images/drug.png"),
                            backgroundColor: Color(0xff101a25),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          child: const CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("images/capsules.png"),
                            backgroundColor: Color(0xff101a25),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      width: 350,
                      image: AssetImage("images/home_background.jpeg"),
                    ),
                  ),
                  Positioned(
                    left: 120,
                    right: 0,
                    top: 40,
                    bottom: 0,
                    child: Image.asset(
                      "images/young_doc.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    left: 10,
                    right: 40,
                    top: 75,
                    bottom: 0,
                    child: Text(
                      'Get the Best\nmedcial Services',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Segoe UIVF',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Positioned(
                    left: 10,
                    right: 40,
                    top: 160,
                    bottom: 0,
                    child: Text(
                      'We provide best quality medical \n services without further cost.',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Segoe UIVF',
                          color: Colors.white),
                    ),
                  ),
                ]),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 75),
              child: Text(
                'Upcoming Appointments',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BookingCalendarDemoApp()),
                );
              },
              child: Text(
                'PRESS TO BOOK AN APPOINTMENT!',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Row(children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DoctorList()),
                  );
                },
                child: Text(
                  'Doctor List',
                  style: TextStyle(fontSize: 20, color: Color(0xff101a25)),
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppointmentList()),
                  );
                },
                child: Text(
                  'Appointment List',
                  style: TextStyle(fontSize: 20, color: Color(0xff101a25)),
                ),
              ),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarBubble(
        backgroundColor: Color(0xff101a25), color: Colors.white,
        // selectedIndex: _index!,
        items: [
          BottomBarItem(iconData: Icons.home),
          BottomBarItem(iconData: Icons.schedule),
          BottomBarItem(iconData: Icons.report),
          BottomBarItem(iconData: Icons.notifications),
        ],
        onSelect: (index) {
          // implement your select function here
        },
      ),
    );
  }
}
