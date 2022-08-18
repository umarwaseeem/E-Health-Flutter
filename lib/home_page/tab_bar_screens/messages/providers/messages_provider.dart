import 'package:flutter/material.dart';

import '../widgets/message_tile.dart';

class MessagesProvider extends ChangeNotifier {
  List<MessageTile> messages = [
    MessageTile(
      image: "assets/images/doctor.png",
      receiverName: "Dr Rebbeka",
      recentMessage: "You will get instant service from Dr Rebbeka",
      recentMessageTime: "12:00",
      pinned: false,
    ),
    MessageTile(
      image: "assets/images/doctor2.png",
      receiverName: "Dr Rebbeka",
      recentMessage: "You will get instant service from Dr Rebbeka",
      recentMessageTime: "12:00",
      pinned: false,
    ),
    MessageTile(
      image: "assets/images/doctor.png",
      receiverName: "Dr Rebbeka",
      recentMessage: "You will get instant service from Dr Rebbeka",
      recentMessageTime: "12:00",
      pinned: false,
    ),
    MessageTile(
      image: "assets/images/doctor.png",
      receiverName: "Dr Rebbeka",
      recentMessage: "You will get instant service from Dr Rebbeka",
      recentMessageTime: "12:00",
      pinned: false,
    ),
    MessageTile(
      image: "assets/images/doctor2.png",
      receiverName: "Dr Rebbeka",
      recentMessage: "You will get instant service from Dr Rebbeka",
      recentMessageTime: "12:00",
      pinned: false,
    ),
    MessageTile(
      image: "assets/images/doctor.png",
      receiverName: "Dr Rebbeka",
      recentMessage: "You will get instant service from Dr Rebbeka",
      recentMessageTime: "12:00",
      pinned: true,
    ),
    MessageTile(
      image: "assets/images/doctor2.png",
      receiverName: "Dr Rebbeka",
      recentMessage: "You will get instant service from Dr Rebbeka",
      recentMessageTime: "12:00",
      pinned: true,
    ),
    MessageTile(
      image: "assets/images/doctor.png",
      receiverName: "Dr Rebbeka",
      recentMessage: "You will get instant service from Dr Rebbeka",
      recentMessageTime: "12:00",
      pinned: false,
    ),
  ];

  void sortByPinned() {
    for (var element in messages) {
      if (element.pinned) {
        messages.remove(element);
        messages.insert(0, element);
      }
    }
  }
}
