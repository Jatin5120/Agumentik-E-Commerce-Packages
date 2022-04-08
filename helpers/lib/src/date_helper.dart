import 'package:constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers.dart';

class DateHelper {
  const DateHelper._();

  static Future<DateTime?> pickDate(DateTime current) async {
    final DateTime now = DateTime.now();
    final DateTime initialDate = DateTime(now.year - 50, now.month, now.day);
    DateTime? date;
    if (GetPlatform.isAndroid) {
      date = await showDatePicker(
        context: Get.context!,
        initialDate: current,
        firstDate: initialDate,
        lastDate: now,
      );
      return date;
    } else {
      await showCupertinoModalPopup(
        context: Get.context!,
        builder: (_) {
          return Container(
            height: Get.height * 0.25,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                        child: const Text("Cancel"),
                        onPressed: () {
                          date = null;
                          Get.back();
                        }),
                    CupertinoButton(
                      child: const Text("Done"),
                      onPressed: () {
                        if (date == null) {
                          DialogHelper.showToast(Strings.enterDOB);
                        } else {
                          Get.back();
                        }
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (value) {
                      date = value;
                    },
                    initialDateTime: current,
                    minimumDate: initialDate,
                    maximumDate: now,
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
    return date;
  }
}
