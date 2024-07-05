import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:mood_up_recruitment_task/domain/repositories/data_repository.dart';
import 'package:mood_up_recruitment_task/enums.dart';
import 'package:mood_up_recruitment_task/features/pages/search_page/cubit/search_page_cubit.dart';

class MockDataRepository extends Mock implements DataRepository {}

void main() {
  late SearchPageCubit sut;
  late MockDataRepository repository;

  setUp(() {
    repository = MockDataRepository();
    sut = SearchPageCubit(dataRepository: repository);
  });

  group("start", () {
    group("succes", () {
      setUp(() {
        when(
          () => repository.getComics(skip: 0, title: "ant-man"),
        ).thenAnswer((_) async =>
            Data(offset: 0, limit: 0, total: 2, count: 2, results: [
              Result(
                  id: 2,
                  digitalId: 1,
                  title: "1",
                  issueNumber: 1,
                  variantDescription: "variantDescription",
                  description: "description",
                  modified: "1",
                  isbn: "isbn",
                  upc: "upc",
                  diamondCode: "diamondCode",
                  ean: "ean",
                  issn: "issn",
                  format: "format",
                  pageCount: 1,
                  textObjects: [],
                  resourceUri: null,
                  urls: [],
                  series: Series(resourceUri: null, name: "name"),
                  variants: [],
                  collections: [],
                  collectedIssues: [],
                  dates: [],
                  prices: [],
                  thumbnail: Thumbnail(path: "path", extension: "extension"),
                  images: [],
                  creators: Creators(
                      available: 1,
                      collectionUri: null,
                      items: [
                        CreatorsItem(
                            resourceUri: null, name: "name", role: "role")
                      ],
                      returned: 1),
                  characters: Characters(
                      available: 1,
                      collectionUri: null,
                      items: [],
                      returned: 1),
                  stories: Stories(
                      available: 1,
                      collectionUri: null,
                      items: [],
                      returned: 1),
                  events: Characters(
                      available: 1,
                      collectionUri: null,
                      items: [],
                      returned: 1)),
            ]));
      });
      blocTest<SearchPageCubit, SearchPageState>(
        "emit status loading then  emit searchStatus success with results and data",
        build: () => sut,
        act: (cubit) => cubit.getComicsByTitle(skip: 0, title: 'ant-man'),
        expect: () => [
          const SearchPageState(
              searchStatus: SearchStatus.loading,
              hasMore: true,
              results: [],
              data: null,
              errorMessage: null),
          const SearchPageState(
              searchStatus: SearchStatus.success,
              hasMore: true,
              results: [
                Result(
                    id: 2,
                    digitalId: 1,
                    title: "1",
                    issueNumber: 1,
                    variantDescription: "variantDescription",
                    description: "description",
                    modified: "1",
                    isbn: "isbn",
                    upc: "upc",
                    diamondCode: "diamondCode",
                    ean: "ean",
                    issn: "issn",
                    format: "format",
                    pageCount: 1,
                    textObjects: [],
                    resourceUri: null,
                    urls: [],
                    series: Series(resourceUri: null, name: "name"),
                    variants: [],
                    collections: [],
                    collectedIssues: [],
                    dates: [],
                    prices: [],
                    thumbnail: Thumbnail(path: "path", extension: "extension"),
                    images: [],
                    creators: Creators(
                        available: 1,
                        collectionUri: null,
                        items: [
                          CreatorsItem(
                              resourceUri: null, name: "name", role: "role")
                        ],
                        returned: 1),
                    characters: Characters(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1),
                    stories: Stories(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1),
                    events: Characters(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1)),
              ],
              data: Data(offset: 0, limit: 0, total: 2, count: 2, results: [
                Result(
                    id: 2,
                    digitalId: 1,
                    title: "1",
                    issueNumber: 1,
                    variantDescription: "variantDescription",
                    description: "description",
                    modified: "1",
                    isbn: "isbn",
                    upc: "upc",
                    diamondCode: "diamondCode",
                    ean: "ean",
                    issn: "issn",
                    format: "format",
                    pageCount: 1,
                    textObjects: [],
                    resourceUri: null,
                    urls: [],
                    series: Series(resourceUri: null, name: "name"),
                    variants: [],
                    collections: [],
                    collectedIssues: [],
                    dates: [],
                    prices: [],
                    thumbnail: Thumbnail(path: "path", extension: "extension"),
                    images: [],
                    creators: Creators(
                        available: 1,
                        collectionUri: null,
                        items: [
                          CreatorsItem(
                              resourceUri: null, name: "name", role: "role")
                        ],
                        returned: 1),
                    characters: Characters(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1),
                    stories: Stories(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1),
                    events: Characters(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1)),
              ]),
              errorMessage: null)
        ],
      );
    });
  });

  group("empty", () {
    setUp(() {
      when(
        () => repository.getComics(skip: 0, title: "ant-man"),
      ).thenAnswer((_) async =>
          Data(offset: 0, limit: 0, total: 2, count: 2, results: []));
    });
    blocTest<SearchPageCubit, SearchPageState>(
      "emit status loading then  emit searchStatus empty with [] and data",
      build: () => sut,
      act: (cubit) => cubit.getComicsByTitle(skip: 0, title: 'ant-man'),
      expect: () => [
        const SearchPageState(
            searchStatus: SearchStatus.loading,
            hasMore: true,
            results: [],
            data: null,
            errorMessage: null),
        const SearchPageState(
            searchStatus: SearchStatus.empty,
            hasMore: true,
            results: [],
            data: null,
            errorMessage: null)
      ],
    );
  });

  group("getMoreDATA", () {
    group("succes", () {
      setUp(() {
        when(
          () => repository.getComics(skip: 0, title: "ant-man"),
        ).thenAnswer((_) async =>
            const Data(offset: 0, limit: 0, total: 2, count: 2, results: [
              Result(
                  id: 1,
                  digitalId: 1,
                  title: "1",
                  issueNumber: 1,
                  variantDescription: "variantDescription",
                  description: null,
                  modified: "1",
                  isbn: "isbn",
                  upc: "upc",
                  diamondCode: "diamondCode",
                  ean: "ean",
                  issn: "issn",
                  format: "format",
                  pageCount: 1,
                  textObjects: [],
                  resourceUri: null,
                  urls: [],
                  series: Series(resourceUri: null, name: "name"),
                  variants: [],
                  collections: [],
                  collectedIssues: [],
                  dates: [],
                  prices: [],
                  thumbnail: Thumbnail(path: "path", extension: "extension"),
                  images: [],
                  creators: Creators(
                      available: 1,
                      collectionUri: null,
                      items: [
                        CreatorsItem(
                            resourceUri: null, name: "name", role: "role")
                      ],
                      returned: 1),
                  characters: Characters(
                      available: 1,
                      collectionUri: null,
                      items: [],
                      returned: 1),
                  stories: Stories(
                      available: 1,
                      collectionUri: null,
                      items: [],
                      returned: 1),
                  events: Characters(
                      available: 1,
                      collectionUri: null,
                      items: [],
                      returned: 1)),
              Result(
                  id: 2,
                  digitalId: 1,
                  title: "1",
                  issueNumber: 1,
                  variantDescription: "variantDescription",
                  description: "description",
                  modified: "1",
                  isbn: "isbn",
                  upc: "upc",
                  diamondCode: "diamondCode",
                  ean: "ean",
                  issn: "issn",
                  format: "format",
                  pageCount: 1,
                  textObjects: [],
                  resourceUri: null,
                  urls: [],
                  series: Series(resourceUri: null, name: "name"),
                  variants: [],
                  collections: [],
                  collectedIssues: [],
                  dates: [],
                  prices: [],
                  thumbnail: Thumbnail(path: "path", extension: "extension"),
                  images: [],
                  creators: Creators(
                      available: 1,
                      collectionUri: null,
                      items: [
                        CreatorsItem(
                            resourceUri: null, name: "name", role: "role")
                      ],
                      returned: 1),
                  characters: Characters(
                      available: 1,
                      collectionUri: null,
                      items: [],
                      returned: 1),
                  stories: Stories(
                      available: 1,
                      collectionUri: null,
                      items: [],
                      returned: 1),
                  events: Characters(
                      available: 1,
                      collectionUri: null,
                      items: [],
                      returned: 1)),
            ]));
      });
      blocTest(
        "emit Status loading then filter results and emit status succes with filtered results and data",
        build: () => sut,
        act: (cubit) => cubit.getMoreData(skip: 0, title: "ant-man"),
        expect: () => [
          const SearchPageState(
              searchStatus: SearchStatus.success,
              results: [
                Result(
                    id: 2,
                    digitalId: 1,
                    title: "1",
                    issueNumber: 1,
                    variantDescription: "variantDescription",
                    description: "description",
                    modified: "1",
                    isbn: "isbn",
                    upc: "upc",
                    diamondCode: "diamondCode",
                    ean: "ean",
                    issn: "issn",
                    format: "format",
                    pageCount: 1,
                    textObjects: [],
                    resourceUri: null,
                    urls: [],
                    series: Series(resourceUri: null, name: "name"),
                    variants: [],
                    collections: [],
                    collectedIssues: [],
                    dates: [],
                    prices: [],
                    thumbnail: Thumbnail(path: "path", extension: "extension"),
                    images: [],
                    creators: Creators(
                        available: 1,
                        collectionUri: null,
                        items: [
                          CreatorsItem(
                              resourceUri: null, name: "name", role: "role")
                        ],
                        returned: 1),
                    characters: Characters(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1),
                    stories: Stories(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1),
                    events: Characters(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1)),
              ],
              data:
                  const Data(offset: 0, limit: 0, total: 2, count: 2, results: [
                Result(
                    id: 1,
                    digitalId: 1,
                    title: "1",
                    issueNumber: 1,
                    variantDescription: "variantDescription",
                    description: null,
                    modified: "1",
                    isbn: "isbn",
                    upc: "upc",
                    diamondCode: "diamondCode",
                    ean: "ean",
                    issn: "issn",
                    format: "format",
                    pageCount: 1,
                    textObjects: [],
                    resourceUri: null,
                    urls: [],
                    series: Series(resourceUri: null, name: "name"),
                    variants: [],
                    collections: [],
                    collectedIssues: [],
                    dates: [],
                    prices: [],
                    thumbnail: Thumbnail(path: "path", extension: "extension"),
                    images: [],
                    creators: Creators(
                        available: 1,
                        collectionUri: null,
                        items: [
                          CreatorsItem(
                              resourceUri: null, name: "name", role: "role")
                        ],
                        returned: 1),
                    characters: Characters(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1),
                    stories: Stories(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1),
                    events: Characters(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1)),
                Result(
                    id: 2,
                    digitalId: 1,
                    title: "1",
                    issueNumber: 1,
                    variantDescription: "variantDescription",
                    description: "description",
                    modified: "1",
                    isbn: "isbn",
                    upc: "upc",
                    diamondCode: "diamondCode",
                    ean: "ean",
                    issn: "issn",
                    format: "format",
                    pageCount: 1,
                    textObjects: [],
                    resourceUri: null,
                    urls: [],
                    series: Series(resourceUri: null, name: "name"),
                    variants: [],
                    collections: [],
                    collectedIssues: [],
                    dates: [],
                    prices: [],
                    thumbnail: Thumbnail(path: "path", extension: "extension"),
                    images: [],
                    creators: Creators(
                        available: 1,
                        collectionUri: null,
                        items: [
                          CreatorsItem(
                              resourceUri: null, name: "name", role: "role")
                        ],
                        returned: 1),
                    characters: Characters(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1),
                    stories: Stories(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1),
                    events: Characters(
                        available: 1,
                        collectionUri: null,
                        items: [],
                        returned: 1)),
              ]),
              errorMessage: null)
        ],
      );
    });
    group("Call check", () {
      test("should call dataRepository.getComics nce", () async {
        when(
          () => repository.getComics(skip: 0, title: "ant-man"),
        ).thenAnswer((_) async =>
            const Data(offset: 0, limit: 0, total: 0, count: 0, results: []));

        await sut.getMoreData(skip: 0, title: "ant-man");

        verify(
          () => repository.getComics(skip: 0, title: "ant-man"),
        ).called(1);
      });
    });
  
    group("faliure", () {
      setUp(() {
        when(
          () => repository.getComics(skip: 0, title: "ant-man"),
        ).thenThrow(Exception("error"));
      });
      blocTest("should emit Status loading and then Status error with message",
          build: () => sut,
          act: (cubit) => cubit.getMoreData(skip: 0, title: "ant-man"),
          expect: () => [
                const SearchPageState(
                    searchStatus: SearchStatus.error,
                    results: [],
                    errorMessage: "Exception: error",
                    data: null)
              ]);
    });
    group("Results are empty", () {
      setUp(() {
        when(
          () => repository.getComics(skip: 0),
        ).thenAnswer((_) async =>
            Data(offset: 0, limit: 0, total: 0, count: 0, results: []));
      });
      blocTest("should emit Status loading and then Status empty with message",
          build: () => sut,
          act: (cubit) => cubit.getMoreData(skip: 0),
          expect: () => [
                const SearchPageState(
                    searchStatus: SearchStatus.success,
                    results: [],
                    errorMessage: null,
                    hasMore: false,
                    data: null)
              ]);
    });
  });
}
