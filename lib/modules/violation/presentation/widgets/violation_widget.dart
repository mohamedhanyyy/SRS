import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:srs/modules/violation/presentation/screens/violation_details_screen.dart';
import 'package:srs/services/navigation/navigation.dart';

import '../../../../core/resources/colors.dart';

class ViolationWidget extends StatelessWidget {
  const ViolationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        AppNavigation.navigate(const ViolationDetailsScreen());
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                  AssetImage('assets/images/ahmed.png'),
                ),
                SizedBox(
                  width: 8,
                ),
                Text('احمد ايمن لبيب',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,

                ),),
                Spacer(),
                Text('# 183483488',style: TextStyle(
                    color: AppColors.grey2,
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: ListTile(
                    title: Row(
                      children: [
                        SvgPicture.asset('assets/icons/doc.svg'),
                        const SizedBox(width: 8),
                        const Text('المخالفة',
                            style: TextStyle(
                                color: AppColors.grey2,
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    subtitle: const Text(
                      'التساهل بالوظيفة أو الواجب',
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Row(
                      children: [
                        SvgPicture.asset(
                            'assets/icons/group.svg'),
                        const SizedBox(width: 8),
                        const Text(
                          'السرية',
                          style: TextStyle(
                              color: AppColors.grey2,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    subtitle: const Text(
                      ' سرية الأمير سلطان',
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: ListTile(
                    title: Row(
                      children: [
                        SvgPicture.asset('assets/icons/date.svg'),
                        const SizedBox(width: 8),
                        const Text('تاريخ المخالفة',
                            style: TextStyle(
                                color: AppColors.grey2,
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    subtitle: const Text(
                      '12 فبراير 2024',
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Flexible(
                  child: ListTile(
                    title: Row(
                      children: [
                        SvgPicture.asset('assets/icons/doc2.svg'),
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
                          color: AppColors.blackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
