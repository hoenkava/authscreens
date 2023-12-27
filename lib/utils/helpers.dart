

import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart' as CustomTabs;

class Helpers {
  static String timeFormatter(int epoch) {
    var time = DateTime.fromMillisecondsSinceEpoch(epoch);
    var hour = time.hour > 12 ? time.hour % 12 : time.hour;
    hour = hour == 0 ? 12 : hour;
    var meridiem = time.hour > 11 ? "PM" : "AM";
    return "${hour < 10 ? '0' : ''}$hour:${time.minute < 10 ? '0' : ''}${time.minute} $meridiem";
  }

  static String dateFormatter(int epoch) {
    var time = DateTime.fromMillisecondsSinceEpoch(epoch);
    var day = time.day;
    var month = time.month;
    var year = time.year;
    return "${day < 10 ? '0' : ''}$day/${month < 10 ? '0' : ''}$month/$year";
  }

  static String secondsToMinutes(int sec) {
    if (sec <= 0) {
      return '00:00';
    }
    var min = (sec / 60).floor();
    return '${min < 10 ? '0' : ''}$min:${(sec % 60) < 10 ? '0' : ''}${sec % 60}';
  }


  static void launchCustomTab(
      {required String url, required BuildContext context}) async {
    try {
      await CustomTabs.launch(
        url,
        customTabsOption: CustomTabs.CustomTabsOption(
          toolbarColor: Theme.of(context).primaryColor,
          enableDefaultShare: true,
          enableUrlBarHiding: true,
          showPageTitle: true,
          extraCustomTabs: const <String>[
            // ref. https://play.google.com/store/apps/details?id=org.mozilla.firefox
            'org.mozilla.firefox',
            // ref. https://play.google.com/store/apps/details?id=com.microsoft.emmx
            'com.microsoft.emmx',
          ],
        ),
      );
    } catch (e) {
      // An exception is thrown if browser app is not installed on Android device.
    }
  }
}
