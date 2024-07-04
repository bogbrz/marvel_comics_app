// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitialData _$InitialDataFromJson(Map<String, dynamic> json) {
  return _InitialData.fromJson(json);
}

/// @nodoc
mixin _$InitialData {
  int get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  String? get attributionText => throw _privateConstructorUsedError;
  String? get attributionHtml => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitialDataCopyWith<InitialData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialDataCopyWith<$Res> {
  factory $InitialDataCopyWith(
          InitialData value, $Res Function(InitialData) then) =
      _$InitialDataCopyWithImpl<$Res, InitialData>;
  @useResult
  $Res call(
      {int code,
      String? status,
      String? copyright,
      String? attributionText,
      String? attributionHtml,
      String? etag,
      Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$InitialDataCopyWithImpl<$Res, $Val extends InitialData>
    implements $InitialDataCopyWith<$Res> {
  _$InitialDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = freezed,
    Object? copyright = freezed,
    Object? attributionText = freezed,
    Object? attributionHtml = freezed,
    Object? etag = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionText: freezed == attributionText
          ? _value.attributionText
          : attributionText // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionHtml: freezed == attributionHtml
          ? _value.attributionHtml
          : attributionHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialDataImplCopyWith<$Res>
    implements $InitialDataCopyWith<$Res> {
  factory _$$InitialDataImplCopyWith(
          _$InitialDataImpl value, $Res Function(_$InitialDataImpl) then) =
      __$$InitialDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String? status,
      String? copyright,
      String? attributionText,
      String? attributionHtml,
      String? etag,
      Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialDataImplCopyWithImpl<$Res>
    extends _$InitialDataCopyWithImpl<$Res, _$InitialDataImpl>
    implements _$$InitialDataImplCopyWith<$Res> {
  __$$InitialDataImplCopyWithImpl(
      _$InitialDataImpl _value, $Res Function(_$InitialDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = freezed,
    Object? copyright = freezed,
    Object? attributionText = freezed,
    Object? attributionHtml = freezed,
    Object? etag = freezed,
    Object? data = null,
  }) {
    return _then(_$InitialDataImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionText: freezed == attributionText
          ? _value.attributionText
          : attributionText // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionHtml: freezed == attributionHtml
          ? _value.attributionHtml
          : attributionHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitialDataImpl implements _InitialData {
  const _$InitialDataImpl(
      {required this.code,
      required this.status,
      required this.copyright,
      required this.attributionText,
      required this.attributionHtml,
      required this.etag,
      required this.data});

  factory _$InitialDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialDataImplFromJson(json);

  @override
  final int code;
  @override
  final String? status;
  @override
  final String? copyright;
  @override
  final String? attributionText;
  @override
  final String? attributionHtml;
  @override
  final String? etag;
  @override
  final Data data;

  @override
  String toString() {
    return 'InitialData(code: $code, status: $status, copyright: $copyright, attributionText: $attributionText, attributionHtml: $attributionHtml, etag: $etag, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialDataImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.attributionText, attributionText) ||
                other.attributionText == attributionText) &&
            (identical(other.attributionHtml, attributionHtml) ||
                other.attributionHtml == attributionHtml) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, copyright,
      attributionText, attributionHtml, etag, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialDataImplCopyWith<_$InitialDataImpl> get copyWith =>
      __$$InitialDataImplCopyWithImpl<_$InitialDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialDataImplToJson(
      this,
    );
  }
}

abstract class _InitialData implements InitialData {
  const factory _InitialData(
      {required final int code,
      required final String? status,
      required final String? copyright,
      required final String? attributionText,
      required final String? attributionHtml,
      required final String? etag,
      required final Data data}) = _$InitialDataImpl;

  factory _InitialData.fromJson(Map<String, dynamic> json) =
      _$InitialDataImpl.fromJson;

  @override
  int get code;
  @override
  String? get status;
  @override
  String? get copyright;
  @override
  String? get attributionText;
  @override
  String? get attributionHtml;
  @override
  String? get etag;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialDataImplCopyWith<_$InitialDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, List<Result> results});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? total = null,
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, List<Result> results});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? total = null,
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_$DataImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {required this.offset,
      required this.limit,
      required this.total,
      required this.count,
      required final List<Result> results})
      : _results = results;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final int offset;
  @override
  final int limit;
  @override
  final int total;
  @override
  final int count;
  final List<Result> _results;
  @override
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'Data(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit, total, count,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final int offset,
      required final int limit,
      required final int total,
      required final int count,
      required final List<Result> results}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  int get offset;
  @override
  int get limit;
  @override
  int get total;
  @override
  int get count;
  @override
  List<Result> get results;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int get id => throw _privateConstructorUsedError;
  int get digitalId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int get issueNumber => throw _privateConstructorUsedError;
  String? get variantDescription => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get modified => throw _privateConstructorUsedError;
  String get isbn => throw _privateConstructorUsedError;
  String get upc => throw _privateConstructorUsedError;
  String get diamondCode => throw _privateConstructorUsedError;
  String get ean => throw _privateConstructorUsedError;
  String get issn => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  List<TextObject> get textObjects => throw _privateConstructorUsedError;
  String? get resourceUri => throw _privateConstructorUsedError;
  List<Url> get urls => throw _privateConstructorUsedError;
  Series get series => throw _privateConstructorUsedError;
  List<Series> get variants => throw _privateConstructorUsedError;
  List<Series> get collections => throw _privateConstructorUsedError;
  List<dynamic> get collectedIssues => throw _privateConstructorUsedError;
  List<Date> get dates => throw _privateConstructorUsedError;
  List<Price> get prices => throw _privateConstructorUsedError;
  Thumbnail get thumbnail => throw _privateConstructorUsedError;
  List<Thumbnail> get images => throw _privateConstructorUsedError;
  Creators get creators => throw _privateConstructorUsedError;
  Characters get characters => throw _privateConstructorUsedError;
  Stories get stories => throw _privateConstructorUsedError;
  Characters get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {int id,
      int digitalId,
      String? title,
      int issueNumber,
      String? variantDescription,
      String? description,
      String modified,
      String isbn,
      String upc,
      String diamondCode,
      String ean,
      String issn,
      String format,
      int pageCount,
      List<TextObject> textObjects,
      String? resourceUri,
      List<Url> urls,
      Series series,
      List<Series> variants,
      List<Series> collections,
      List<dynamic> collectedIssues,
      List<Date> dates,
      List<Price> prices,
      Thumbnail thumbnail,
      List<Thumbnail> images,
      Creators creators,
      Characters characters,
      Stories stories,
      Characters events});

  $SeriesCopyWith<$Res> get series;
  $ThumbnailCopyWith<$Res> get thumbnail;
  $CreatorsCopyWith<$Res> get creators;
  $CharactersCopyWith<$Res> get characters;
  $StoriesCopyWith<$Res> get stories;
  $CharactersCopyWith<$Res> get events;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? digitalId = null,
    Object? title = freezed,
    Object? issueNumber = null,
    Object? variantDescription = freezed,
    Object? description = freezed,
    Object? modified = null,
    Object? isbn = null,
    Object? upc = null,
    Object? diamondCode = null,
    Object? ean = null,
    Object? issn = null,
    Object? format = null,
    Object? pageCount = null,
    Object? textObjects = null,
    Object? resourceUri = freezed,
    Object? urls = null,
    Object? series = null,
    Object? variants = null,
    Object? collections = null,
    Object? collectedIssues = null,
    Object? dates = null,
    Object? prices = null,
    Object? thumbnail = null,
    Object? images = null,
    Object? creators = null,
    Object? characters = null,
    Object? stories = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      digitalId: null == digitalId
          ? _value.digitalId
          : digitalId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      issueNumber: null == issueNumber
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as int,
      variantDescription: freezed == variantDescription
          ? _value.variantDescription
          : variantDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      isbn: null == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      upc: null == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String,
      diamondCode: null == diamondCode
          ? _value.diamondCode
          : diamondCode // ignore: cast_nullable_to_non_nullable
              as String,
      ean: null == ean
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String,
      issn: null == issn
          ? _value.issn
          : issn // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      textObjects: null == textObjects
          ? _value.textObjects
          : textObjects // ignore: cast_nullable_to_non_nullable
              as List<TextObject>,
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<Url>,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      collections: null == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      collectedIssues: null == collectedIssues
          ? _value.collectedIssues
          : collectedIssues // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<Date>,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<Price>,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
      creators: null == creators
          ? _value.creators
          : creators // ignore: cast_nullable_to_non_nullable
              as Creators,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as Characters,
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as Stories,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Characters,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeriesCopyWith<$Res> get series {
    return $SeriesCopyWith<$Res>(_value.series, (value) {
      return _then(_value.copyWith(series: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res> get thumbnail {
    return $ThumbnailCopyWith<$Res>(_value.thumbnail, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorsCopyWith<$Res> get creators {
    return $CreatorsCopyWith<$Res>(_value.creators, (value) {
      return _then(_value.copyWith(creators: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CharactersCopyWith<$Res> get characters {
    return $CharactersCopyWith<$Res>(_value.characters, (value) {
      return _then(_value.copyWith(characters: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StoriesCopyWith<$Res> get stories {
    return $StoriesCopyWith<$Res>(_value.stories, (value) {
      return _then(_value.copyWith(stories: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CharactersCopyWith<$Res> get events {
    return $CharactersCopyWith<$Res>(_value.events, (value) {
      return _then(_value.copyWith(events: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int digitalId,
      String? title,
      int issueNumber,
      String? variantDescription,
      String? description,
      String modified,
      String isbn,
      String upc,
      String diamondCode,
      String ean,
      String issn,
      String format,
      int pageCount,
      List<TextObject> textObjects,
      String? resourceUri,
      List<Url> urls,
      Series series,
      List<Series> variants,
      List<Series> collections,
      List<dynamic> collectedIssues,
      List<Date> dates,
      List<Price> prices,
      Thumbnail thumbnail,
      List<Thumbnail> images,
      Creators creators,
      Characters characters,
      Stories stories,
      Characters events});

  @override
  $SeriesCopyWith<$Res> get series;
  @override
  $ThumbnailCopyWith<$Res> get thumbnail;
  @override
  $CreatorsCopyWith<$Res> get creators;
  @override
  $CharactersCopyWith<$Res> get characters;
  @override
  $StoriesCopyWith<$Res> get stories;
  @override
  $CharactersCopyWith<$Res> get events;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? digitalId = null,
    Object? title = freezed,
    Object? issueNumber = null,
    Object? variantDescription = freezed,
    Object? description = freezed,
    Object? modified = null,
    Object? isbn = null,
    Object? upc = null,
    Object? diamondCode = null,
    Object? ean = null,
    Object? issn = null,
    Object? format = null,
    Object? pageCount = null,
    Object? textObjects = null,
    Object? resourceUri = freezed,
    Object? urls = null,
    Object? series = null,
    Object? variants = null,
    Object? collections = null,
    Object? collectedIssues = null,
    Object? dates = null,
    Object? prices = null,
    Object? thumbnail = null,
    Object? images = null,
    Object? creators = null,
    Object? characters = null,
    Object? stories = null,
    Object? events = null,
  }) {
    return _then(_$ResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      digitalId: null == digitalId
          ? _value.digitalId
          : digitalId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      issueNumber: null == issueNumber
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as int,
      variantDescription: freezed == variantDescription
          ? _value.variantDescription
          : variantDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      isbn: null == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      upc: null == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String,
      diamondCode: null == diamondCode
          ? _value.diamondCode
          : diamondCode // ignore: cast_nullable_to_non_nullable
              as String,
      ean: null == ean
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String,
      issn: null == issn
          ? _value.issn
          : issn // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      textObjects: null == textObjects
          ? _value._textObjects
          : textObjects // ignore: cast_nullable_to_non_nullable
              as List<TextObject>,
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<Url>,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      collections: null == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      collectedIssues: null == collectedIssues
          ? _value._collectedIssues
          : collectedIssues // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      dates: null == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<Date>,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<Price>,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
      creators: null == creators
          ? _value.creators
          : creators // ignore: cast_nullable_to_non_nullable
              as Creators,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as Characters,
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as Stories,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Characters,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {required this.id,
      required this.digitalId,
      required this.title,
      required this.issueNumber,
      required this.variantDescription,
      this.description,
      required this.modified,
      required this.isbn,
      required this.upc,
      required this.diamondCode,
      required this.ean,
      required this.issn,
      required this.format,
      required this.pageCount,
      required final List<TextObject> textObjects,
      required this.resourceUri,
      required final List<Url> urls,
      required this.series,
      required final List<Series> variants,
      required final List<Series> collections,
      required final List<dynamic> collectedIssues,
      required final List<Date> dates,
      required final List<Price> prices,
      required this.thumbnail,
      required final List<Thumbnail> images,
      required this.creators,
      required this.characters,
      required this.stories,
      required this.events})
      : _textObjects = textObjects,
        _urls = urls,
        _variants = variants,
        _collections = collections,
        _collectedIssues = collectedIssues,
        _dates = dates,
        _prices = prices,
        _images = images;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int id;
  @override
  final int digitalId;
  @override
  final String? title;
  @override
  final int issueNumber;
  @override
  final String? variantDescription;
  @override
  final String? description;
  @override
  final String modified;
  @override
  final String isbn;
  @override
  final String upc;
  @override
  final String diamondCode;
  @override
  final String ean;
  @override
  final String issn;
  @override
  final String format;
  @override
  final int pageCount;
  final List<TextObject> _textObjects;
  @override
  List<TextObject> get textObjects {
    if (_textObjects is EqualUnmodifiableListView) return _textObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textObjects);
  }

  @override
  final String? resourceUri;
  final List<Url> _urls;
  @override
  List<Url> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  final Series series;
  final List<Series> _variants;
  @override
  List<Series> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  final List<Series> _collections;
  @override
  List<Series> get collections {
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  final List<dynamic> _collectedIssues;
  @override
  List<dynamic> get collectedIssues {
    if (_collectedIssues is EqualUnmodifiableListView) return _collectedIssues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collectedIssues);
  }

  final List<Date> _dates;
  @override
  List<Date> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  final List<Price> _prices;
  @override
  List<Price> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  final Thumbnail thumbnail;
  final List<Thumbnail> _images;
  @override
  List<Thumbnail> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final Creators creators;
  @override
  final Characters characters;
  @override
  final Stories stories;
  @override
  final Characters events;

  @override
  String toString() {
    return 'Result(id: $id, digitalId: $digitalId, title: $title, issueNumber: $issueNumber, variantDescription: $variantDescription, description: $description, modified: $modified, isbn: $isbn, upc: $upc, diamondCode: $diamondCode, ean: $ean, issn: $issn, format: $format, pageCount: $pageCount, textObjects: $textObjects, resourceUri: $resourceUri, urls: $urls, series: $series, variants: $variants, collections: $collections, collectedIssues: $collectedIssues, dates: $dates, prices: $prices, thumbnail: $thumbnail, images: $images, creators: $creators, characters: $characters, stories: $stories, events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.digitalId, digitalId) ||
                other.digitalId == digitalId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.issueNumber, issueNumber) ||
                other.issueNumber == issueNumber) &&
            (identical(other.variantDescription, variantDescription) ||
                other.variantDescription == variantDescription) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.upc, upc) || other.upc == upc) &&
            (identical(other.diamondCode, diamondCode) ||
                other.diamondCode == diamondCode) &&
            (identical(other.ean, ean) || other.ean == ean) &&
            (identical(other.issn, issn) || other.issn == issn) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            const DeepCollectionEquality()
                .equals(other._textObjects, _textObjects) &&
            (identical(other.resourceUri, resourceUri) ||
                other.resourceUri == resourceUri) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            (identical(other.series, series) || other.series == series) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections) &&
            const DeepCollectionEquality()
                .equals(other._collectedIssues, _collectedIssues) &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.creators, creators) ||
                other.creators == creators) &&
            (identical(other.characters, characters) ||
                other.characters == characters) &&
            (identical(other.stories, stories) || other.stories == stories) &&
            (identical(other.events, events) || other.events == events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        digitalId,
        title,
        issueNumber,
        variantDescription,
        description,
        modified,
        isbn,
        upc,
        diamondCode,
        ean,
        issn,
        format,
        pageCount,
        const DeepCollectionEquality().hash(_textObjects),
        resourceUri,
        const DeepCollectionEquality().hash(_urls),
        series,
        const DeepCollectionEquality().hash(_variants),
        const DeepCollectionEquality().hash(_collections),
        const DeepCollectionEquality().hash(_collectedIssues),
        const DeepCollectionEquality().hash(_dates),
        const DeepCollectionEquality().hash(_prices),
        thumbnail,
        const DeepCollectionEquality().hash(_images),
        creators,
        characters,
        stories,
        events
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {required final int id,
      required final int digitalId,
      required final String? title,
      required final int issueNumber,
      required final String? variantDescription,
      final String? description,
      required final String modified,
      required final String isbn,
      required final String upc,
      required final String diamondCode,
      required final String ean,
      required final String issn,
      required final String format,
      required final int pageCount,
      required final List<TextObject> textObjects,
      required final String? resourceUri,
      required final List<Url> urls,
      required final Series series,
      required final List<Series> variants,
      required final List<Series> collections,
      required final List<dynamic> collectedIssues,
      required final List<Date> dates,
      required final List<Price> prices,
      required final Thumbnail thumbnail,
      required final List<Thumbnail> images,
      required final Creators creators,
      required final Characters characters,
      required final Stories stories,
      required final Characters events}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int get id;
  @override
  int get digitalId;
  @override
  String? get title;
  @override
  int get issueNumber;
  @override
  String? get variantDescription;
  @override
  String? get description;
  @override
  String get modified;
  @override
  String get isbn;
  @override
  String get upc;
  @override
  String get diamondCode;
  @override
  String get ean;
  @override
  String get issn;
  @override
  String get format;
  @override
  int get pageCount;
  @override
  List<TextObject> get textObjects;
  @override
  String? get resourceUri;
  @override
  List<Url> get urls;
  @override
  Series get series;
  @override
  List<Series> get variants;
  @override
  List<Series> get collections;
  @override
  List<dynamic> get collectedIssues;
  @override
  List<Date> get dates;
  @override
  List<Price> get prices;
  @override
  Thumbnail get thumbnail;
  @override
  List<Thumbnail> get images;
  @override
  Creators get creators;
  @override
  Characters get characters;
  @override
  Stories get stories;
  @override
  Characters get events;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Characters _$CharactersFromJson(Map<String, dynamic> json) {
  return _Characters.fromJson(json);
}

/// @nodoc
mixin _$Characters {
  int get available => throw _privateConstructorUsedError;
  String? get collectionUri => throw _privateConstructorUsedError;
  List<Series> get items => throw _privateConstructorUsedError;
  int get returned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersCopyWith<Characters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersCopyWith<$Res> {
  factory $CharactersCopyWith(
          Characters value, $Res Function(Characters) then) =
      _$CharactersCopyWithImpl<$Res, Characters>;
  @useResult
  $Res call(
      {int available, String? collectionUri, List<Series> items, int returned});
}

/// @nodoc
class _$CharactersCopyWithImpl<$Res, $Val extends Characters>
    implements $CharactersCopyWith<$Res> {
  _$CharactersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? collectionUri = freezed,
    Object? items = null,
    Object? returned = null,
  }) {
    return _then(_value.copyWith(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      collectionUri: freezed == collectionUri
          ? _value.collectionUri
          : collectionUri // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      returned: null == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharactersImplCopyWith<$Res>
    implements $CharactersCopyWith<$Res> {
  factory _$$CharactersImplCopyWith(
          _$CharactersImpl value, $Res Function(_$CharactersImpl) then) =
      __$$CharactersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int available, String? collectionUri, List<Series> items, int returned});
}

/// @nodoc
class __$$CharactersImplCopyWithImpl<$Res>
    extends _$CharactersCopyWithImpl<$Res, _$CharactersImpl>
    implements _$$CharactersImplCopyWith<$Res> {
  __$$CharactersImplCopyWithImpl(
      _$CharactersImpl _value, $Res Function(_$CharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? collectionUri = freezed,
    Object? items = null,
    Object? returned = null,
  }) {
    return _then(_$CharactersImpl(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      collectionUri: freezed == collectionUri
          ? _value.collectionUri
          : collectionUri // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      returned: null == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharactersImpl implements _Characters {
  const _$CharactersImpl(
      {required this.available,
      required this.collectionUri,
      required final List<Series> items,
      required this.returned})
      : _items = items;

  factory _$CharactersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharactersImplFromJson(json);

  @override
  final int available;
  @override
  final String? collectionUri;
  final List<Series> _items;
  @override
  List<Series> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int returned;

  @override
  String toString() {
    return 'Characters(available: $available, collectionUri: $collectionUri, items: $items, returned: $returned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersImpl &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.collectionUri, collectionUri) ||
                other.collectionUri == collectionUri) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.returned, returned) ||
                other.returned == returned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, available, collectionUri,
      const DeepCollectionEquality().hash(_items), returned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersImplCopyWith<_$CharactersImpl> get copyWith =>
      __$$CharactersImplCopyWithImpl<_$CharactersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharactersImplToJson(
      this,
    );
  }
}

abstract class _Characters implements Characters {
  const factory _Characters(
      {required final int available,
      required final String? collectionUri,
      required final List<Series> items,
      required final int returned}) = _$CharactersImpl;

  factory _Characters.fromJson(Map<String, dynamic> json) =
      _$CharactersImpl.fromJson;

  @override
  int get available;
  @override
  String? get collectionUri;
  @override
  List<Series> get items;
  @override
  int get returned;
  @override
  @JsonKey(ignore: true)
  _$$CharactersImplCopyWith<_$CharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Series _$SeriesFromJson(Map<String, dynamic> json) {
  return _Series.fromJson(json);
}

/// @nodoc
mixin _$Series {
  String? get resourceUri => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesCopyWith<Series> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res, Series>;
  @useResult
  $Res call({String? resourceUri, String name});
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res, $Val extends Series>
    implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceUri = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeriesImplCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$$SeriesImplCopyWith(
          _$SeriesImpl value, $Res Function(_$SeriesImpl) then) =
      __$$SeriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? resourceUri, String name});
}

/// @nodoc
class __$$SeriesImplCopyWithImpl<$Res>
    extends _$SeriesCopyWithImpl<$Res, _$SeriesImpl>
    implements _$$SeriesImplCopyWith<$Res> {
  __$$SeriesImplCopyWithImpl(
      _$SeriesImpl _value, $Res Function(_$SeriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceUri = freezed,
    Object? name = null,
  }) {
    return _then(_$SeriesImpl(
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeriesImpl implements _Series {
  const _$SeriesImpl({required this.resourceUri, required this.name});

  factory _$SeriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeriesImplFromJson(json);

  @override
  final String? resourceUri;
  @override
  final String name;

  @override
  String toString() {
    return 'Series(resourceUri: $resourceUri, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesImpl &&
            (identical(other.resourceUri, resourceUri) ||
                other.resourceUri == resourceUri) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resourceUri, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesImplCopyWith<_$SeriesImpl> get copyWith =>
      __$$SeriesImplCopyWithImpl<_$SeriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeriesImplToJson(
      this,
    );
  }
}

abstract class _Series implements Series {
  const factory _Series(
      {required final String? resourceUri,
      required final String name}) = _$SeriesImpl;

  factory _Series.fromJson(Map<String, dynamic> json) = _$SeriesImpl.fromJson;

  @override
  String? get resourceUri;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SeriesImplCopyWith<_$SeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Creators _$CreatorsFromJson(Map<String, dynamic> json) {
  return _Creators.fromJson(json);
}

/// @nodoc
mixin _$Creators {
  int get available => throw _privateConstructorUsedError;
  String? get collectionUri => throw _privateConstructorUsedError;
  List<CreatorsItem> get items => throw _privateConstructorUsedError;
  int get returned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorsCopyWith<Creators> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorsCopyWith<$Res> {
  factory $CreatorsCopyWith(Creators value, $Res Function(Creators) then) =
      _$CreatorsCopyWithImpl<$Res, Creators>;
  @useResult
  $Res call(
      {int available,
      String? collectionUri,
      List<CreatorsItem> items,
      int returned});
}

/// @nodoc
class _$CreatorsCopyWithImpl<$Res, $Val extends Creators>
    implements $CreatorsCopyWith<$Res> {
  _$CreatorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? collectionUri = freezed,
    Object? items = null,
    Object? returned = null,
  }) {
    return _then(_value.copyWith(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      collectionUri: freezed == collectionUri
          ? _value.collectionUri
          : collectionUri // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreatorsItem>,
      returned: null == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatorsImplCopyWith<$Res>
    implements $CreatorsCopyWith<$Res> {
  factory _$$CreatorsImplCopyWith(
          _$CreatorsImpl value, $Res Function(_$CreatorsImpl) then) =
      __$$CreatorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int available,
      String? collectionUri,
      List<CreatorsItem> items,
      int returned});
}

/// @nodoc
class __$$CreatorsImplCopyWithImpl<$Res>
    extends _$CreatorsCopyWithImpl<$Res, _$CreatorsImpl>
    implements _$$CreatorsImplCopyWith<$Res> {
  __$$CreatorsImplCopyWithImpl(
      _$CreatorsImpl _value, $Res Function(_$CreatorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? collectionUri = freezed,
    Object? items = null,
    Object? returned = null,
  }) {
    return _then(_$CreatorsImpl(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      collectionUri: freezed == collectionUri
          ? _value.collectionUri
          : collectionUri // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreatorsItem>,
      returned: null == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatorsImpl implements _Creators {
  const _$CreatorsImpl(
      {required this.available,
      required this.collectionUri,
      required final List<CreatorsItem> items,
      required this.returned})
      : _items = items;

  factory _$CreatorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatorsImplFromJson(json);

  @override
  final int available;
  @override
  final String? collectionUri;
  final List<CreatorsItem> _items;
  @override
  List<CreatorsItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int returned;

  @override
  String toString() {
    return 'Creators(available: $available, collectionUri: $collectionUri, items: $items, returned: $returned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatorsImpl &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.collectionUri, collectionUri) ||
                other.collectionUri == collectionUri) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.returned, returned) ||
                other.returned == returned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, available, collectionUri,
      const DeepCollectionEquality().hash(_items), returned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatorsImplCopyWith<_$CreatorsImpl> get copyWith =>
      __$$CreatorsImplCopyWithImpl<_$CreatorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatorsImplToJson(
      this,
    );
  }
}

abstract class _Creators implements Creators {
  const factory _Creators(
      {required final int available,
      required final String? collectionUri,
      required final List<CreatorsItem> items,
      required final int returned}) = _$CreatorsImpl;

  factory _Creators.fromJson(Map<String, dynamic> json) =
      _$CreatorsImpl.fromJson;

  @override
  int get available;
  @override
  String? get collectionUri;
  @override
  List<CreatorsItem> get items;
  @override
  int get returned;
  @override
  @JsonKey(ignore: true)
  _$$CreatorsImplCopyWith<_$CreatorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatorsItem _$CreatorsItemFromJson(Map<String, dynamic> json) {
  return _CreatorsItem.fromJson(json);
}

/// @nodoc
mixin _$CreatorsItem {
  String? get resourceUri => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorsItemCopyWith<CreatorsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorsItemCopyWith<$Res> {
  factory $CreatorsItemCopyWith(
          CreatorsItem value, $Res Function(CreatorsItem) then) =
      _$CreatorsItemCopyWithImpl<$Res, CreatorsItem>;
  @useResult
  $Res call({String? resourceUri, String name, String role});
}

/// @nodoc
class _$CreatorsItemCopyWithImpl<$Res, $Val extends CreatorsItem>
    implements $CreatorsItemCopyWith<$Res> {
  _$CreatorsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceUri = freezed,
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatorsItemImplCopyWith<$Res>
    implements $CreatorsItemCopyWith<$Res> {
  factory _$$CreatorsItemImplCopyWith(
          _$CreatorsItemImpl value, $Res Function(_$CreatorsItemImpl) then) =
      __$$CreatorsItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? resourceUri, String name, String role});
}

/// @nodoc
class __$$CreatorsItemImplCopyWithImpl<$Res>
    extends _$CreatorsItemCopyWithImpl<$Res, _$CreatorsItemImpl>
    implements _$$CreatorsItemImplCopyWith<$Res> {
  __$$CreatorsItemImplCopyWithImpl(
      _$CreatorsItemImpl _value, $Res Function(_$CreatorsItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceUri = freezed,
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_$CreatorsItemImpl(
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatorsItemImpl implements _CreatorsItem {
  const _$CreatorsItemImpl(
      {required this.resourceUri, required this.name, required this.role});

  factory _$CreatorsItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatorsItemImplFromJson(json);

  @override
  final String? resourceUri;
  @override
  final String name;
  @override
  final String role;

  @override
  String toString() {
    return 'CreatorsItem(resourceUri: $resourceUri, name: $name, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatorsItemImpl &&
            (identical(other.resourceUri, resourceUri) ||
                other.resourceUri == resourceUri) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resourceUri, name, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatorsItemImplCopyWith<_$CreatorsItemImpl> get copyWith =>
      __$$CreatorsItemImplCopyWithImpl<_$CreatorsItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatorsItemImplToJson(
      this,
    );
  }
}

abstract class _CreatorsItem implements CreatorsItem {
  const factory _CreatorsItem(
      {required final String? resourceUri,
      required final String name,
      required final String role}) = _$CreatorsItemImpl;

  factory _CreatorsItem.fromJson(Map<String, dynamic> json) =
      _$CreatorsItemImpl.fromJson;

  @override
  String? get resourceUri;
  @override
  String get name;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$CreatorsItemImplCopyWith<_$CreatorsItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Date _$DateFromJson(Map<String, dynamic> json) {
  return _Date.fromJson(json);
}

/// @nodoc
mixin _$Date {
  String get type => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateCopyWith<Date> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateCopyWith<$Res> {
  factory $DateCopyWith(Date value, $Res Function(Date) then) =
      _$DateCopyWithImpl<$Res, Date>;
  @useResult
  $Res call({String type, String date});
}

/// @nodoc
class _$DateCopyWithImpl<$Res, $Val extends Date>
    implements $DateCopyWith<$Res> {
  _$DateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateImplCopyWith<$Res> implements $DateCopyWith<$Res> {
  factory _$$DateImplCopyWith(
          _$DateImpl value, $Res Function(_$DateImpl) then) =
      __$$DateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String date});
}

/// @nodoc
class __$$DateImplCopyWithImpl<$Res>
    extends _$DateCopyWithImpl<$Res, _$DateImpl>
    implements _$$DateImplCopyWith<$Res> {
  __$$DateImplCopyWithImpl(_$DateImpl _value, $Res Function(_$DateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
  }) {
    return _then(_$DateImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateImpl implements _Date {
  const _$DateImpl({required this.type, required this.date});

  factory _$DateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateImplFromJson(json);

  @override
  final String type;
  @override
  final String date;

  @override
  String toString() {
    return 'Date(type: $type, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      __$$DateImplCopyWithImpl<_$DateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateImplToJson(
      this,
    );
  }
}

abstract class _Date implements Date {
  const factory _Date(
      {required final String type, required final String date}) = _$DateImpl;

  factory _Date.fromJson(Map<String, dynamic> json) = _$DateImpl.fromJson;

  @override
  String get type;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) {
  return _Thumbnail.fromJson(json);
}

/// @nodoc
mixin _$Thumbnail {
  String get path => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailCopyWith<Thumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailCopyWith<$Res> {
  factory $ThumbnailCopyWith(Thumbnail value, $Res Function(Thumbnail) then) =
      _$ThumbnailCopyWithImpl<$Res, Thumbnail>;
  @useResult
  $Res call({String path, String extension});
}

/// @nodoc
class _$ThumbnailCopyWithImpl<$Res, $Val extends Thumbnail>
    implements $ThumbnailCopyWith<$Res> {
  _$ThumbnailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? extension = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThumbnailImplCopyWith<$Res>
    implements $ThumbnailCopyWith<$Res> {
  factory _$$ThumbnailImplCopyWith(
          _$ThumbnailImpl value, $Res Function(_$ThumbnailImpl) then) =
      __$$ThumbnailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String extension});
}

/// @nodoc
class __$$ThumbnailImplCopyWithImpl<$Res>
    extends _$ThumbnailCopyWithImpl<$Res, _$ThumbnailImpl>
    implements _$$ThumbnailImplCopyWith<$Res> {
  __$$ThumbnailImplCopyWithImpl(
      _$ThumbnailImpl _value, $Res Function(_$ThumbnailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? extension = null,
  }) {
    return _then(_$ThumbnailImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThumbnailImpl implements _Thumbnail {
  const _$ThumbnailImpl({required this.path, required this.extension});

  factory _$ThumbnailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThumbnailImplFromJson(json);

  @override
  final String path;
  @override
  final String extension;

  @override
  String toString() {
    return 'Thumbnail(path: $path, extension: $extension)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.extension, extension) ||
                other.extension == extension));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, extension);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailImplCopyWith<_$ThumbnailImpl> get copyWith =>
      __$$ThumbnailImplCopyWithImpl<_$ThumbnailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThumbnailImplToJson(
      this,
    );
  }
}

abstract class _Thumbnail implements Thumbnail {
  const factory _Thumbnail(
      {required final String path,
      required final String extension}) = _$ThumbnailImpl;

  factory _Thumbnail.fromJson(Map<String, dynamic> json) =
      _$ThumbnailImpl.fromJson;

  @override
  String get path;
  @override
  String get extension;
  @override
  @JsonKey(ignore: true)
  _$$ThumbnailImplCopyWith<_$ThumbnailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  String get type => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call({String type, double price});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceImplCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$PriceImplCopyWith(
          _$PriceImpl value, $Res Function(_$PriceImpl) then) =
      __$$PriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, double price});
}

/// @nodoc
class __$$PriceImplCopyWithImpl<$Res>
    extends _$PriceCopyWithImpl<$Res, _$PriceImpl>
    implements _$$PriceImplCopyWith<$Res> {
  __$$PriceImplCopyWithImpl(
      _$PriceImpl _value, $Res Function(_$PriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? price = null,
  }) {
    return _then(_$PriceImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceImpl implements _Price {
  const _$PriceImpl({required this.type, required this.price});

  factory _$PriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceImplFromJson(json);

  @override
  final String type;
  @override
  final double price;

  @override
  String toString() {
    return 'Price(type: $type, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      __$$PriceImplCopyWithImpl<_$PriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceImplToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  const factory _Price(
      {required final String type, required final double price}) = _$PriceImpl;

  factory _Price.fromJson(Map<String, dynamic> json) = _$PriceImpl.fromJson;

  @override
  String get type;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Stories _$StoriesFromJson(Map<String, dynamic> json) {
  return _Stories.fromJson(json);
}

/// @nodoc
mixin _$Stories {
  int get available => throw _privateConstructorUsedError;
  String? get collectionUri => throw _privateConstructorUsedError;
  List<StoriesItem> get items => throw _privateConstructorUsedError;
  int get returned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoriesCopyWith<Stories> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesCopyWith<$Res> {
  factory $StoriesCopyWith(Stories value, $Res Function(Stories) then) =
      _$StoriesCopyWithImpl<$Res, Stories>;
  @useResult
  $Res call(
      {int available,
      String? collectionUri,
      List<StoriesItem> items,
      int returned});
}

/// @nodoc
class _$StoriesCopyWithImpl<$Res, $Val extends Stories>
    implements $StoriesCopyWith<$Res> {
  _$StoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? collectionUri = freezed,
    Object? items = null,
    Object? returned = null,
  }) {
    return _then(_value.copyWith(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      collectionUri: freezed == collectionUri
          ? _value.collectionUri
          : collectionUri // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<StoriesItem>,
      returned: null == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoriesImplCopyWith<$Res> implements $StoriesCopyWith<$Res> {
  factory _$$StoriesImplCopyWith(
          _$StoriesImpl value, $Res Function(_$StoriesImpl) then) =
      __$$StoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int available,
      String? collectionUri,
      List<StoriesItem> items,
      int returned});
}

/// @nodoc
class __$$StoriesImplCopyWithImpl<$Res>
    extends _$StoriesCopyWithImpl<$Res, _$StoriesImpl>
    implements _$$StoriesImplCopyWith<$Res> {
  __$$StoriesImplCopyWithImpl(
      _$StoriesImpl _value, $Res Function(_$StoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? collectionUri = freezed,
    Object? items = null,
    Object? returned = null,
  }) {
    return _then(_$StoriesImpl(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      collectionUri: freezed == collectionUri
          ? _value.collectionUri
          : collectionUri // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<StoriesItem>,
      returned: null == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoriesImpl implements _Stories {
  const _$StoriesImpl(
      {required this.available,
      required this.collectionUri,
      required final List<StoriesItem> items,
      required this.returned})
      : _items = items;

  factory _$StoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoriesImplFromJson(json);

  @override
  final int available;
  @override
  final String? collectionUri;
  final List<StoriesItem> _items;
  @override
  List<StoriesItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int returned;

  @override
  String toString() {
    return 'Stories(available: $available, collectionUri: $collectionUri, items: $items, returned: $returned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesImpl &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.collectionUri, collectionUri) ||
                other.collectionUri == collectionUri) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.returned, returned) ||
                other.returned == returned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, available, collectionUri,
      const DeepCollectionEquality().hash(_items), returned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesImplCopyWith<_$StoriesImpl> get copyWith =>
      __$$StoriesImplCopyWithImpl<_$StoriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoriesImplToJson(
      this,
    );
  }
}

abstract class _Stories implements Stories {
  const factory _Stories(
      {required final int available,
      required final String? collectionUri,
      required final List<StoriesItem> items,
      required final int returned}) = _$StoriesImpl;

  factory _Stories.fromJson(Map<String, dynamic> json) = _$StoriesImpl.fromJson;

  @override
  int get available;
  @override
  String? get collectionUri;
  @override
  List<StoriesItem> get items;
  @override
  int get returned;
  @override
  @JsonKey(ignore: true)
  _$$StoriesImplCopyWith<_$StoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoriesItem _$StoriesItemFromJson(Map<String, dynamic> json) {
  return _StoriesItem.fromJson(json);
}

/// @nodoc
mixin _$StoriesItem {
  String? get resourceUri => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoriesItemCopyWith<StoriesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesItemCopyWith<$Res> {
  factory $StoriesItemCopyWith(
          StoriesItem value, $Res Function(StoriesItem) then) =
      _$StoriesItemCopyWithImpl<$Res, StoriesItem>;
  @useResult
  $Res call({String? resourceUri, String? name, String? type});
}

/// @nodoc
class _$StoriesItemCopyWithImpl<$Res, $Val extends StoriesItem>
    implements $StoriesItemCopyWith<$Res> {
  _$StoriesItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceUri = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoriesItemImplCopyWith<$Res>
    implements $StoriesItemCopyWith<$Res> {
  factory _$$StoriesItemImplCopyWith(
          _$StoriesItemImpl value, $Res Function(_$StoriesItemImpl) then) =
      __$$StoriesItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? resourceUri, String? name, String? type});
}

/// @nodoc
class __$$StoriesItemImplCopyWithImpl<$Res>
    extends _$StoriesItemCopyWithImpl<$Res, _$StoriesItemImpl>
    implements _$$StoriesItemImplCopyWith<$Res> {
  __$$StoriesItemImplCopyWithImpl(
      _$StoriesItemImpl _value, $Res Function(_$StoriesItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceUri = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_$StoriesItemImpl(
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoriesItemImpl implements _StoriesItem {
  const _$StoriesItemImpl(
      {required this.resourceUri, required this.name, required this.type});

  factory _$StoriesItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoriesItemImplFromJson(json);

  @override
  final String? resourceUri;
  @override
  final String? name;
  @override
  final String? type;

  @override
  String toString() {
    return 'StoriesItem(resourceUri: $resourceUri, name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesItemImpl &&
            (identical(other.resourceUri, resourceUri) ||
                other.resourceUri == resourceUri) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resourceUri, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesItemImplCopyWith<_$StoriesItemImpl> get copyWith =>
      __$$StoriesItemImplCopyWithImpl<_$StoriesItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoriesItemImplToJson(
      this,
    );
  }
}

abstract class _StoriesItem implements StoriesItem {
  const factory _StoriesItem(
      {required final String? resourceUri,
      required final String? name,
      required final String? type}) = _$StoriesItemImpl;

  factory _StoriesItem.fromJson(Map<String, dynamic> json) =
      _$StoriesItemImpl.fromJson;

  @override
  String? get resourceUri;
  @override
  String? get name;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$StoriesItemImplCopyWith<_$StoriesItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TextObject _$TextObjectFromJson(Map<String, dynamic> json) {
  return _TextObject.fromJson(json);
}

/// @nodoc
mixin _$TextObject {
  String get type => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextObjectCopyWith<TextObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextObjectCopyWith<$Res> {
  factory $TextObjectCopyWith(
          TextObject value, $Res Function(TextObject) then) =
      _$TextObjectCopyWithImpl<$Res, TextObject>;
  @useResult
  $Res call({String type, String language, String text});
}

/// @nodoc
class _$TextObjectCopyWithImpl<$Res, $Val extends TextObject>
    implements $TextObjectCopyWith<$Res> {
  _$TextObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? language = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextObjectImplCopyWith<$Res>
    implements $TextObjectCopyWith<$Res> {
  factory _$$TextObjectImplCopyWith(
          _$TextObjectImpl value, $Res Function(_$TextObjectImpl) then) =
      __$$TextObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String language, String text});
}

/// @nodoc
class __$$TextObjectImplCopyWithImpl<$Res>
    extends _$TextObjectCopyWithImpl<$Res, _$TextObjectImpl>
    implements _$$TextObjectImplCopyWith<$Res> {
  __$$TextObjectImplCopyWithImpl(
      _$TextObjectImpl _value, $Res Function(_$TextObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? language = null,
    Object? text = null,
  }) {
    return _then(_$TextObjectImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextObjectImpl implements _TextObject {
  const _$TextObjectImpl(
      {required this.type, required this.language, required this.text});

  factory _$TextObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextObjectImplFromJson(json);

  @override
  final String type;
  @override
  final String language;
  @override
  final String text;

  @override
  String toString() {
    return 'TextObject(type: $type, language: $language, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextObjectImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, language, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextObjectImplCopyWith<_$TextObjectImpl> get copyWith =>
      __$$TextObjectImplCopyWithImpl<_$TextObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextObjectImplToJson(
      this,
    );
  }
}

abstract class _TextObject implements TextObject {
  const factory _TextObject(
      {required final String type,
      required final String language,
      required final String text}) = _$TextObjectImpl;

  factory _TextObject.fromJson(Map<String, dynamic> json) =
      _$TextObjectImpl.fromJson;

  @override
  String get type;
  @override
  String get language;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$TextObjectImplCopyWith<_$TextObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Url _$UrlFromJson(Map<String, dynamic> json) {
  return _Url.fromJson(json);
}

/// @nodoc
mixin _$Url {
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlCopyWith<Url> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlCopyWith<$Res> {
  factory $UrlCopyWith(Url value, $Res Function(Url) then) =
      _$UrlCopyWithImpl<$Res, Url>;
  @useResult
  $Res call({String type, String url});
}

/// @nodoc
class _$UrlCopyWithImpl<$Res, $Val extends Url> implements $UrlCopyWith<$Res> {
  _$UrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlImplCopyWith<$Res> implements $UrlCopyWith<$Res> {
  factory _$$UrlImplCopyWith(_$UrlImpl value, $Res Function(_$UrlImpl) then) =
      __$$UrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String url});
}

/// @nodoc
class __$$UrlImplCopyWithImpl<$Res> extends _$UrlCopyWithImpl<$Res, _$UrlImpl>
    implements _$$UrlImplCopyWith<$Res> {
  __$$UrlImplCopyWithImpl(_$UrlImpl _value, $Res Function(_$UrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$UrlImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlImpl implements _Url {
  const _$UrlImpl({required this.type, required this.url});

  factory _$UrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlImplFromJson(json);

  @override
  final String type;
  @override
  final String url;

  @override
  String toString() {
    return 'Url(type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlImplCopyWith<_$UrlImpl> get copyWith =>
      __$$UrlImplCopyWithImpl<_$UrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlImplToJson(
      this,
    );
  }
}

abstract class _Url implements Url {
  const factory _Url({required final String type, required final String url}) =
      _$UrlImpl;

  factory _Url.fromJson(Map<String, dynamic> json) = _$UrlImpl.fromJson;

  @override
  String get type;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$UrlImplCopyWith<_$UrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
