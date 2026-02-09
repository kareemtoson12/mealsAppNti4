// Karim Toson || kareemtoson1@gmail.com || Mon Feb 09 2026 17:37:47

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_10/core/data_source/firebase_data_source.dart';
import 'package:project_10/core/data_source/models/meal_model.dart';
import 'package:project_10/features/home/cubit/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeIntialState());
  FireBaseDataSource fireBaseDataSource = FireBaseDataSource();
  List<MealModel> listOfData = [];
  //get Data
  void getData() async {
    emit(HomeLoadingState());

    try {
      listOfData = await fireBaseDataSource.getData();
      emit(HomeSucessState(mealData: listOfData));
    } catch (e) {
      emit(HomeErrorState());
    }
  }
}
