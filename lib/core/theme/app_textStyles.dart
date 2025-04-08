import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  // Title for sections like "Job Listings", "Saved Jobs"
  static TextStyle sectionTitle = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  );

  // Job Title (e.g. Software Engineer)
  static const TextStyle jobTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  // Company Name (e.g. Tech Corp)
  static const TextStyle companyName = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.grey, // will auto-adjust in dark mode if themed properly
  );

  // Location (e.g. New York, NY)
  static const TextStyle location = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Colors.grey, // use accent color for emphasis
  );

  // Description Body
  static const TextStyle jobDescription = TextStyle(
    fontSize: 14,
    height: 1.6,
    color: Colors.black87,
  );

  // Button Text (e.g. Save Job)
  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4,
    color: Colors.white,
  );

  // Toggle / Labels (e.g. Dark Mode switch label)
  static const TextStyle label = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );
}
