import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:onboarding_flutter/games/model/game_model.dart';
import 'package:onboarding_flutter/games/repository/game_repository.dart';

part 'game_list_event.dart';

part 'game_list_state.dart';

class GameListBloc extends Bloc<GameListEvent, GameListState> {
  final _gameRepository = GameRepositoryImpl();

  GameListBloc() : super(GameListInitial());

  @override
  Stream<GameListState> mapEventToState(GameListEvent event) async* {
    if (event is GameListLoadingStarted) {
      print("GameListLoadingStarted");
      yield GameListLoading();
      try {
        final gameList = await _gameRepository.listGames();
        yield GameListSuccess(games: gameList);
      } catch (e) {
        yield GameListFailed(e.toString());
      }
    }
  }
}
