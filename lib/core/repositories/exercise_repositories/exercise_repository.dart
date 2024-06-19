import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:treino_app/core/models/exercise_model.dart';

class ExerciseRepository {
  Future insertNewExercise(ExerciseModel exerciseModel) async {
    final db = FirebaseFirestore.instance;

    final docData = db
        .collection('treino_app')
        .withConverter(
            fromFirestore: ExerciseModel.fromFirestore,
            toFirestore: (ExerciseModel exerciseModel, options) =>
                exerciseModel.toFirestore())
        .doc('exercises');
    await docData.set(exerciseModel);
  }
}
