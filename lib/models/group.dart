import 'package:CirclesMobile/models/message.dart';
import 'package:CirclesMobile/models/model.dart';
import 'package:CirclesMobile/models/user.dart';

class GroupModel extends Model {
  String name;
  List<UserModel> users;
  List<MessageModel> messages;

  GroupModel(this.name, this.users, this.messages);

  static GroupModel test([int numUsers = 10, int numMessages = 10]) {
    GroupModel group = GroupModel(
      Model.randomStringBetween(5, 10),
      null,
      null
    );

    List<UserModel> users = [];
    for (int i = 0; i < numUsers; i++) {
      users.add(UserModel.test());
    }

    List<MessageModel> messages = [];
    for (int i = 0; i < numMessages; i++) {
      messages.add(MessageModel.test(group, users[i % numUsers]));
    }

    group.users = users;
    group.messages = messages;

    return group; 
  }


}