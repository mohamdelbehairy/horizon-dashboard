import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/core/utils/assets.dart';

import '../../../data/models/top_creators_model.dart';

part 'top_creators_state.dart';

class TopCreatorsCubit extends Cubit<TopCreatorsState> {
  TopCreatorsCubit() : super(TopCreatorsInitial());

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
}
