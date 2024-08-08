import 'package:flutter/material.dart';

class CheckTableSelectItem extends StatefulWidget {
  const CheckTableSelectItem({super.key});

  @override
  State<CheckTableSelectItem> createState() => _CheckTableSelectItemState();
}

class _CheckTableSelectItemState extends State<CheckTableSelectItem> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}

class CheckTableUnSelectItem extends StatelessWidget {
  const CheckTableUnSelectItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 18,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(width: 2, color: const Color(0xffA3AED0))),
    );
  }
}
