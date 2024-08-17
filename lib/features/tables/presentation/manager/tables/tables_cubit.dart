import 'package:flutter/material.dart';
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

  List<TablesBodyModel> developmentBody = [
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
        dateTime: '17.Dec.2021',
        persentage: '12.2%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '17.Dec.2021',
        persentage: '12.2%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '17.Dec.2021',
        persentage: '12.2%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '17.Dec.2021',
        persentage: '12.2%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '17.Dec.2021',
        persentage: '12.2%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '17.Dec.2021',
        persentage: '12.2%'),
    TablesBodyModel(
        title: 'Uranus',
        image1: Assets.imagesAndroid,
        image2: Assets.imagesWindows,
        dateTime: '17.Dec.2021',
        persentage: '12.2%'),
  ];

  List<TablesBodyModel> checkBody = [
    TablesBodyModel(
        title: 'Marketplace',
        dateTime: '24.Jan.2021',
        persentage: '17.5%',
        value: '2.458'),
    TablesBodyModel(
        title: 'Venus DB PRO',
        dateTime: '12.Jun.2021',
        persentage: '10.8%',
        value: '1.485'),
    TablesBodyModel(
        title: 'Uranus Kit',
        dateTime: '5.Jan.2021',
        persentage: '21.3%',
        value: '1.024'),
    TablesBodyModel(
        title: 'Venus DS',
        dateTime: '7.Mar.2021',
        persentage: '100%',
        value: '858'),
    TablesBodyModel(
        title: 'Venus 3D Asset',
        dateTime: '17.Dec.2021',
        persentage: '31.5%',
        value: '258'),
    TablesBodyModel(
        title: 'Venus 3D Asset',
        dateTime: '17.Dec.2021',
        persentage: '12.2%',
        value: '258'),
    TablesBodyModel(
        title: 'Venus 3D Asset',
        dateTime: '17.Dec.2021',
        persentage: '12.2%',
        value: '258'),
    TablesBodyModel(
        title: 'Venus 3D Asset',
        dateTime: '17.Dec.2021',
        persentage: '12.2%',
        value: '258'),
    TablesBodyModel(
        title: 'Venus 3D Asset',
        dateTime: '17.Dec.2021',
        persentage: '12.2%',
        value: '258'),
    TablesBodyModel(
        title: 'Venus 3D Asset',
        dateTime: '17.Dec.2021',
        persentage: '12.2%',
        value: '258'),
    TablesBodyModel(
        title: 'Venus 3D Asset',
        dateTime: '17.Dec.2021',
        persentage: '12.2%',
        value: '258'),
  ];

  List<TablesBodyModel> columnBody = [
    TablesBodyModel(
        title: 'Marketplace',
        dateTime: '24.Jan.2021',
        persentage: '17.5%',
        value: '2.458'),
    TablesBodyModel(
        title: 'Venus PRO',
        dateTime: '12.Jun.2021',
        persentage: '10.8%',
        value: '1.485'),
    TablesBodyModel(
        title: 'Uranus Kit',
        dateTime: '5.Jan.2021',
        persentage: '21.3%',
        value: '1.024'),
    TablesBodyModel(
        title: 'Venus DS',
        dateTime: '7.Mar.2021',
        persentage: '31.5%',
        value: '858'),
    TablesBodyModel(
        title: 'Venus 3D Asset',
        dateTime: '17.Dec.2021',
        persentage: '12.2%',
        value: '258'),
  ];

  List<TablesBodyModel> tableComplexTable = [
    TablesBodyModel(
        title: 'Marketplace',
        dateTime: '24.Jan.2021',
        iconStatus: Icons.done,
        textStatus: 'Approved',
        colorStatus: const Color(0xff05CD99),
        complexProgress: Assets.imagesMarketplace),
    TablesBodyModel(
        title: 'Venus Dashboard Builder',
        dateTime: '30.Dec.2021',
        iconStatus: Icons.close,
        textStatus: 'Disable',
        colorStatus: const Color(0xffEE5D50),
        complexProgress: Assets.imagesVenusdashboardbuilder),
    TablesBodyModel(
        title: 'Venus Design System',
        dateTime: '20.May.2021',
        iconStatus: Icons.priority_high,
        textStatus: 'Error',
        colorStatus: const Color(0xffFFCE20),
        complexProgress: Assets.imagesVenusdesignsystem),
    TablesBodyModel(
        title: 'Uranus',
        dateTime: '12.Jul.2021',
        iconStatus: Icons.done,
        textStatus: 'Approved',
        colorStatus: const Color(0xff05CD99),
        complexProgress: Assets.imagesUranus),
    TablesBodyModel(
        title: 'Venus Design System',
        dateTime: '20.May.2021',
        iconStatus: Icons.priority_high,
        textStatus: 'Error',
        colorStatus: const Color(0xffFFCE20),
        complexProgress: Assets.imagesVenusdesignsystem),
    TablesBodyModel(
        title: 'Uranus',
        dateTime: '12.Jul.2021',
        iconStatus: Icons.done,
        textStatus: 'Approved',
        colorStatus: const Color(0xff05CD99),
        complexProgress: Assets.imagesUranus),
  ];
}
