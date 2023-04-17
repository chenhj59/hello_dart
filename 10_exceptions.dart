import 'dart:io';

Future<void> describeFlybyObjects(List<String> flybyObjects) async {
  try {
    for (final object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
  }
}

void main() {
  var astronauts = 0;
  List<String> flybyObjects = ['hello'];

  describeFlybyObjects(flybyObjects);
  // 抛出异常，导致describeFlybyObjects输出被终止
  if (astronauts == 0) {
    throw StateError('No astronauts.'); 
  }
}
