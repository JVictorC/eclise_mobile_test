import 'package:flutter/material.dart';

class HeaderOptionWidget extends StatelessWidget {
  const HeaderOptionWidget({
    super.key,
    required this.title,
    required this.isSelected,
    this.borderRadius,
    this.onTap,
  });

  final String title;
  final bool isSelected;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Colors.grey.withOpacity(.5),
            borderRadius: borderRadius,
          ),
          child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: isSelected ? Colors.white : Colors.black,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
