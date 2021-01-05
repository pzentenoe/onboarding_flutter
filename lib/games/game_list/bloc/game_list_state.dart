part of 'game_list_bloc.dart';

@immutable
abstract class GameListState {}

class GameListInitial extends GameListState {}

class GameListLoading extends GameListState {}

class GameListSuccess extends GameListState {
  final List<GameModel> games;
  GameListSuccess({@required this.games});
}

class GameListFailed extends GameListState {
  String message;
  GameListFailed(this.message);
}
