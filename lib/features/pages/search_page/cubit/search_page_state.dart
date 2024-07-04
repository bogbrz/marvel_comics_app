part of 'search_page_cubit.dart';

@freezed
class SearchPageState with _$SearchPageState {
  const factory SearchPageState(
      {
      required SearchStatus searchStatus,
      required List<Result> results,
       Data? data,
        @Default(true) bool hasMore,
       
 
      @Default(null) String? errorMessage}) = _SearchPageState;
}
