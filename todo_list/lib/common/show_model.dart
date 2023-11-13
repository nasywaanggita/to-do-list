import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_list/constants/app_style.dart';
import 'package:todo_list/widget/radio_widget.dart';
import 'package:todo_list/widget/textfield_widget.dart';

class AddNewTaskModel extends StatelessWidget {
  const AddNewTaskModel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              'New Task Todo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Divider(
            thickness: 1.2,
            color: Colors.grey.shade200,
          ),
          const Gap(12),
          const Text(
            'Title Task',
            style: AppStyle.headingOne,
          ),
          const Gap(6),
          const TextFieldWidget(maxLine: 1, hintText: 'Add Task Name'),
          const Gap(12),
          const Text('Description', style: AppStyle.headingOne),
          Gap(6),
          const TextFieldWidget(maxLine: 5, hintText: 'Add Descriptions'),
          Gap(12),
          const Text('Category', style: AppStyle.headingOne),
          Row(
            children: [
              Expanded(
                child: RadioWidget(categColor: Colors.green, titleRadio: 'LRN'),
              ),
              Expanded(
                child: RadioWidget(
                    categColor: Colors.blue.shade700, titleRadio: 'WRK'),
              ),
              Expanded(
                child: RadioWidget(
                    categColor: Colors.amberAccent.shade700, titleRadio: 'GEN'),
              ),
            ],
          ),

          //Date time Section

          Row(
            children: [
              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Date', style: AppStyle.headingOne),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(children: const [
                          Icon(CupertinoIcons.calendar),
                          Gap(12),
                          Text('dd/mm/yy'),
                        ]),
                      ),
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
