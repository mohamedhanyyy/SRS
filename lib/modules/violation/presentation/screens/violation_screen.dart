import 'package:flutter/material.dart';
import 'package:srs/modules/violation/presentation/widgets/violation_widget.dart';
import 'package:srs/shared/widgets/custom_text_field.dart';

import '../widgets/filter_widget.dart';

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
                  GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return BottomSheet(
                                  onClosing: () {},
                                  builder: (context) => const FilterWidget());
                            });
                      },
                      child: Image.asset('assets/images/filter.png'))
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
                  itemBuilder: (context, index) => const ViolationWidget(),
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
