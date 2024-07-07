import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:mood_up_recruitment_task/domain/repositories/data_repository.dart';
import 'package:mood_up_recruitment_task/app/core/enums.dart';

part 'home_page_state.dart';
part 'home_page_cubit.freezed.dart';
@injectable
class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit({required this.dataRepository, })
      : super(HomePageState(
          status: Status.initial,
          results: [],
        ));

  final DataRepository dataRepository;

 
  Future<void> start({String? title, required int skip}) async {
    emit(HomePageState(
      status: Status.loading,
      results: [],
    ));

    try {
      final data = await dataRepository.getComics(title: title, skip: skip);

      final results = data.results.where(
        (element) {
          return (element.creators.items.isNotEmpty &&
                  element.description != null &&
                  element.description!.isNotEmpty ||
              element.textObjects.isNotEmpty);
        },
      ).toList();

      if (results.isEmpty) {
        emit(HomePageState(
            status: Status.error,
            results: [],
            errorMessage: "No data avalible"));
      } else {
      

        emit(
            HomePageState(status: Status.succes, results: results, data: data));
      }
      print(data.results);
    } catch (e) {
      print("ERROR CUBIT");

      emit(HomePageState(
        status: Status.error,
        results: [],
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> getMoreData({
    required int skip,
    String? title,
  }) async {
   
    try {
      final data = await dataRepository.getComics(title: title, skip: skip);

      final results = data.results.where(
        (element) {
          return (element.creators.items.isNotEmpty &&
                  element.description != null &&
                  element.description!.isNotEmpty ||
              element.textObjects.isNotEmpty);
        },
      ).toList();
     
      emit(HomePageState(status: Status.succes, results: results, data: data));
    } catch (e) {
      emit(HomePageState(
          status: Status.error, results: [], errorMessage: e.toString()));
    }
  }
}
