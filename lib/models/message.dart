import 'package:CirclesMobile/models/group.dart';
import 'package:CirclesMobile/models/model.dart';
import 'package:CirclesMobile/models/user.dart';

class MessageModel extends Model {
  GroupModel group;
  UserModel sender;
  String text;
  DateTime datetime;

  MessageModel(this.group, this.sender, this.text, this.datetime);

  static MessageModel test([GroupModel group, UserModel sender]) {
    if (sender == null) {
      sender = UserModel.test();
    }

    return MessageModel(
      group,
      sender,
      Model.randomStringBetween(10, 20),
      DateTime.now()
    );
  }
  
}