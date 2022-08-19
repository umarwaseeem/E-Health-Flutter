import 'package:flutter/material.dart';

import '../chat_screen.dart';

class MessageTile extends StatefulWidget {
  MessageTile(
      {Key? key,
      required this.image,
      required this.pinned,
      required this.receiverName,
      required this.recentMessage,
      required this.recentMessageTime})
      : super(key: key);

  final String image;
  final String receiverName;
  final String recentMessage;
  final String recentMessageTime;
  bool pinned;

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatScreen(),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundColor: Colors.black45,
              radius: 30,
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
            title: Row(
              children: [
                if (widget.pinned)
                  const Icon(
                    Icons.push_pin_sharp,
                    color: Colors.grey,
                  ),
                Text(
                  widget.receiverName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            subtitle: Text(
              widget.recentMessage,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Text(
              widget.recentMessageTime,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
