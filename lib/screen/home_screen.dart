
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  List catNames = [
    'ข้อมูลสาขา',
    'ข้อมูลบุคลากร',
    'วิชาในหลักสูตร',
    'ห้องเรียนประจำสาขา',
  ];

  List<Color> catColors = [
    Color(0xFFB155D1),
    Color(0xFFB155D1),
    Color(0xFFB155D1),
    Color(0xFFB155D1),
  ];

  List<Icon> catIcons = [
    Icon(Icons.assessment, color: Colors.white, size: 50),
    Icon(Icons.person, color: Colors.white, size: 50),
    Icon(Icons.menu_book, color: Colors.white, size: 50),
    Icon(Icons.store, color: Colors.white, size: 50),
    //Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
    //Icon(Icons.emoji_ev ents, color: Colors.white, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 65,
          title: Image.asset(
            'images/rmuttlogo.png',
            height: 200,
            width: 300,
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
              title: Text('หน้าแรก'),
              leading: Icon(Icons.home),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: Text('ช่วยเหลือ'),
              leading: Icon(Icons.chat),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: Text('เปลี่ยนภาษา'),
              leading: Icon(Icons.language),
              onTap: () {
                // Handle drawer item tap
              },
            ),
            ListTile(
              title: Text('ข้อมูลเพื่มเติม'),
              leading: Icon(Icons.priority_high),
              onTap: () {
                // Handle drawer item tap
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: [
            GridView.builder(
              itemCount: catNames.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.1,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: catColors[index],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: catIcons[index],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      catNames[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                  ],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.newspaper, size: 30),
                //SizedBox(width: 10),
                SizedBox(height: 10,),
                Text(
                  'RMUTT NEWS',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
