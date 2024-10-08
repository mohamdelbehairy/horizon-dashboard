import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/features/tables/presentation/manager/tables/tables_cubit.dart';

import 'table_item.dart';

class CustomTableWidget extends StatelessWidget {
  const CustomTableWidget(
      {super.key, required this.tablesBody, required this.tablesTitle});
  final List<dynamic> tablesTitle, tablesBody;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TablesCubit, TablesState>(
      builder: (context, state) {
        return Theme(
          data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
              dividerTheme: const DividerThemeData(color: Colors.transparent)),
          child: TableItem(tablesTitle: tablesTitle, tablesBody: tablesBody),
        );
      },
    );
  }
}
