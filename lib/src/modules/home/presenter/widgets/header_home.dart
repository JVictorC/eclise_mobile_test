import 'package:flutter/material.dart';
import 'package:test_eclipseworks/main.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    super.key,
    required this.viewModel,
  });

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderOptionWidget(
          title: "All",
          isSelected: viewModel.typeFilter == TypeFilterEntity.all,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          onTap: () => viewModel.filterList(TypeFilterEntity.all),
        ),
        HeaderOptionWidget(
          title: "pending",
          isSelected: viewModel.typeFilter == TypeFilterEntity.pending,
          onTap: () => viewModel.filterList(TypeFilterEntity.pending),
        ),
        HeaderOptionWidget(
          title: "done",
          isSelected: viewModel.typeFilter == TypeFilterEntity.done,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          onTap: () => viewModel.filterList(TypeFilterEntity.done),
        ),
      ],
    );
  }
}
