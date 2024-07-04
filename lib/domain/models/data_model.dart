import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class InitialData with _$InitialData {
  const factory InitialData({
    required int code,
    required String? status,
    required String? copyright,
    required String? attributionText,
    required String? attributionHtml,
    required String? etag,
    required Data data,
  }) = _InitialData;

  factory InitialData.fromJson(Map<String, dynamic> json) =>
      _$InitialDataFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Result> results,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required int id,
    required int digitalId,
    required String? title,
    required int issueNumber,
    required String? variantDescription,
    String? description,
    required String modified,
    required String isbn,
    required String upc,
    required String diamondCode,
    required String ean,
    required String issn,
    required String format,
    required int pageCount,
    required List<TextObject> textObjects,
    required String? resourceUri,
    required List<Url> urls,
    required Series series,
    required List<Series> variants,
    required List<Series> collections,
    required List<dynamic> collectedIssues,
    required List<Date> dates,
    required List<Price> prices,
    required Thumbnail thumbnail,
    required List<Thumbnail> images,
    required Creators creators,
    required Characters characters,
    required Stories stories,
    required Characters events,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Characters with _$Characters {
  const factory Characters({
    required int available,
    required String? collectionUri,
    required List<Series> items,
    required int returned,
  }) = _Characters;

  factory Characters.fromJson(Map<String, dynamic> json) =>
      _$CharactersFromJson(json);
}

@freezed
class Series with _$Series {
  const factory Series({
    required String? resourceUri,
    required String name,
  }) = _Series;

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);
}

@freezed
class Creators with _$Creators {
  const factory Creators({
    required int available,
    required String? collectionUri,
    required List<CreatorsItem> items,
    required int returned,
  }) = _Creators;

  factory Creators.fromJson(Map<String, dynamic> json) =>
      _$CreatorsFromJson(json);
}

@freezed
class CreatorsItem with _$CreatorsItem {
  const factory CreatorsItem({
    required String? resourceUri,
    required String name,
    required String role,
  }) = _CreatorsItem;

  factory CreatorsItem.fromJson(Map<String, dynamic> json) =>
      _$CreatorsItemFromJson(json);
}

@freezed
class Date with _$Date {
  const factory Date({
    required String type,
    required String date,
  }) = _Date;

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);
}

@freezed
class Thumbnail with _$Thumbnail {
  const factory Thumbnail({
    required String path,
    required String extension,
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);
}

@freezed
class Price with _$Price {
  const factory Price({
    required String type,
    required double price,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

@freezed
class Stories with _$Stories {
  const factory Stories({
    required int available,
    required String? collectionUri,
    required List<StoriesItem> items,
    required int returned,
  }) = _Stories;

  factory Stories.fromJson(Map<String, dynamic> json) =>
      _$StoriesFromJson(json);
}

@freezed
class StoriesItem with _$StoriesItem {
  const factory StoriesItem({
    required String? resourceUri,
    required String? name,
    required String? type,
  }) = _StoriesItem;

  factory StoriesItem.fromJson(Map<String, dynamic> json) =>
      _$StoriesItemFromJson(json);
}

@freezed
class TextObject with _$TextObject {
  const factory TextObject({
    required String type,
    required String language,
    required String text,
  }) = _TextObject;

  factory TextObject.fromJson(Map<String, dynamic> json) =>
      _$TextObjectFromJson(json);
}

@freezed
class Url with _$Url {
  const factory Url({
    required String type,
    required String url,
  }) = _Url;

  factory Url.fromJson(Map<String, dynamic> json) => _$UrlFromJson(json);
}
