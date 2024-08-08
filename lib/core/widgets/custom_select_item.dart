import 'package:flutter/material.dart';
import 'package:horizon/core/utils/styles.dart';

class CustomSelectItem extends StatefulWidget {
  const CustomSelectItem({super.key, this.text});
  final String? text;

  @override
  State<CustomSelectItem> createState() => _CustomSelectItemState();
}

class _CustomSelectItemState extends State<CustomSelectItem> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isActive = !isActive;
            });
          },
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                color: isActive ? const Color(0xff4318FF) : Colors.transparent,
                border: isActive
                    ? null
                    : Border.all(width: 2, color: const Color(0xffA3AED0))),
            child: isActive
                ? const Center(
                    child: Icon(Icons.done, color: Colors.white, size: 18))
                : null,
          ),
        ),
        if (widget.text != null)
          SizedBox(width: MediaQuery.sizeOf(context).width > 1360 ? 14 : 1),
        if (widget.text != null)
          Flexible(
            child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(widget.text!,
                    style: isActive
                        ? Styles.bold16(context)
                        : Styles.medium14(context))),
          )
      ],
    );
  }
}
