import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding_flutter/games/game_list/bloc/game_list_bloc.dart';
import 'package:onboarding_flutter/games/game_list/cubit/game_list_cubit.dart';
import 'package:onboarding_flutter/games/game_list/widgets/game_header.dart';
import 'package:onboarding_flutter/games/game_list/widgets/game_list.dart';

class GameListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game List"),
      ),
      body: BlocProvider(
        //create: (_) => GameListBloc()..add(GameListLoadingStarted()),
        create: (_) => GameListCubit()..gameListStarted(),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: GameListHeader(),
              ),
              Divider(),
              Expanded(
                child: GameList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
