import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/main.dart';

void main() {
  // test(
  //   'Is Even',
  //   () {
  //     bool result = isEven(12);
  //     expect(result, true);
  //     result = isEven(123);
  //     expect(result, false);
  //   },
  // );

  // test(
  //   'Is Odd',
  //   () {
  //     bool result = isEven(121);
  //     expect(result, true);
  //     result = isEven(18);
  //     expect(result, false);
  //   },
  // );

  group(
    'Is Even Group',
    () {
      test(
        'Is Even',
        () {
          bool result = isEven(12);
          expect(result, true);
          result = isEven(124);
          expect(result, true);
        },
      );

      test(
        'Is Odd',
        () {
          bool result = isEven(121);
          expect(result, false);
          result = isEven(123);
          expect(result, false);
        },
      );
    },
  );
}
