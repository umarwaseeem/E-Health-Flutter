import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../util/colors.dart';
import '../providers/id_verification_provider.dart';

class IdTypeWidget extends StatefulWidget {
  IdTypeWidget({
    Key? key,
    required this.selected,
    required this.text,
  }) : super(key: key);

  final String text;
  bool selected;

  @override
  State<IdTypeWidget> createState() => _IdTypeWidgetState();
}

class _IdTypeWidgetState extends State<IdTypeWidget> {
  @override
  Widget build(BuildContext context) {
    final idVerificationProviderData =
        Provider.of<IdVerificationProvider>(context);
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => InkWell(
        onTap: () {
          idVerificationProviderData.selectIdType(
            idVerificationProviderData.idTypes.indexOf(widget),
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: 85.h,
          width: 85.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.selected ? mainColor : Colors.grey,
              width: widget.selected ? 3.w : 1.w,
            ),
            shape: BoxShape.circle,
          ),
          child: Text(
            widget.text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
