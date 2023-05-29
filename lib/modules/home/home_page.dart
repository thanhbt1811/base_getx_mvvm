import 'package:base_code/common/widgets/base_button.dart';
import 'package:base_code/common/widgets/base_scaffold.dart';
import 'package:base_code/modules/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeViewModel> {
  const HomePage({Key? key});
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Column(
        children: [
          Center(
            child: BaseButton(
              title: 'Get',
              onPressed: controller.onGet,
            ),
          ),
          Obx(
            () => Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    final book = controller.books[index];
                    return InkWell(
                        onTap:(){
                          controller.onTapBook(book);
                        },child: Text(book.name));
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 1.h,
                    );
                  },
                  itemCount: controller.books.length),
            ),
          ),
          Obx((){
            if (controller.book.value.id != -1){
              return Text('''
              id : ${controller.book.value.id},
              name: ${controller.book.value.name}
              ''');
            }else {
              return SizedBox();
            }
          })
        ],
      ),
    );
  }
}
