import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/tables/presentation/manager/tables/tables_cubit.dart';
import 'data_cell_image.dart';
import 'data_cell_text.dart';

List<DataRow> dataTablesBody(BuildContext context) {
    var tablesBody = context.read<TablesCubit>().tablesBody;
    return List.generate(tablesBody.length, (index) {
      return DataRow(cells: [
        dataCellText(context, tablesBody[index].title),
        dateCellImage(tablesBody[index]),
        dataCellText(context, tablesBody[index].dateTime),
        dataCellText(context, tablesBody[index].persentage!),
      ]);
    });
  }