import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'providers/messages_provider.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenUtilInit(
        designSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height,
        ),
        builder: (context, w) => Center(
          child: Consumer<MessagesProvider>(
            builder: (context, data, child) {
              data.sortByPinned();
              return Column(
                children: [
                  ...data.messages,
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                    child: Center(
                      child: Text(
                        "You have reached the end.",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
