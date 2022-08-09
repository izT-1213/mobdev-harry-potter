import '../models/hp_model.dart';

abstract class HPState{}

class HPLoading extends HPState{}

class HPLoaded extends HPState{
  final HpCharacters hpCharacters;

  HPLoaded({required this.hpCharacters});
}

class HPError extends HPState{
  final String errorMessage;

  HPError({required this.errorMessage});
}