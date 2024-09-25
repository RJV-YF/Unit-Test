import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/main.dart';

void main() {
  test(
    'Is Even',
    () {
      bool result = isEven(12);
      expect(result, true);
      result = isEven(123);
      expect(result, false);
    },
  );
}
