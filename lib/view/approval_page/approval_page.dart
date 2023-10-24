import 'package:flutter/material.dart';
import 'package:teng_go/view/approval_page/approval_business_page.dart';
import 'package:teng_go/view/approval_page/request_page.dart';
import 'package:teng_go/widgets/appbar_widget.dart';

class ApprovalPage extends StatefulWidget {
  const ApprovalPage({super.key});

  @override
  State<ApprovalPage> createState() =>
      _ApprovalPageState();
}

class _ApprovalPageState extends State<ApprovalPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: approvalBar,
          body: Column(
            children: const [
              TabBar(
                tabs: [
                  Tab(
                    child: Text('Business Trip',
                        style: TextStyle(color: Colors.black)),
                  ),
                  Tab(
                    child: Text('Request Car',
                        style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Expanded(
                  child: TabBarView(children: [
                // Business Trip Page
                BusinessPage(),

                // Request Car Page
                RequestPage(),
              ])),
            ],
          )),
    );
  }
}
