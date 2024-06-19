import 'package:cloud_firestore/cloud_firestore.dart';

class ExerciseModel {
  String nameExercise;
  String urlVideo;
  String description;
  String limb;

  ExerciseModel(
      {required this.description,
      required this.nameExercise,
      required this.limb,
      required this.urlVideo});
  Map<String, dynamic> toJson() {
    return {
      'nameExercise': nameExercise,
      'urlVideo': urlVideo,
      'description': description,
      'limb': limb
    };
  }

  factory ExerciseModel.fromJson(Map<String, dynamic> json) {
    return ExerciseModel(
        description: json['description'],
        nameExercise: json['nameExercise'],
        limb: json['limb'],
        urlVideo: json['urlVideo']);
  }

  static List<ExerciseModel> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((json) => ExerciseModel.fromJson(json)).toList();
  }

  factory ExerciseModel.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    final data = snapshot.data();
    return ExerciseModel(
      nameExercise: data?['nameExercise'],
      description: data?['description'],
      limb: data?['limb'],
      urlVideo: data?['urlVideo'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "nameExercise": nameExercise,
      "description": description,
      "limb": limb,
      "urlVideo": urlVideo,
    };
  }
}
