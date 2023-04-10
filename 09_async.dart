import 'dart:io';
import '04_classes.dart';

const oneSecond = Duration(seconds: 1);

// Future：在后面某个时间，根据函数内容返回操作结果(Future 对象)
// async：标记函数为异步函数，故可在函数内使用await
Future<void> printWithDelay(String message) async {
  // 阻塞式
  await Future.delayed(oneSecond);
  print(message);
}

Future<void> printWithDelayTwo(String message) {
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });
}

Future<void> creatDescriptions(Iterable<String> objects) async {
  for (final object in objects) {
    try {
      var file = File('$object.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print('File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } on IOException catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}

Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  for (final object in objects) {
    await Future.delayed(oneSecond);
    yield '${craft.name} files by $object';
  }
}

void main() {
  String message = '你好！';
  Iterable<String> objects = {'hello'};
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));

  printWithDelay(message);
  printWithDelayTwo(message);
  creatDescriptions(objects);
  report(voyager, objects);
}
