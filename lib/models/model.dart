import 'package:random_string/random_string.dart';

abstract class Model {
  
  static void test(){

  }

  static String randomStringBetween(int min, int max) {
    return randomString(randomBetween(min, max));
  }

}