import 'package:aderis_health/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../providers/payment_method_provider.dart';

class PaymentMethodCard extends StatefulWidget {
  PaymentMethodCard({
    Key? key,
    required this.text,
    required this.icon,
    required this.selected,
  }) : super(key: key);

  final String text;
  final IconData icon;
  bool selected;

  @override
  State<PaymentMethodCard> createState() => _PaymentMethodCardState();
}

class _PaymentMethodCardState extends State<PaymentMethodCard> {
  @override
  Widget build(BuildContext context) {
    final paymentMethodProvider = Provider.of<PaymentMethodProvider>(context);
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (context, w) => InkWell(
        onTap: () {
          paymentMethodProvider.selectPaymentMethod(
            paymentMethodProvider.paymentMethods.indexOf(widget),
          );
        },
        child: AnimatedOpacity(
          opacity: widget.selected ? 1.0 : 0.7,
          duration: const Duration(milliseconds: 350),
          child: Material(
            borderRadius: BorderRadius.circular(16.w),
            elevation: widget.selected ? 10 : 0,
            child: Container(
              height: 70.h,
              width: 160.w,
              decoration: BoxDecoration(
                color: widget.selected ? mainColor : Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    color: widget.selected ? Colors.white : Colors.black,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    widget.text,
                    style: TextStyle(
                      color: widget.selected ? Colors.white : Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
