import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff101a25),
      ),
      body: Container(
        color: Color(0xff101a25),
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 10, bottom: 30, right: 10),
              width: double.infinity,
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff101a25),
                    hintText: 'Doctors, Clinics ,labs',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.white))),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.only(bottom: 100, right: 200),
            //   height: 300,
            //   width: 375,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     color: Colors.white,
            //   ),
            //   child: CircleAvatar(
            //     radius: 35,
            //     backgroundImage: AssetImage('images/doc.jpeg'),
            //   ),
            // ),
            // Text(
            //   'HELLO',
            //   style: TextStyle(color: Colors.black, fontSize: 24),
            // )
            // Card(
              // child: ListTile(
              //   leading: Image(
              //     height: 80,
              //     width: 80,
              //     image: AssetImage('images/doc.jpeg'),
              //   ),
              //   title: Text(
              //       'Dr. Abu Saifuddin\nAssitant Professor\nNeuromedicine\nMD , M.PHIL, PHD'),
              //   subtitle:
              //       TextButton(child: Text('View Profile'), onPressed: () {}),
              //   trailing:
              //       TextButton(child: Text('\nAppointment'), onPressed: () {}),
              // ),
              // shape: ,
            // ),
          ],
        ),
      ),
    );
  }
}
