import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter_mobdev_hackathon/models/harrypotter_model.dart';
import 'package:harry_potter_mobdev_hackathon/services/harrypotter_services.dart';
import 'package:harry_potter_mobdev_hackathon/states/harrypotter_state.dart';

class HarryPotterCubit extends Cubit<HarryPotterState>{
  HarryPotterCubit() : super(HarryPotterLoading());

  Future<void> fetchHP() async {
    HarryPotterService harryPotterService = HarryPotterService();

    emit(HarryPotterLoading());

    try{
      HpCharacters hpCharacters = await harryPotterService.fetchHPInformation();
      emit(
      HarryPotterLoaded(hpCharacters: hpCharacters),
      );
  } catch(e){
      emit(HarryPotterError(errorMessage: e.toString()));
  }
}
}