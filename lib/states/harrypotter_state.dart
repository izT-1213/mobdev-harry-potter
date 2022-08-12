import '../models/harrypotter_model.dart';

abstract class HarryPotterState {}

class HarryPotterLoading extends HarryPotterState {}

class HarryPotterLoaded extends HarryPotterState {
  List<HpCharacters> hpCharacters;

  HarryPotterLoaded({required this.hpCharacters});
}

class HarryPotterError extends HarryPotterState {
  final String errorMessage;

  HarryPotterError({required this.errorMessage});
}
