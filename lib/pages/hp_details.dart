import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter_mobdev_hackathon/models/hp_model.dart';
import 'package:harry_potter_mobdev_hackathon/services/hp_services.dart';
import 'package:harry_potter_mobdev_hackathon/states/hp_cubit.dart';
import 'package:harry_potter_mobdev_hackathon/states/hp_state.dart';
import 'package:harry_potter_mobdev_hackathon/widgets/hp_information.dart';

class HPDetails extends StatelessWidget {

  const HPDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    HPCubit cubit = BlocProvider.of<HPCubit>(context)..fetchHP();

    return Scaffold(
      appBar: AppBar(title: const Text("HP Information Test")),
      body: Center(
        child: BlocBuilder<HPCubit,HPState>(
          bloc: cubit,
          builder: (context, state){
            if (state is HPLoading){
              return const CircularProgressIndicator();
            }
            if (state is HPLoaded){
              return HPInformation(hpCharacters: state.hpCharacters);
            }
            
            return Text(
              state is HPError ? state.errorMessage: "Unknown error");
          },
        ),
      )
    );
  }
}
