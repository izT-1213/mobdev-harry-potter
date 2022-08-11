import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter_mobdev_hackathon/states/harrypotter_cubit.dart';
import 'package:harry_potter_mobdev_hackathon/states/harrypotter_state.dart';
import 'package:harry_potter_mobdev_hackathon/widgets/hp_information.dart';

import '../fonts/akaya_teliviga.dart';

class HPHouseDetails extends StatelessWidget {

  final String house;
  const HPHouseDetails({required this.house, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    HarryPotterCubit cubit = BlocProvider.of<HarryPotterCubit>(context)..fetchHPHouse(house);

    return Scaffold(
        appBar: AppBar(
          title: Text( "${house[0].toUpperCase()}${house.substring(1, house.length)}",
            style: const AkayaTelivigala(
                color: Colors.black, size: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpeg"),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: BlocBuilder<HarryPotterCubit,HarryPotterState>(
              bloc: cubit,
              builder: (context, state){
                if (state is HarryPotterLoading){
                  return const CircularProgressIndicator();
                }
                if (state is HarryPotterLoaded){
                  return HPInformation(hpCharacters: state.hpCharacters,);
                }

                return Text(
                    state is HarryPotterError ? state.errorMessage: "Unknown error");
              },
            ),
          ),
        )
    );
  }
}
