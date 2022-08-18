import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30),
      child: InkWell(
        radius: 20,
        onTap: () {},
        child: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile.png"),
        ),
      ),
    );
  }
}
