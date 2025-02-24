import 'package:flutter/material.dart';
import 'package:srs/core/resources/colors.dart';
int currentIndex = 0;

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              CloseButton(),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                      'ترتيب حسب',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.grey3,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 26),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 0;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentIndex == 0
                      ? const Icon(Icons.check)
                      : const SizedBox(),
                  Text(
                    'التاريخ (من الأحدث إلى الأقدم)',
                    style: TextStyle(
                        fontWeight: currentIndex == 0
                            ? FontWeight.w600
                            : FontWeight.w500,
                        fontSize: 14,
                        color:
                            currentIndex == 0 ? Colors.black : AppColors.grey3),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentIndex == 1
                      ? const Icon(Icons.check)
                      : const SizedBox(),
                  Text(
                    'درجة الخطورة (من الأعلى إلى الأدنى)',
                    style: TextStyle(
                        fontWeight: currentIndex == 1
                            ? FontWeight.w600
                            : FontWeight.w500,
                        fontSize: 14,
                        color:
                            currentIndex == 1 ? Colors.black : AppColors.grey3),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 2;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentIndex == 2
                      ? const Icon(Icons.check)
                      : const SizedBox(),
                  Text(
                    'نوع المخالفة (تصاعدي - أبجديًا) ',
                    style: TextStyle(
                        fontWeight: currentIndex == 2
                            ? FontWeight.w600
                            : FontWeight.w500,
                        fontSize: 14,
                        color:
                            currentIndex == 2 ? Colors.black : AppColors.grey3),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 3;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentIndex == 3
                      ? const Icon(Icons.check)
                      : const SizedBox(),
                  Text(
                    'السرية (الخاصة أولًا) ',
                    style: TextStyle(
                        fontWeight: currentIndex == 3
                            ? FontWeight.w600
                            : FontWeight.w500,
                        fontSize: 14,
                        color:
                            currentIndex == 3 ? Colors.black : AppColors.grey3),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
