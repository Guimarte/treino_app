enum Limbs {
  TORAX,
  OMBRO,
  TRICEPS,
  COSTAS,
  ABDOMEN,
  BICEPS,
  INFERIOR,
  PERNAS,
  GLUTEO
}

extension LimbsExtension on Limbs {
  String get name {
    switch (this) {
      case Limbs.TORAX:
        return 'Tórax';
      case Limbs.OMBRO:
        return 'Ombro';
      case Limbs.TRICEPS:
        return 'Tríceps';
      case Limbs.COSTAS:
        return 'Costas';
      case Limbs.ABDOMEN:
        return 'Abdômen';
      case Limbs.BICEPS:
        return 'Braço';
      case Limbs.INFERIOR:
        return 'Inferior';
      case Limbs.PERNAS:
        return 'Pernas';
      case Limbs.GLUTEO:
        return 'Glúteo';
      default:
        return "";
    }
  }
}
