import 'package:flutter/material.dart';

class SmallInfoButton extends StatelessWidget {
  const SmallInfoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: InkWell(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          height: 18,
          width: 18,
          color: const Color.fromRGBO(
            37,
            212,
            130,
            0.3,
          ),
          child: const Text(
            "?",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
