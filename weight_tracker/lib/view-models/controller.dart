import 'package:get/get.dart';

import '../models/record.dart';

class Controller extends GetxController {
  var record = <Record>[
    /* Record(dateTime: DateTime.now(), weight: 80, note: 'AAA'),
    Record(dateTime: DateTime.now(), weight: 81, note: 'BBB'),
    Record(dateTime: DateTime.now(), weight: 82, note: 'CCC'),
    Record(dateTime: DateTime.now(), weight: 83, note: 'DDD'),
  */
  ].obs;

  void addRecord() {
    record.add(Record(dateTime: DateTime.now(), weight: 80, note: 'xxxx'));
    print(record.length);
  }

  void deleteRecord(Record record) {
    record.remove(record);
  }
}
