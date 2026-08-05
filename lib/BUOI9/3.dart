void main() {
  try {
    var result = errorTest();
    print(result);
  }
  catch(e) {
    print('Something went wrong');
  }
  finally {
    print('final');
  }
}
Exception errorTest() {
  throw Exception();
}

// import 'package:fpdart/fpdart.dart';

// void main() {
//   final number = parseNumber('invalid');

//   /// unwrap error/success with the fold method
//   number.fold(
//     // same as number.match()
//     (exception) => print(exception),
//     (value) => print(value),
//   );
// }

// Either<FormatException, double> parseNumber(String value) {
//   return Either.tryCatch(
//     () => double.parse(value),
//     (e, _) => e as FormatException,
//   );
// }