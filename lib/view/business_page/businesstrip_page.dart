 import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:teng_go/core/theme.dart';
import 'package:teng_go/view/business_page/tripreport_page.dart';

class BusinessTripPage extends StatefulWidget {
  const BusinessTripPage({super.key});

  @override
  State<BusinessTripPage> createState() => _BusinessTripPageState();
}

class _BusinessTripPageState extends State<BusinessTripPage> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 25, top: 35),
                        child: Text(
                          "Trip Info",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                    width: 375,
                    height: 150,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, top: 10),
                                  child: Checkbox(
                                    onChanged: (value) {
                                      setState(() {
                                        this.value = value!;
                                      });
                                    },
                                    value: value,
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    'One way',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Checkbox(
                                    onChanged: (value1) {
                                      setState(() {
                                        this.value1 = value1!;
                                      });
                                    },
                                    value: value1,
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    'Multiple Trip',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Checkbox(
                                    onChanged: (value2) {
                                      setState(() {
                                        this.value2 = value2!;
                                      });
                                    },
                                    value: value2,
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    'Roundtrip',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: Text(
                                    "Departure",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, right: 105),
                                  child: Text(
                                    "Return",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: Row(
                                    children: [
                                      Icon(Icons.calendar_today_outlined,
                                          color: colordarkBlue),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "26 Jan 2023",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 32),
                                  child: Row(
                                    children: [
                                      Icon(Icons.calendar_today_outlined,
                                          color: colordarkBlue),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "28 Jan 2023",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 25, top: 20),
                        child: Text(
                          "Allowances Info",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                    width: 375,
                    height: 280,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 20),
                                      child: RoundCheckBox(
                                        onTap: (selected) {},
                                        checkedColor: fromCssColor('#2E3192'),
                                        borderColor: fromCssColor('#2E3192'),
                                        checkedWidget: Icon(Icons.abc,
                                            size: 1,
                                            color: fromCssColor('#2E3192')),
                                        size: 20,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 20),
                                      child: Text(
                                        'Reimbursement',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 20, right: 10),
                                      child: RoundCheckBox(
                                        onTap: (selected) {},
                                        checkedColor: fromCssColor('#2E3192'),
                                        borderColor: fromCssColor('#2E3192'),
                                        checkedWidget: Icon(Icons.abc,
                                            size: 1,
                                            color: fromCssColor('#2E3192')),
                                        size: 20,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 20),
                                      child: Text(
                                        'Cash Advance',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Meals (3 days)",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Rp 300.000",
                                    style: GoogleFonts.poppins(
                                        color: colordarkBlue,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Rp 100.000/day",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Allowances (3 days)",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Rp 1.500.000",
                                    style: GoogleFonts.poppins(
                                        color: colordarkBlue,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Rp 500.000/day",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Allowances budget request:",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Enter amount request",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  )),
                            ],
                          ),
                          divider4,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Total trip Budget",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Rp. 1.800.000",
                                    style: GoogleFonts.poppins(
                                        color: colordarkBlue,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 25, top: 20),
                        child: Text(
                          "Destination info",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                    width: 375,
                    height: 615,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, top: 15),
                                  child: Text(
                                    "Destination",
                                    style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 5),
                                child: Icon(Icons.calendar_today_outlined,
                                    color: iconColor, size: 30),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 5),
                                  child: Text(
                                    "26 Jan 2023",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          divider2,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: RoundCheckBox(
                                        onTap: (selected) {},
                                        checkedColor: fromCssColor('#2E3192'),
                                        borderColor: fromCssColor('#2E3192'),
                                        checkedWidget: Icon(Icons.abc,
                                            size: 1,
                                            color: fromCssColor('#2E3192')),
                                        size: 15,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 20),
                                      child: Text(
                                        'Flight',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: RoundCheckBox(
                                        onTap: (selected) {},
                                        checkedColor: fromCssColor('#2E3192'),
                                        borderColor: fromCssColor('#2E3192'),
                                        checkedWidget: Icon(Icons.abc,
                                            size: 1,
                                            color: fromCssColor('#2E3192')),
                                        size: 15,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 20),
                                      child: Text(
                                        'Train',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: RoundCheckBox(
                                        onTap: (selected) {},
                                        checkedColor: fromCssColor('#2E3192'),
                                        borderColor: fromCssColor('#2E3192'),
                                        checkedWidget: Icon(Icons.abc,
                                            size: 1,
                                            color: fromCssColor('#2E3192')),
                                        size: 15,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 20),
                                      child: Text(
                                        'Own Car',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: RoundCheckBox(
                                        onTap: (selected) {},
                                        checkedColor: fromCssColor('#2E3192'),
                                        borderColor: fromCssColor('#2E3192'),
                                        checkedWidget: Icon(Icons.abc,
                                            size: 1,
                                            color: fromCssColor('#2E3192')),
                                        size: 15,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 20),
                                      child: Text(
                                        'Ops Car',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "From",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Jakarta",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          divider2,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "To",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Surabaya",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          divider2,
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Destination",
                                    style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: colordarkBlue,
                                      ))),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 5),
                                child: Icon(Icons.calendar_today_outlined,
                                    color: iconColor, size: 30),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 5),
                                  child: Text(
                                    "26 Jan 2023",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: RoundCheckBox(
                                        onTap: (selected) {},
                                        checkedColor: fromCssColor('#2E3192'),
                                        borderColor: fromCssColor('#2E3192'),
                                        checkedWidget: Icon(Icons.abc,
                                            size: 1,
                                            color: fromCssColor('#2E3192')),
                                        size: 15,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 20),
                                      child: Text(
                                        'Flight',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: RoundCheckBox(
                                        onTap: (selected) {},
                                        checkedColor: fromCssColor('#2E3192'),
                                        borderColor: fromCssColor('#2E3192'),
                                        checkedWidget: Icon(Icons.abc,
                                            size: 1,
                                            color: fromCssColor('#2E3192')),
                                        size: 15,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 20),
                                      child: Text(
                                        'Train',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: RoundCheckBox(
                                        onTap: (selected) {},
                                        checkedColor: fromCssColor('#2E3192'),
                                        borderColor: fromCssColor('#2E3192'),
                                        checkedWidget: Icon(Icons.abc,
                                            size: 1,
                                            color: fromCssColor('#2E3192')),
                                        size: 15,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 20),
                                      child: Text(
                                        'Own Car',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: RoundCheckBox(
                                        onTap: (selected) {},
                                        checkedColor: fromCssColor('#2E3192'),
                                        borderColor: fromCssColor('#2E3192'),
                                        checkedWidget: Icon(Icons.abc,
                                            size: 1,
                                            color: fromCssColor('#2E3192')),
                                        size: 15,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 20),
                                      child: Text(
                                        'Ops Car',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          divider2,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "From",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Jakarta",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          divider2,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "To",
                                    style: GoogleFonts.poppins(
                                        color: buttonGrey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Surabaya",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          divider2,
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Trip reason",
                                    style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          Container(
                            width: 380,
                            height: 105,
                            // margin: EdgeInsets.only(bottom: 30),
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              // elevation: 10,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const TripReportPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: backgroundColorgreen,
                      minimumSize: const Size.fromHeight(50),
                    ),
                    child: Text('Request',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 16))),
              ),
            )),
          ],
        ),
      ],
    ));
  }
}
