import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/colors.dart';
import '../widgets/instant_appointment_card.dart';
import '../widgets/list_of_slider_items.dart';
import '../widgets/main_heading.dart';
import '../widgets/search_bar.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenUtilInit(
        designSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height,
        ),
        builder: (context, w) => Center(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              const SearchBar(),
              SizedBox(height: 10.h),
              const MainHeading(),
              Container(
                margin: EdgeInsets.only(left: 20.w),
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(

                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: mainColor,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    tabs: const [
                      Tab(
                        text: 'Psychologist',
                      ),
                      Tab(
                        text: 'Cardiologist',
                      ),
                      Tab(
                        text: 'Gastriologist',
                      ),
                      Tab(
                        text: 'Dermatologist',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              CarouselSlider(
                items: [
                  ...slidersItems,
                ],
                options: CarouselOptions(
                  viewportFraction: 0.65,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  height: 300.h,
                  padEnds: false,
                  disableCenter: true,
                ),
              ),
              SizedBox(height: 20.h),
              const InstantAppointmentCard(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
