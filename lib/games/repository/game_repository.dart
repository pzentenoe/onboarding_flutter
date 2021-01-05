import 'package:onboarding_flutter/games/model/game_model.dart';

abstract class GameRepository {
  Future<List<GameModel>> listGames();
}

class GameRepositoryImpl implements GameRepository {
  @override
  Future<List<GameModel>> listGames() {
    final gameList = List.generate(
      100,
      (index) => GameModel(
          id: "${index + 1}",
          title: "Game-$index",
          imageUrl: "https://picsum.photos/id/${index + 1}/200/300",
          price: (index + 1) * 100,
          year: (index + 1900)),
    );
    return Future.delayed(Duration(seconds: 5), () => gameList);
  }
}
