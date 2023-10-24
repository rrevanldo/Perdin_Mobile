import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:teng_go/core/theme.dart';

RoundCheckBox buttonCheck = RoundCheckBox(
  onTap: (selected) {},
  checkedColor: fromCssColor('#2E3192'),
  borderColor: fromCssColor('#2E3192'),
  checkedWidget: Icon(Icons.abc, size: 1, color: fromCssColor('#2E3192')),
  size: 20,
);

OutlinedButton buttonGreen = OutlinedButton(
  style: OutlinedButton.styleFrom(
    backgroundColor: fromCssColor('#77CA91'),
  ),
  onPressed: () {},
  child: Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 15, left: 137, right: 137),
    child: Text('Submit',
        style: GoogleFonts.poppins(
          color: Colors.white,
        )),
  ),
);

Column botbutton = Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (_) => CartRequestPage(),
              //   ),
              // );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColorgreen,
              minimumSize: const Size.fromHeight(50),
            ),
            child: Text('Submit',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 16))),
      ),
    ),
  ],
);

// Container cardKosong = Container(
//     width: 350,
//     height: 100,
//     decoration: const BoxDecoration(
//       borderRadius: BorderRadius.only(
//         bottomLeft: Radius.circular(50),
//         bottomRight: Radius.circular(50),
//       ),
//     ),
//     child: Card(
//       shape: RoundedRectangleBorder(
//         side: const BorderSide(
//           color: Colors.grey,
//         ),
//         borderRadius: BorderRadius.circular(15.0),
//       ),
//     ));