import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter_mobdev_hackathon/models/harrypotter_model.dart';
import 'package:harry_potter_mobdev_hackathon/services/harrypotter_services.dart';
import 'package:harry_potter_mobdev_hackathon/states/harrypotter_state.dart';

class HarryPotterCubit extends Cubit<HarryPotterState> {
  HarryPotterCubit() : super(HarryPotterLoading());

  Future<void> fetchHPHouse(String house) async {
    HarryPotterService harryPotterService = HarryPotterService();

    emit(HarryPotterLoading());

    try {
      List<HpCharacters> hpCharacters = await (harryPotterService.fetchHPHouse(house)) as List<HpCharacters>;
      emit(
        HarryPotterLoaded(hpCharacters: hpCharacters),
      );
    } catch (e) {
      emit(HarryPotterError(errorMessage: e.toString()));
    }
  }

  Future<void> fetchHPStudents() async {
    HarryPotterService harryPotterService = HarryPotterService();

    emit(HarryPotterLoading());

    try {
      List<HpCharacters> hpCharacters = await (harryPotterService.fetchHPStudents()) as List<HpCharacters>;
      emit(
        HarryPotterLoaded(hpCharacters: hpCharacters),
      );
    } catch (e) {
      emit(HarryPotterError(errorMessage: e.toString()));
    }
  }

  Future<void> fetchHPStaffs() async {
    HarryPotterService harryPotterService = HarryPotterService();

    emit(HarryPotterLoading());

    try {
      List<HpCharacters> hpCharacters = await (harryPotterService.fetchHPStaffs()) as List<HpCharacters>;
      emit(
        HarryPotterLoaded(hpCharacters: hpCharacters),
      );
    } catch (e) {
      emit(HarryPotterError(errorMessage: e.toString()));
    }
  }
}
