import 'package:eduapp/screen/branch_information.dart';
import 'package:eduapp/screen/class%20subject.dart';
import 'package:eduapp/screen/personnel.dart';
import 'package:eduapp/screen/subject.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    
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
      body: Column(
        children: [
          // SizedBox(height: height * 0.03),
          SizedBox(
            height: height * 0.358,
            child: Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (1/ .79),
                shrinkWrap: true,
                children: List.generate(4, (index) {
                  late Widget icon; // Declare the icon variable as a late Widget

                  switch (index) {
                    case 0:
                      icon = const Icon(
                        Icons.equalizer,
                        color: Colors.white,
                        size: 50
                                            );
                      break;
                    case 1:
                      icon = const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 50,
                      );
                      break;
                    case 2:
                      icon = const Icon(
                        Icons.menu_book,
                        color: Colors.white,
                        size: 50,
                      );
                      break;
                    case 3:
                      icon = const Icon(
                        Icons.meeting_room,
                        color: Colors.white,
                        size: 50,
                      );
                      break;
                  }
                  return Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: [
                        Stack(
                            alignment: Alignment.topCenter,
                            children: <Widget>[
                              ClipOval(
                                child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: Material(
                                    color: Color(0xFFB155D1),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(50),
                                      splashColor: Colors.black,
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
                                              builder: (context) => Classroom()
                                            ),
                                          );
                                        }
                                      },
                                      child: icon,
                                    ),
                                  ),
                                ),
                              ),
                              // Positioned(
                              //   bottom: 0,
                              //   child: Text(
                              //     index == 0
                              //         ? 'ข้อมูลสาขา'
                              //         : index == 1
                              //             ? 'ข้อมูลบุคลากร'
                              //             : index == 2
                              //                 ? 'วิชาในหลักสูตร'
                              //                 : 'ห้องเรียนประจำสาขา',
                              //     style: TextStyle(
                              //       color: Colors.black,
                              //       fontSize: 16,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: Text(
                                index == 0
                                    ? 'ข้อมูลสาขา'
                                    : index == 1
                                        ? 'ข้อมูลบุคลากร'
                                        : index == 2
                                            ? 'วิชาในหลักสูตร'
                                            : 'ห้องเรียนประจำสาขา',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                            ),
                          )
                      ],
                    ),
                  //   child: Stack(
                  //   alignment: Alignment.topCenter,
                  //   children: <Widget>[
                  //     ClipOval(
                  //       child: SizedBox(
                  //         height: 100,
                  //         width: 100,
                  //         child: Material(
                  //           color: Color(0xFFB155D1),
                  //           child: InkWell(
                  //             borderRadius: BorderRadius.circular(50),
                  //             splashColor: Colors.black,
                  //             onTap: () {
                  //               if (index == 0) {
                  //                 Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(
                  //                     builder: (context) => Information(),
                  //                   ),
                  //                 );
                  //               } else if (index == 1) {
                  //                 Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(
                  //                     builder: (context) => Personnel(),
                  //                   ),
                  //                 );
                  //               } else if (index == 2) {
                  //                 Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(
                  //                     builder: (context) => SubjectRmutt(),
                  //                   ),
                  //                 );
                  //               } else if (index == 3) {
                  //                 Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(
                  //                     builder: (context) => Classroom()
                  //                   ),
                  //                 );
                  //               }
                  //             },
                  //             child: icon,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Positioned(
                  //       bottom: 0,
                  //       child: Text(
                  //         index == 0
                  //             ? 'ข้อมูลสาขา'
                  //             : index == 1
                  //                 ? 'ข้อมูลบุคลากร'
                  //                 : index == 2
                  //                     ? 'วิชาในหลักสูตร'
                  //                     : 'ห้องเรียนประจำสาขา',
                  //         style: TextStyle(
                  //           color: Colors.black,
                  //           fontSize: 16,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // )
                  );
                }),
              ),
            )
          ),
          Container(
            // height: height * 0.3,
            margin: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.newspaper, size: 30),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'RMUTT NEWS',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
          // Expanded(
          //   child: GridView.count(
          //     crossAxisCount: 2,
          //     children: List.generate(4, (index) {
          //       late Widget icon; // Declare the icon variable as a late Widget

          //       switch (index) {
          //         case 0:
          //           icon = const Icon(
          //             Icons.equalizer,
          //             color: Colors.white,
          //             size: 50
          //                                 );
          //           break;
          //         case 1:
          //           icon = const Icon(
          //             Icons.person,
          //             color: Colors.white,
          //             size: 50,
          //           );
          //           break;
          //         case 2:
          //           icon = const Icon(
          //             Icons.menu_book,
          //             color: Colors.white,
          //             size: 50,
          //           );
          //           break;
          //         case 3:
          //           icon = const Icon(
          //             Icons.meeting_room,
          //             color: Colors.white,
          //             size: 50,
          //           );
          //           break;
          //       }
          //       return Stack(
          //         alignment: Alignment.center,
          //         children: <Widget>[
          //           ClipOval(
          //             child: SizedBox(
          //               height: 100,
          //               width: 100,
          //               child: Material(
          //                 color: Color(0xFFB155D1),
          //                 child: InkWell(
          //                   borderRadius: BorderRadius.circular(50),
          //                   splashColor: Colors.black,
          //                   onTap: () {
          //                     if (index == 0) {
          //                       Navigator.push(
          //                         context,
          //                         MaterialPageRoute(
          //                           builder: (context) => Information(),
          //                         ),
          //                       );
          //                     } else if (index == 1) {
          //                       Navigator.push(
          //                         context,
          //                         MaterialPageRoute(
          //                           builder: (context) => Personnel(),
          //                         ),
          //                       );
          //                     } else if (index == 2) {
          //                       Navigator.push(
          //                         context,
          //                         MaterialPageRoute(
          //                           builder: (context) => SubjectRmutt(),
          //                         ),
          //                       );
          //                     } else if (index == 3) {
          //                       Navigator.push(
          //                         context,
          //                         MaterialPageRoute(
          //                           builder: (context) => Classroom()
          //                         ),
          //                       );
          //                     }
          //                   },
          //                   child: icon,
          //                 ),
          //               ),
          //             ),
          //           ),
          //           Positioned(
          //             bottom: 0,
          //             child: Text(
          //               index == 0
          //                   ? 'ข้อมูลสาขา'
          //                   : index == 1
          //                       ? 'ข้อมูลบุคลากร'
          //                       : index == 2
          //                           ? 'วิชาในหลักสูตร'
          //                           : 'ห้องเรียนประจำสาขา',
          //               style: TextStyle(
          //                 color: Colors.black,
          //                 fontSize: 16,
          //               ),
          //             ),
          //           ),
          //         ],
          //       );
          //     }),
          //   ),
          // ),
        ],
      ),
    );
  }
}
