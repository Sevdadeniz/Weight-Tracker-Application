import 'package:flutter/material.dart';
import 'package:merhaba_flutter/models/record.dart';
import 'package:merhaba_flutter/view-models/controller.dart';
import 'package:merhaba_flutter/widgets/record_list_tile.dart';
import 'package:get/get.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    List<Record> record = _controller.record;

    return Obx(() => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("History"),
          actions: [
            IconButton(onPressed: _controller.addRecord, icon: Icon(Icons.add))
          ],
        ),
        body: record.isEmpty
            ? Center(
                child: Container(
                  child: Text('Please add some records'),
                ),
              )
            : ListView(
                physics: BouncingScrollPhysics(),
                children: record
                    .map((record) => RecordListTile(record: record))
                    .toList())));
  }
}
