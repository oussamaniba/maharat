import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maharat/features/settings/view/widgets/NotificationItem.dart';
import 'package:maharat/features/settings/view/widgets/SettingAppBar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
    return Scaffold(
      body: Column(
        children: [
          SettingAppBar(onBackPress: () {}, title: 'الاشعارات'),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 32),
              itemBuilder: (context, index) => const NotificationItem(
                title: '"! درس جديد"',
                content: 'هناك درس جديد لك تم اضافته على قائمة المجموعات',
              ),
            ),
          )
        ],
      ),
    );
  }
}
