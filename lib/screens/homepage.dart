import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:machine_test/models/models.dart';
import 'package:machine_test/models/users.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  UserDeatailsClass? data;
  @override
  void initState() {
    userData();
    super.initState();
  }

  userData() async {
    data = await getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r)),
        child: SizedBox(
          width: double.infinity.w,
          height: 72.h,
          child: NavigationBar(
              backgroundColor: const Color(0xff1E2E5D),
              indicatorColor: Colors.transparent,
              destinations: [
                NavigationDestination(
                    icon: Image.asset(
                      "assets/images/home.png",
                      height: 21.h,
                      width: 21.w,
                    ),
                    label: ''),
                NavigationDestination(
                    icon: Image.asset(
                      "assets/images/search.png",
                      height: 19.h,
                      width: 19.w,
                    ),
                    label: ''),
                NavigationDestination(
                    icon: Image.asset(
                      "assets/images/camera.png",
                      height: 22.h,
                      width: 25.w,
                    ),
                    label: ''),
                NavigationDestination(
                    icon: Image.asset(
                      "assets/images/play.png",
                      height: 22.h,
                      width: 25.w,
                    ),
                    label: ''),
                NavigationDestination(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 27.h),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/photo.png",
                            height: 22.h,
                            width: 25.w,
                          ),
                          Icon(
                            Icons.minimize,
                            color: Colors.white,
                            size: 12.sp,
                          )
                        ],
                      ),
                    ),
                    label: ''),
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 6.w, right: 5.w),
          child: Column(
            children: [
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w, right: 19.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/leading.png',
                          height: 36.h,
                          width: 36.w,
                        ),
                        Image.asset(
                          'assets/images/actions.png',
                          height: 36,
                          width: 36,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    Row(
                      children: [
                        if (data != null)
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              data!.media!.first.profilePic.toString(),
                              height: 86.h,
                              width: 86.w,
                            ),
                          ),
                        Gap(31.w),
                        const followdetails(
                          num: "50",
                          text: "Post",
                        ),
                        Gap(31.w),
                        const followdetails(num: "564", text: "Followers"),
                        Gap(31.w),
                        const followdetails(num: "564", text: "Following")
                      ],
                    ),
                    Gap(7.h),
                    Text(
                      "Rayan Moon",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: const Color(0xff3A4B7A)),
                    ),
                    Text(
                      "Photographer",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          color: const Color(0xff3A4B7A)),
                    ),
                    Text(
                      "🌟 You are beautiful, and \nI'm here to capture it! 🌟",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Poppins",
                          color: const Color(0xff3A4B7A)),
                    ),
                    Gap(9.h),
                    Row(
                      children: [
                        editprofile(
                          text: "Edit Profile",
                          container: const Color(
                            0xff184AC0,
                          ),
                          width: 140.w,
                        ),
                        Gap(7.w),
                        editprofile(
                          text: "wallet",
                          container: const Color(0xff28426B),
                          width: 140.w,
                        ),
                        Gap(7.w),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: const Color(0xff5B7ED2)),
                          width: 43.w,
                          height: 40.h,
                          child: Center(
                              child: Image.asset(
                            "assets/images/call.png",
                            height: 14.h,
                            width: 14.w,
                          )),
                        ),
                      ],
                    ),
                    Gap(20.h),
                    const Divider(
                      color: Color.fromARGB(255, 231, 230, 230),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 77.w, right: 77.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Photos",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                color: const Color(0xff3A4B7A)),
                          ),
                          SizedBox(
                            width: 1.w,
                            height: 24.h,
                            child: const VerticalDivider(
                                color: Color.fromARGB(255, 231, 230, 230)),
                          ),
                          Text(
                            "Vedios",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                color: const Color(0xff3A4B7A)),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 236, 235, 235),
                    ),
                  ],
                ),
              ),
              data == null
                  ? const CircularProgressIndicator()
                  : GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: data!.media!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15),
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(clipBehavior: Clip.hardEdge,
                              height: 160.h,width: 122.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(11.r)),
                              child: Image.network(
                                data!.media![index].filePath.toString(),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(top: 120.h,left: 24.w,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/like.png",
                                        height: 16.h,
                                        width: 16.w,
                                      ),
                                      Text(
                                        data!.media![index].likeCount.toString(),
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Poppins",
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),Gap(21.w),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/comment.png",
                                        height: 16.h,
                                        width: 16.w,
                                      ),
                                      Text(
                                        data!.media![index].commentCount
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Poppins",
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class editprofile extends StatelessWidget {
  const editprofile({
    super.key,
    required this.text,
    required this.container,
    required this.width,
  });
  final String text;
  final Color container;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r), color: container),
      height: 40.h,
      width: width,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
              color: Colors.white),
        ),
      ),
    );
  }
}

class followdetails extends StatelessWidget {
  const followdetails({
    super.key,
    required this.num,
    required this.text,
  });
  final String num;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          num,
          style: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Poppins",
              color: const Color(0xff1E3167)),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
              color: const Color(0xff2C5390)),
        ),
      ],
    );
  }
}
