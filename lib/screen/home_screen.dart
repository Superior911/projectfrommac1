import 'package:eduapp/screen/branch_information.dart';
import 'package:eduapp/screen/class%20subject.dart';
import 'package:eduapp/screen/personnel.dart';
import 'package:eduapp/screen/subject.dart';
import 'package:eduapp/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 80,
          title: Align(
            alignment: Alignment.center,
            child: Container(
              height: 250,
              child: Image.asset(
                'images/rmuttlogo.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
              color: Color(0xFF790E9F),
            ),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF790E9F),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ยินดีต้อนรับ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'ชื่อผู้ใช้',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('หน้าแรก'),
              leading: const Icon(Icons.home),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: const Text('ช่วยเหลือ'),
              leading: const Icon(Icons.chat),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: const Text('เปลี่ยนภาษา'),
              leading: const Icon(Icons.language),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: const Text('ข้อมูลเพิ่มเติม'),
              leading: const Icon(Icons.priority_high),
              onTap: () {
                // Handle drawer item tap
              },
            ),
          ],
        ),
      ),
      body: GridView.count(
  crossAxisCount: 2,
  children: List.generate(4, (index) {
    late Widget icon; // Declare the icon variable as a late Widget
    switch (index) {
      case 0:
        icon = const Icon(Icons.assessment);
        break;
      case 1:
        icon = const Icon(Icons.person);
        break;
      case 2:
        icon = const Icon(Icons.menu_book);
        break;
      case 3:
        icon = const Icon(Icons.store);
        break;
    }
    return InkWell(
      onTap: () {
        if (index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Information(),
            ),
          );
        } else if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Personnel(),
            ),
          );
        } else if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SubjectRmutt(),
            ),
          );
        } else if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Classroom(),
            ),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200], // Customize the background color
        ),
        child: Center(child: icon), // Add the icon as a child of the Container
      ),
    );
  }),
),
    );
  }
}

