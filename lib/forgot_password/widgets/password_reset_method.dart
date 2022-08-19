import 'package:aderis_health/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../util/text_styles.dart';
import '../providers/forgot_password_provider.dart';

class PasswordResetMethod extends StatefulWidget {
  PasswordResetMethod({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.selected,
  }) : super(key: key);

  final String image;
  final String title;
  final String subtitle;
  bool selected;

  @override
  State<PasswordResetMethod> createState() => _PasswordResetMethodState();
}

class _PasswordResetMethodState extends State<PasswordResetMethod> {
  @override
  Widget build(BuildContext context) {
    final forgotPasswordData =
        Provider.of<ForgotPasswordProvider>(context, listen: true);
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, w) => Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 10,
        child: Container(
          alignment: Alignment.center,
          height: 130.h,
          width: 370.w,
          decoration: BoxDecoration(
            color: widget.selected ? greyishColor : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
          ),
          child: InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            onTap: () {
              forgotPasswordData.selectMethod(
                forgotPasswordData.passwordResetMethods.indexOf(widget),
              );
            },
            // splashColor: const Color.fromARGB(248, 157, 162, 197),
            child: ListTile(
              contentPadding: const EdgeInsets.all(20),
              leading: CircleAvatar(
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                widget.title,
                style: titleStyle,
              ),
              subtitle: Text(widget.subtitle, style: subtitleStyle),
            ),
          ),
        ),
      ),
    );
  }
}
