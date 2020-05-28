import 'package:CirclesMobile/models/model.dart';

class UserModel extends Model {
  String first, last, username;

  UserModel(this.first, this.last, this.username);

  static UserModel test() {
    return UserModel(
      Model.randomStringBetween(5,10),
      Model.randomStringBetween(5,10),
      Model.randomStringBetween(5,10),
    );
  }

  String toString() {
    return first + " " + last;
  }

}