import 'package:aderis_health/add_payment_method/providers/payment_method_provider.dart';
import 'package:aderis_health/add_payment_method/widgets/small_info_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../util/button2.dart';
import '../util/input_field.dart';
import '../util/text_styles.dart';

class AddPaymentMethodScreen extends StatelessWidget {
  const AddPaymentMethodScreen({Key? key}) : super(key: key);

  static const routeName = "/add_payment_method_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ScreenUtilInit(
            designSize: Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height,
            ),
            builder: (context, widget) => Container(
              margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 40.h),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(15.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios_new),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Add Payment\nMethod",
                            style: textTheme.headline1,
                          ),
                        ],
                      ),
                      SizedBox(height: 50.h),
                      Consumer<PaymentMethodProvider>(
                        builder: (context, data, child) => Row(
                          children: [
                            data.paymentMethods[0],
                            data.paymentMethods[1],
                          ],
                        ),
                      ),
                      SizedBox(height: 50.h),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Card Number",
                          style: TextStyle(
                            fontFamily: "Helvetica Now Display",
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 5.h),
                      SizedBox(
                        height: 50.h,
                        width: 320.w,
                        child: InputField(
                          suffixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                    "assets/images/master-card.png"),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.credit_card),
                              )
                            ],
                          ),
                          hint: "5261 4141 0151 8472",
                          label: "",
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "CardHolder Name",
                          style: TextStyle(
                            fontFamily: "Helvetica Now Display",
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 5.h),
                      SizedBox(
                        height: 50.h,
                        width: 320.w,
                        child: const InputField(
                          hint: "Christie Doe",
                          label: "",
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Expiry Date",
                                style: TextStyle(
                                  fontFamily: "Helvetica Now Display",
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              SizedBox(
                                height: 56.h,
                                width: 150.w,
                                child: const InputField(
                                  hint: "MM/YY",
                                  label: "",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "CVV / CVC",
                                    style: TextStyle(
                                      fontFamily: "Helvetica Now Display",
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  const SmallInfoButton()
                                ],
                              ),
                              SizedBox(height: 5.h),
                              SizedBox(
                                height: 56.h,
                                width: 150.w,
                                child: const InputField(
                                  hint: "MM/YY",
                                  label: "",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      const Text(
                        "We will send you details to your email after the successfull payment",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 50.h),
                      const Button2(text: "Skip And Continue"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
