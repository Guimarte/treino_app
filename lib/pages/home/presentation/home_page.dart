import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treino_app/core/shared/widgets/drawer_widget.dart';
import 'package:treino_app/core/shared/widgets/exercise_card.dart';
import 'package:treino_app/pages/home/bloc/home_bloc.dart';
import 'package:treino_app/pages/home/bloc/home_event.dart';
import 'package:treino_app/pages/home/bloc/home_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
        ),
        endDrawer: const DrawerWidget(),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeStateLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is HomeStateLoadSucess) {
              return ListView.builder(
                itemCount: state.exerciseList.length,
                itemBuilder: (context, index) {
                  return ExerciseCard(
                      exerciseDescription:
                          state.exerciseList[index].description,
                      exerciseName: state.exerciseList[index].nameExercise,
                      exerciseUrlVideo: state.exerciseList[index].urlVideo,
                      limb: state.exerciseList[index].limb,
                      day: state.exerciseList[index].exerciseDay,
                      openUrlVideoFunction: () {
                        context.read<HomeBloc>().add(HomeOpenVideoEvent(
                            url: state.exerciseList[index].urlVideo));
                      });
                },
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
