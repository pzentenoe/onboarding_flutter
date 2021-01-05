import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:onboarding_flutter/games/model/game_model.dart';
import 'package:onboarding_flutter/games/repository/game_repository.dart';

part 'game_list_state.dart';

class GameListCubit extends Cubit<GameListState> {
  final _gameRepository = GameRepositoryImpl();

  GameListCubit() : super(GameListInitial());

  void gameListStarted() async {
    emit(GameListLoading());
    try {
      final gameList = await _gameRepository.listGames();
      emit(GameListSuccess(games: gameList));
    } catch (e) {
      emit(GameListFailed(e.toString()));
    }
  }
}
