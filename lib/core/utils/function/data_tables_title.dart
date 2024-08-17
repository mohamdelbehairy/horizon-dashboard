import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/core/models/svg_model.dart';
import 'package:horizon/core/utils/assets.dart';

import '../../../features/tables/presentation/manager/tables/tables_cubit.dart';
import '../../widgets/custom_svg_picture.dart';

List<DataColumn> dataTablesTitle(BuildContext context) {
  var tablesTitle = context.read<TablesCubit>().tablesTitle;
  return List.generate(tablesTitle.length, (index) {
    return DataColumn(
        label: CustomSvgPicture(
            svg: SvgModel(
                image: Assets.imagesTablesTitle,
                hight: MediaQuery.sizeOf(context).width < 800 ? 40 : null)));
  });
}
