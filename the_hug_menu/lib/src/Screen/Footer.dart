// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../Utility/Constants.dart';
import '../Utility/WidgetUtility.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    var size = MediaQuery.of(context).size;
    return DeviceScreenType.mobile == deviceType
        ? Container(
            width: size.width,
            height: 80,
            color: const Color.fromRGBO(44, 44, 44, 1),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextWidget(
                      "©The Hug (ເດີຮັກ). ຂັບເຄື່ອນໂດຍ ULaoDev",
                      primaryColor,
                      14,
                      FontWeight.normal,
                      TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    TextWidget(
                      "ລິຂະສິດ 2024",
                      primaryColor,
                      16,
                      FontWeight.normal,
                      TextAlign.center,
                    ),
                  ],
                ),
              ),
            ))
        : Row(
          children: [
            SizedBox(width: size.width * 0.2),
            Container(
              color:  const Color.fromRGBO(44, 44, 44, 1),
              width: size.width * 0.6,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    TextWidget(
                      "©The Hug (ເດີຮັກ). ຂັບເຄື່ອນໂດຍ ULaoDev",
                      primaryColor,
                      14,
                      FontWeight.normal,
                      TextAlign.center,
                    ),
                    const Expanded(child: SizedBox()),
                    TextWidget(
                      "ລິຂະສິດ 2024",
                      primaryColor,
                      16,
                      FontWeight.normal,
                      TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: size.width * 0.2),
          ],
        );
  }
}
