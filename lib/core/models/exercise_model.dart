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
}
