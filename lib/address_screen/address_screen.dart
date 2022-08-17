import 'package:aderis_health/login/widgets/checkbox.dart';
import 'package:aderis_health/util/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../prefered_pharmacy_screen/preffered_pharmacy_screen.dart';
import '../util/button1.dart';
import '../util/colors.dart';
import '../util/text_styles.dart';
import 'providers/address_card_provider.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  static const routeName = "address_screen";

  @override
  Widget build(BuildContext context) {
    final addressCardProviderData = Provider.of<AddressCardProvider>(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ScreenUtilInit(
            designSize: Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height,
            ),
            builder: (context, widget) => Container(
              margin: EdgeInsets.only(left: 20.w, right: 30.w, top: 40.h),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios_new),
                        ),
                        SizedBox(width: 20.w),
                        Text(
                          "Home Address",
                          style: textTheme.headline1,
                        ),
                      ],
                    ),
                    SizedBox(height: 70.h),
                    SizedBox(
                      height: 50.h,
                      width: 320.w,
                      child:
                          const InputField(hint: "Address", label: "Address"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.w),
                      child: const CheckBoxWidget(text: "Locate Me"),
                    ),
                    SizedBox(height: 30.h),
                    addressCardProviderData.addressItems[0],
                    SizedBox(height: 30.h),
                    addressCardProviderData.addressItems[1],
                    SizedBox(height: 30.h),
                    addressCardProviderData.addressItems[2],
                    SizedBox(height: 200.h),
                    Container(
                      height: 52.h,
                      width: 320.w,
                      decoration: BoxDecoration(
                        // apply shadow to the container
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 10,
                            // shadow on botom and right
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Button1(
                        textStyle: textTheme.button!,
                        buttonColor: button2Color,
                        text: "Save And Continue",
                        borderRadius: 30,
                        onPress: () {
                          Navigator.pushNamed(
                              context, PrefferedPharmacyScreen.routeName);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
