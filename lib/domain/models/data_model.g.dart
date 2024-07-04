// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialDataImpl _$$InitialDataImplFromJson(Map<String, dynamic> json) =>
    _$InitialDataImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as String?,
      copyright: json['copyright'] as String?,
      attributionText: json['attributionText'] as String?,
      attributionHtml: json['attributionHtml'] as String?,
      etag: json['etag'] as String?,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InitialDataImplToJson(_$InitialDataImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'copyright': instance.copyright,
      'attributionText': instance.attributionText,
      'attributionHtml': instance.attributionHtml,
      'etag': instance.etag,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      offset: (json['offset'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: (json['id'] as num).toInt(),
      digitalId: (json['digitalId'] as num).toInt(),
      title: json['title'] as String?,
      issueNumber: (json['issueNumber'] as num).toInt(),
      variantDescription: json['variantDescription'] as String?,
      description: json['description'] as String?,
      modified: json['modified'] as String,
      isbn: json['isbn'] as String,
      upc: json['upc'] as String,
      diamondCode: json['diamondCode'] as String,
      ean: json['ean'] as String,
      issn: json['issn'] as String,
      format: json['format'] as String,
      pageCount: (json['pageCount'] as num).toInt(),
      textObjects: (json['textObjects'] as List<dynamic>)
          .map((e) => TextObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceUri: json['resourceUri'] as String?,
      urls: (json['urls'] as List<dynamic>)
          .map((e) => Url.fromJson(e as Map<String, dynamic>))
          .toList(),
      series: Series.fromJson(json['series'] as Map<String, dynamic>),
      variants: (json['variants'] as List<dynamic>)
          .map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
      collections: (json['collections'] as List<dynamic>)
          .map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
      collectedIssues: json['collectedIssues'] as List<dynamic>,
      dates: (json['dates'] as List<dynamic>)
          .map((e) => Date.fromJson(e as Map<String, dynamic>))
          .toList(),
      prices: (json['prices'] as List<dynamic>)
          .map((e) => Price.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      creators: Creators.fromJson(json['creators'] as Map<String, dynamic>),
      characters:
          Characters.fromJson(json['characters'] as Map<String, dynamic>),
      stories: Stories.fromJson(json['stories'] as Map<String, dynamic>),
      events: Characters.fromJson(json['events'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'digitalId': instance.digitalId,
      'title': instance.title,
      'issueNumber': instance.issueNumber,
      'variantDescription': instance.variantDescription,
      'description': instance.description,
      'modified': instance.modified,
      'isbn': instance.isbn,
      'upc': instance.upc,
      'diamondCode': instance.diamondCode,
      'ean': instance.ean,
      'issn': instance.issn,
      'format': instance.format,
      'pageCount': instance.pageCount,
      'textObjects': instance.textObjects,
      'resourceUri': instance.resourceUri,
      'urls': instance.urls,
      'series': instance.series,
      'variants': instance.variants,
      'collections': instance.collections,
      'collectedIssues': instance.collectedIssues,
      'dates': instance.dates,
      'prices': instance.prices,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
      'creators': instance.creators,
      'characters': instance.characters,
      'stories': instance.stories,
      'events': instance.events,
    };

_$CharactersImpl _$$CharactersImplFromJson(Map<String, dynamic> json) =>
    _$CharactersImpl(
      available: (json['available'] as num).toInt(),
      collectionUri: json['collectionUri'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: (json['returned'] as num).toInt(),
    );

Map<String, dynamic> _$$CharactersImplToJson(_$CharactersImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'collectionUri': instance.collectionUri,
      'items': instance.items,
      'returned': instance.returned,
    };

_$SeriesImpl _$$SeriesImplFromJson(Map<String, dynamic> json) => _$SeriesImpl(
      resourceUri: json['resourceUri'] as String?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SeriesImplToJson(_$SeriesImpl instance) =>
    <String, dynamic>{
      'resourceUri': instance.resourceUri,
      'name': instance.name,
    };

_$CreatorsImpl _$$CreatorsImplFromJson(Map<String, dynamic> json) =>
    _$CreatorsImpl(
      available: (json['available'] as num).toInt(),
      collectionUri: json['collectionUri'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => CreatorsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: (json['returned'] as num).toInt(),
    );

Map<String, dynamic> _$$CreatorsImplToJson(_$CreatorsImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'collectionUri': instance.collectionUri,
      'items': instance.items,
      'returned': instance.returned,
    };

_$CreatorsItemImpl _$$CreatorsItemImplFromJson(Map<String, dynamic> json) =>
    _$CreatorsItemImpl(
      resourceUri: json['resourceUri'] as String?,
      name: json['name'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$CreatorsItemImplToJson(_$CreatorsItemImpl instance) =>
    <String, dynamic>{
      'resourceUri': instance.resourceUri,
      'name': instance.name,
      'role': instance.role,
    };

_$DateImpl _$$DateImplFromJson(Map<String, dynamic> json) => _$DateImpl(
      type: json['type'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$DateImplToJson(_$DateImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'date': instance.date,
    };

_$ThumbnailImpl _$$ThumbnailImplFromJson(Map<String, dynamic> json) =>
    _$ThumbnailImpl(
      path: json['path'] as String,
      extension: json['extension'] as String,
    );

Map<String, dynamic> _$$ThumbnailImplToJson(_$ThumbnailImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'extension': instance.extension,
    };

_$PriceImpl _$$PriceImplFromJson(Map<String, dynamic> json) => _$PriceImpl(
      type: json['type'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$PriceImplToJson(_$PriceImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'price': instance.price,
    };

_$StoriesImpl _$$StoriesImplFromJson(Map<String, dynamic> json) =>
    _$StoriesImpl(
      available: (json['available'] as num).toInt(),
      collectionUri: json['collectionUri'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => StoriesItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: (json['returned'] as num).toInt(),
    );

Map<String, dynamic> _$$StoriesImplToJson(_$StoriesImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'collectionUri': instance.collectionUri,
      'items': instance.items,
      'returned': instance.returned,
    };

_$StoriesItemImpl _$$StoriesItemImplFromJson(Map<String, dynamic> json) =>
    _$StoriesItemImpl(
      resourceUri: json['resourceUri'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$StoriesItemImplToJson(_$StoriesItemImpl instance) =>
    <String, dynamic>{
      'resourceUri': instance.resourceUri,
      'name': instance.name,
      'type': instance.type,
    };

_$TextObjectImpl _$$TextObjectImplFromJson(Map<String, dynamic> json) =>
    _$TextObjectImpl(
      type: json['type'] as String,
      language: json['language'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$TextObjectImplToJson(_$TextObjectImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'language': instance.language,
      'text': instance.text,
    };

_$UrlImpl _$$UrlImplFromJson(Map<String, dynamic> json) => _$UrlImpl(
      type: json['type'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$UrlImplToJson(_$UrlImpl instance) => <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
    };
