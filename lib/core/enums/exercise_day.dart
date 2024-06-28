enum ExerciseDay { A, B, C, D, E }

extension ExerciseDayExtension on ExerciseDay {
  String get name {
    switch (this) {
      case ExerciseDay.A:
        return 'A';
      case ExerciseDay.B:
        return 'B';
      case ExerciseDay.C:
        return 'C';
      case ExerciseDay.D:
        return 'D';
      case ExerciseDay.E:
        return 'E';
      default:
        return "";
    }
  }
}
