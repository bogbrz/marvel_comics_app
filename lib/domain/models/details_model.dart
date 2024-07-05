
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';

part 'details_model.freezed.dart';
@freezed
class DetailsModel with _$DetailsModel {
  const factory DetailsModel(
      { required String description, required List<CreatorsItem> creators, required String title,
      required List<Url> url, required String imageUrl ,
      
      
      }) = _DetailsModel;
}