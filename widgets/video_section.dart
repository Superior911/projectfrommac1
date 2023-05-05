import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  //static data for videos
  List videolist = [
    'เบื้องต้นเกี่ยวกับ Flutter',
    'สอนวิธีติดตั้ง flutter สำหรับ Windows',
    'สอนตั้งค่าโปรแกรมจำลองบน windows',
    'สอนการสร้างแอปแรกของเรากัน',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videolist.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, Index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Index == 0
                  ? Color(0xFF674AEF)
                  : Color(0xFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(videolist[Index]),
          subtitle: Text('20นาที 50 วินาที'),
        );
      },
    );
  }
}
