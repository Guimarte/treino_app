class ExerciseModel {
  String id;
  String nameExercise;
  String urlVideo;
  String description;
  String limb;
  String exerciseDay;

  ExerciseModel(
      {required this.id,
      required this.nameExercise,
      required this.urlVideo,
      required this.description,
      required this.limb,
      required this.exerciseDay});
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nameExercise': nameExercise,
      'urlVideo': urlVideo,
      'description': description,
      'limb': limb,
      'exerciseDay': exerciseDay
    };
  }

  factory ExerciseModel.fromJson(Map<String, dynamic> json) {
    return ExerciseModel(
        id: json['id'],
        nameExercise: json['nameExercise'],
        urlVideo: json['urlVideo'],
        description: json['description'],
        limb: json['limb'],
        exerciseDay: json['exerciseDay']);
  }

  static List<ExerciseModel> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((json) => ExerciseModel.fromJson(json)).toList();
  }
}
