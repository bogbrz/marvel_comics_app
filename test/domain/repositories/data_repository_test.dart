import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mood_up_recruitment_task/domain/data_sources/data_source.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:mood_up_recruitment_task/domain/repositories/data_repository.dart';

class MockDataSource extends Mock implements RemoteDataSource {}

void main() {
  late DataRepository sut;
  late MockDataSource dataSoure;

  setUp(() {
    dataSoure = MockDataSource();
    sut = DataRepository(remoteDataSource: dataSoure);
  });

  group("getComics", () {
    test("should return Data model from IntialData", () async {
      when(
        () => dataSoure.getComics(skip: 0),
      ).thenAnswer((_) async => InitialData(
          code: 200,
          status: "status",
          copyright: "copyright",
          attributionText: "attributionText",
          attributionHtml: "attributionHtml",
          etag: "etag",
          data: Data(offset: 0, limit: 0, total: 0, count: 0, results: [])));

      final result = await sut.getComics(skip: 0);

      expect(
          result, Data(offset: 0, limit: 0, total: 0, count: 0, results: []));
    });
    test("should call remoteDataSource.getComic() once", () async {
      when(
        () => dataSoure.getComics(skip: 0),
      ).thenAnswer((_) async => InitialData(
          code: 200,
          status: "status",
          copyright: "copyright",
          attributionText: "attributionText",
          attributionHtml: "attributionHtml",
          etag: "etag",
          data: Data(offset: 0, limit: 0, total: 0, count: 0, results: [])));

      await sut.getComics(skip: 0);

      verify(
        () => dataSoure.getComics(skip: 0),
      ).called(1);
    });
  });
}
