part of 'home_page_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState(
      {required Status status,
      required List<Result> results,
       Data? data,
      @Default(null) String? errorMessage}) = _HomePageState;
}
