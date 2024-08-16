import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/core/utils/assets.dart';

import '../../../data/models/tables_model.dart';

part 'tables_state.dart';

class TablesCubit extends Cubit<TablesState> {
  TablesCubit() : super(TablesInitial());

  List<String> tablesTitle = [
    Assets.imagesTablesTitle,
    Assets.imagesTablesTitle,
    Assets.imagesTablesTitle,
    Assets.imagesTablesTitle,
  ];

  List<TablesBodyModel> tablesBody = [
    TablesBodyModel(
        title: 'Marketplace',
        image1: Assets.imagesApple,
        image2: Assets.imagesAndroid,
        image3: Assets.imagesWindows,
        dateTime: '12.Jan.2021',
        persentage: '75%'),
    TablesBodyModel(
        title: 'Venus DB PRO',
        image1: Assets.imagesApple,
        dateTime: '21.Feb.2021',
        persentage: '35.4%'),
    TablesBodyModel(
        title: 'Venus DS',
        image1: Assets.imagesApple,
        image2: Assets.imagesAndroid,
        image3: Assets.imagesWindows,
        dateTime: '13.Mar.2021',
        persentage: '25%'),
    TablesBodyModel(
        title: 'Venus 3D Asset',
        image1: Assets.imagesApple,
        image2: Assets.imagesWindows,
        dateTime: '24.Jan.2021',
        persentage: '100%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '21.Sep.2021',
        persentage: '12.2%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '21.Sep.2021',
        persentage: '12.2%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '21.Sep.2021',
        persentage: '12.2%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '21.Sep.2021',
        persentage: '12.2%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '21.Sep.2021',
        persentage: '12.2%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '21.Sep.2021',
        persentage: '12.2%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '21.Sep.2021',
        persentage: '12.2%'),
  ];
}
