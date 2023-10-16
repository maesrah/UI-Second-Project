import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uisecondproject/theme.dart';

class ChoiceWidget extends StatefulWidget {
  const ChoiceWidget({
    super.key,
    required this.choicesList,
  });

  final List<String> choicesList;

  @override
  State<ChoiceWidget> createState() => _ChoiceWidgetState();
}

class _ChoiceWidgetState extends State<ChoiceWidget> {
  String? selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = widget.choicesList.first;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: kScreenPadding),
      child: Row(
        children: widget.choicesList.map((choice) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ChoiceChip(
              label: Row(
                children: [
                  const Icon(CupertinoIcons.color_filter),
                  const SizedBox(width: 2),
                  Text(choice),
                ],
              ),
              selected: choice == selectedFilter,
              selectedColor: Theme.of(context).primaryColor,
              onSelected: (isSelected) {
                setState(() {
                  if (isSelected) {
                    selectedFilter = choice;
                  }
                });
              },
              shape: const StadiumBorder(
                side: BorderSide(color: Colors.grey),
              ),
              backgroundColor: Colors.transparent,
              // onPressed: () {},
              // icon: const Icon(CupertinoIcons.color_filter),
              // label: Text(choice),
              // style: OutlinedButton.styleFrom(
              //   shape: StadiumBorder(),
              //   visualDensity: VisualDensity.compact,
              //   // padding: EdgeInsets.zero,
              // ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
