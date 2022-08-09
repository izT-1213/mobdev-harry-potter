import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter_mobdev_hackathon/models/hp_model.dart';
import 'package:harry_potter_mobdev_hackathon/services/hp_services.dart';
import 'package:harry_potter_mobdev_hackathon/states/hp_state.dart';

class HPCubit extends Cubit<HPState>{
  HPCubit() : super(HPLoading());

  Future<void> fetchHP() async {
    HPService harryPotterService = HPService();

    emit(HPLoading());

    try{
      HPCharacters hpCharacters = await harryPotterService.fetchHPInformation();
      List<HpCharacters> hpCharacters = (await harryPotterService.fetchHPInformation()) as List<HpCharacters>;
      emit(
      HPLoaded(hpCharacters: hpCharacters),
      );
  } catch(e){
      emit(HPError(errorMessage: "${e.toString()} HAHAHHAHAHA"));
  }
}
}