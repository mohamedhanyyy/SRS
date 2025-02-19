import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:srs/shared/widgets/custom_text_field.dart';

import '../../../../core/resources/colors.dart';

class ViolationScreen extends StatefulWidget {
  const ViolationScreen({super.key});

  @override
  State<ViolationScreen> createState() => _ViolationScreenState();
}

class _ViolationScreenState extends State<ViolationScreen> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('المخالفات'),
            actions: [Image.asset('assets/images/violation2.png')],
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Flexible(
                      child: CustomTextField(
                    controller: searchController,
                    hintText: 'بحث عن الطالب',
                    prefixIcon: const Icon(Icons.search),
                  )),
                  const SizedBox(width: 14),
                  Image.asset('assets/images/filter.png')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('500 مخالفة'),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Row(
                        children: [
                          Text('حالة المخالفة'),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
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
                    );
                  },
                  itemCount: 5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
