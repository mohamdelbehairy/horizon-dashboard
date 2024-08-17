import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:horizon/core/models/background_model.dart';
import 'package:horizon/core/widgets/custom_background.dart';
import 'package:horizon/core/widgets/custom_background_header.dart';
import 'package:horizon/features/tables/presentation/manager/tables/tables_cubit.dart';
import 'package:horizon/features/tables/presentation/views/widgets/custom_table_widget.dart';

import '../../../../../core/models/background_header_model.dart';

class ComplexComplexTable extends StatelessWidget {
  const ComplexComplexTable({super.key});

  @override
  Widget build(BuildContext context) {
    var table = context.read<TablesCubit>();
    return CustomBackground(
      backgroundModel: BackgroundModel(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBackgroundHeader(
              backgroundHeaderModel: BackgroundHeaderModel(
                  title: 'Complex Table',
                  child: const Icon(FontAwesomeIcons.ellipsis,
                      color: Color(0xff4318FF)))),
          const SizedBox(height: 24),
          CustomTableWidget(tablesBody: table.tableComplexTable),
        ],
      )),
    );
  }
}
