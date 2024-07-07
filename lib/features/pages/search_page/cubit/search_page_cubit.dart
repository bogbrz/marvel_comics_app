import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:mood_up_recruitment_task/domain/repositories/data_repository.dart';
import 'package:mood_up_recruitment_task/app/core/enums.dart';

part 'search_page_cubit.freezed.dart';
part 'search_page_state.dart';

@injectable
class SearchPageCubit extends Cubit<SearchPageState> {
  SearchPageCubit({required this.dataRepository})
      : super(SearchPageState(
            searchStatus: SearchStatus.initial, results: [], data: null));

  final DataRepository dataRepository;

  Future<void> getComicsByTitle(
      {required String title, required int skip}) async {
    emit(SearchPageState(
        searchStatus: SearchStatus.loading, results: [], data: null));

    if (title.isNotEmpty) {
      final data = await dataRepository.getComics(title: title, skip: 0);

      try {
        if (data.results.isEmpty) {
          emit(SearchPageState(
              searchStatus: SearchStatus.empty, results: [], data: null));
        } else if (data.results.isNotEmpty) {
          emit(SearchPageState(
              searchStatus: SearchStatus.success,
              results: data.results,
              data: data));
        }
      } catch (e) {
        emit(SearchPageState(
            searchStatus: SearchStatus.error,
            results: [],
            errorMessage: e.toString(),
            data: null));
      }
    }
  }

  Future<void> getMoreData({
    required int skip,
    String? title,
  }) async {
    print("CUBIT $skip");
    if (title != null && title.isNotEmpty) {
      try {
        final data = await dataRepository.getComics(title: title, skip: skip);
        print("RESULTS ${data.results}");
        final results = data.results.where(
          (element) {
            return (element.creators.items.isNotEmpty &&
                    element.description != null &&
                    element.description!.isNotEmpty ||
                element.textObjects.isNotEmpty);
          },
        ).toList();

        print("TOTAL ${data.total}");
        if (results.isNotEmpty) {
          emit(SearchPageState(
              searchStatus: SearchStatus.success,
              results: results,
              data: data));
        } else {
          emit(SearchPageState(
              searchStatus: SearchStatus.success, results: [], hasMore: false));
        }
      } catch (e) {
        emit(SearchPageState(
            searchStatus: SearchStatus.error,
            results: [],
            errorMessage: e.toString()));
      }
    } else {
      emit(SearchPageState(
          searchStatus: SearchStatus.success, results: [], hasMore: false));
    }
  }
}
