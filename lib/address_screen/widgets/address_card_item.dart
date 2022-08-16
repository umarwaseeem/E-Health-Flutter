import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../util/colors.dart';
import '../providers/address_card_provider.dart';

class AddressCardItem extends StatelessWidget {
  AddressCardItem({Key? key, required this.title, required this.selected})
      : super(key: key);

  final String title;
  bool selected;

  @override
  Widget build(BuildContext context) {
    final addressCardProviderData = Provider.of<AddressCardProvider>(context);
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => InkWell(
        onTap: () {
          addressCardProviderData.selectAddressItem(
            addressCardProviderData.addressItems.indexOf(this),
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: 51,
          width: 300.w,
          decoration: BoxDecoration(
            border: Border.all(
              color:
                  selected ? mainColor : const Color.fromRGBO(232, 232, 232, 1),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: const Offset(5, 10.0),
              ),
            ],
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            ),
          ),
        ),
      ),
    );
  }
}
