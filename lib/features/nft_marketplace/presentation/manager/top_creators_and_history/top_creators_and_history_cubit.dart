import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/core/utils/assets.dart';

import '../../../data/models/history_model.dart';
import '../../../data/models/top_creators_model.dart';

part 'top_creators_and_history_state.dart';

class TopCreatorsAndHistoryCubit extends Cubit<TopCreatorsAndHistoryState> {
  TopCreatorsAndHistoryCubit() : super(TopCreatorsAndHistoryInitial());

  List topCreatorsTitle = ['Name', 'Artworks', 'Rating'];

  List<TopCreatorsModel> topCreatorsBody = [
    TopCreatorsModel(
        name: '@maddison_c21',
        image: Assets.imagesMaddison,
        artwork: '9821',
        rating: '95%'),
    TopCreatorsModel(
        name: '@karl.will02',
        image: Assets.imagesKarlwill,
        artwork: '7032',
        rating: '90%'),
    TopCreatorsModel(
        name: '@andreea.1z',
        image: Assets.imagesAndreea,
        artwork: '5204',
        rating: '85%'),
    TopCreatorsModel(
        name: '@abraham47.y',
        image: Assets.imagesAbraham,
        artwork: '4309',
        rating: '80%'),
    TopCreatorsModel(
        name: '@simmmple.web',
        image: Assets.imagesSimmmple,
        artwork: '3871',
        rating: '75%'),
    TopCreatorsModel(
        name: '@venus.sys',
        image: Assets.imagesVenus,
        artwork: '3152',
        rating: '70%'),
    TopCreatorsModel(
        name: '@ape.vpp8s',
        image: Assets.imagesApe,
        artwork: '2907',
        rating: '65%'),
    TopCreatorsModel(
        name: '@leon_pwrr',
        image: Assets.imagesLeon,
        artwork: '2309',
        rating: '60%'),
  ];

  List<HistoryModel> historyBody = [
    HistoryModel(
        image: Assets.imagesColorfulHistory,
        title: 'Colorful Heaven',
        subtitle: 'By Mark Benjamin',
        trailingText1: '1.30 ETH',
        trailingText2: '30s ago'),
    HistoryModel(
        image: Assets.imagesAbstractHistory,
        title: 'Abstract Colors',
        subtitle: 'By Esthera Jackson',
        trailingText1: '0.91 ETH',
        trailingText2: '58s ago'),
    HistoryModel(
        image: Assets.imagesEthHistory,
        title: 'ETH AI Brain',
        subtitle: 'By Nick Wilson',
        trailingText1: '2.82 ETH',
        trailingText2: '1m ago'),
    HistoryModel(
        image: Assets.imagesSwipHistory,
        title: 'Swipe Circles',
        subtitle: 'By Peter Will',
        trailingText1: '2.30 ETH',
        trailingText2: '1m ago'),
    HistoryModel(
        image: Assets.imagesMeshHistory,
        title: 'Mesh Gradients',
        subtitle: 'By Will Smith',
        trailingText1: '0.56 ETH',
        trailingText2: '2m ago'),
    HistoryModel(
        image: Assets.imagesCubesHistory,
        title: '3D Cubes Art',
        subtitle: 'By Manny Gates',
        trailingText1: '6.58 ETH',
        trailingText2: '3m ago'),
  ];
}
