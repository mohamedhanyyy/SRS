import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:srs/shared/widgets/custom_divider.dart';

import '../../../../core/resources/colors.dart';

class ViolationDetailsScreen extends StatefulWidget {
  const ViolationDetailsScreen({super.key});

  @override
  State<ViolationDetailsScreen> createState() => _ViolationDetailsScreenState();
}

class _ViolationDetailsScreenState extends State<ViolationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('تفاصيل المخالفة'),
        ),
        body: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),

                 child: Row(
                  children: [
                    const Text(
                      "كود المخالفة :",
                      style: TextStyle(
                        color: Color(0xff4D5168),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      'L12443.....532',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/copy.png'))
                  ],
                ),
              ),
              const CustomDivider(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 6,horizontal: 16),
                child: Text(
                  'حالة المخالفة',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/search.png'),
                title: const Text(
                  'مراجعة المخالفة',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                ),
                subtitle: const Text(
                  'اكتمل',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.green,
                      fontSize: 10),
                ),
                trailing: const Text(
                  '15 فبراير 2025  3:36  صباحا',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Color(0xff6B6F8C)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: ListTile(
                  leading: Image.asset('assets/images/date2.png'),
                  title: const Text(
                    ' اتخاذ اجراء للمخالفة',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                  subtitle: const Text(
                    'قيد التنفيذ',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.amber,
                        fontSize: 10),
                  ),
                ),
              ),
              const CustomDivider(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),

                 child: Text(
                  'بيانات الطالب و المخالفة',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(
                        'assets/icons/group.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'اسم الطالب',
                      style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                subtitle: const Text(
                  'احمد ايمن لبيب',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(
                        'assets/icons/person2.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'مسجل المخالفة',
                      style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                subtitle: const Text(
                  'المقدم / عبدالله الماضي',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(
                        'assets/icons/doc.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'المخالفة',
                      style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                subtitle: const Text(
                  ' التساهل بالوظيفة أو الواجب',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(
                        'assets/icons/doc2.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'حالة المخالفة',
                      style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                subtitle: const Text(
                  'لم يتم البث فيها',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(
                        'assets/icons/doc2.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'نوع المخالفة',
                      style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                subtitle: const Text(
                  'مخالفة داخلية',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(
                        'assets/icons/date.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'تاريخ المخالفة',
                      style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                subtitle: const Text(
                  '12 فبراير 2024',
                  style: TextStyle(
                     fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(
                        'assets/icons/doc2.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'العقوبات',
                      style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                subtitle: const Text(
                  '1- الحجز الكلي',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    SvgPicture.asset(
                        'assets/icons/doc.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'ملاحظات',
                      style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                subtitle: const Text(
                  '( فارغ )',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: const Color(0xff9FE870),
          elevation: 0,
          child: const Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
