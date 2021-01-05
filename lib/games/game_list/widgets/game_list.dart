import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//import 'package:onboarding_flutter/games/game_list/bloc/game_list_bloc.dart';
import 'package:onboarding_flutter/games/game_list/cubit/game_list_cubit.dart';
import 'package:onboarding_flutter/games/model/game_model.dart';

class GameList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final state = context.watch<GameListBloc>().state;
    final state = context.watch<GameListCubit>().state;
    if (state is GameListLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (state is GameListSuccess) {
      return ListView.builder(
          itemCount: state.games.length,
          itemBuilder: (context, i) {
            final game = state.games[i];

            return Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  child: GameItem(game: game),
                ),
                Divider(),
              ],
            );
          });
    } else if (state is GameListFailed) {
      return Center(
        child: Text(state.message),
      );
    } else {
      return Container();
    }
  }
}

class GameItem extends StatelessWidget {
  final GameModel game;

  const GameItem({
    @required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(game.title),
        Text('${game.price}'),
        Image.network(game.imageUrl),
        Text('${game.year}'),
      ],
    );
  }
}
