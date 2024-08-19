import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizon/core/utils/assets.dart';
import 'package:horizon/features/nft_marketplace/data/models/trending_and_recently_model.dart';

part 'trending_and_recently_state.dart';

class TrendingAndRecentlyCubit extends Cubit<TrendingAndRecentlyState> {
  TrendingAndRecentlyCubit() : super(TrendingAndRecentlyInitial());

  List<TrendingAndRecentlyModel> trendingNFTs = [
    TrendingAndRecentlyModel(
        backgroundImage: Assets.imagesAbstractColors,
        title: 'Abstract Colors',
        subtitle: 'By Esthera Jackson',
        trailing: Assets.imagesAbstractImage,
        current: 'Current Bid: 0.91 ETH'),
    TrendingAndRecentlyModel(
        backgroundImage: Assets.imagesEthAIbrain,
        title: 'ETH AI Brain',
        subtitle: 'By Nick Wilson',
        trailing: Assets.imagesEthImage,
        current: 'Current Bid: 2.82 ETH'),
    TrendingAndRecentlyModel(
        backgroundImage: Assets.imagesMeshGradients,
        title: 'Mesh Gradients',
        subtitle: 'By Will Smith',
        trailing: Assets.imagesMeshImage,
        current: 'Current Bid: 0.56 ETH'),
  ];


    List<TrendingAndRecentlyModel> recentlyAdded = [
    TrendingAndRecentlyModel(
        backgroundImage: Assets.imagesSwipeCircles,
        title: 'Swipe Circles',
        subtitle: 'By Peter Will',
        trailing: Assets.imagesSwipeImage,
        current: 'Current Bid: 2.30 ETH'),
    TrendingAndRecentlyModel(
        backgroundImage: Assets.imagesColorfulHeaven,
        title: 'Colorful Heaven',
        subtitle: 'By Mark Benjamin',
        trailing: Assets.imagesColorfulImage,
        current: 'Current Bid: 1.30 ETH'),
    TrendingAndRecentlyModel(
        backgroundImage: Assets.imagesCubesArt,
        title: '3D Cubes Art',
        subtitle: 'By Manny Gates',
        trailing: Assets.imagesAbstractImage,
        current: 'Current Bid: 6.58 ETH'),
  ];
}
