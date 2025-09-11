import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/core/assets_manager/assets_manager.dart';
import 'package:news_app/core/colors_manager/colors_manager.dart';
import 'package:news_app/providers/articale.dart';

class ArticaleItem extends StatelessWidget {
  ArticaleItem({super.key, required this.articale});

  Articale articale;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.symmetric(horizontal: 11.w),
      padding: REdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorsManager.white, width: 1)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
              child: Image.asset(ImageManager.entertainment)),
          SizedBox(height: 10.h),
          Text(
            articale.title,
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: ColorsManager.white,
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                articale.auther,
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorsManager.gray,
                ),
              ),
              Text(
                articale.publishedAt,
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorsManager.gray,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
