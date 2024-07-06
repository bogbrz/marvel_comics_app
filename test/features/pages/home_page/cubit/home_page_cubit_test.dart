import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:mood_up_recruitment_task/domain/repositories/data_repository.dart';
import 'package:mood_up_recruitment_task/enums.dart';
import 'package:mood_up_recruitment_task/features/pages/home_page/cubit/home_page_cubit.dart';

class MockDataRepository extends Mock implements DataRepository {}

void main() {
  late HomePageCubit sut;
  late MockDataRepository repository;

  setUp(() {
    repository = MockDataRepository();
    sut = HomePageCubit(dataRepository: repository);
  });

  group("start", () {
    group("succes", () {
      setUp(() {
        when(
          () => repository.getComics(skip: 0),
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
      blocTest<HomePageCubit, HomePageState>(
        "emit Status loading then filter results and emit status succes with filtered results and data",
        build: () => sut,
        act: (cubit) => cubit.start(skip: 0),
        expect: () => [
          const HomePageState(
              status: Status.loading,
              results: [],
              data: null,
              errorMessage: null),
          const HomePageState(
              status: Status.succes,
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
    group("No result faliure", () {
      setUp(() {
        when(
          () => repository.getComics(skip: 0),
        ).thenAnswer((_) async =>
            const Data(offset: 0, limit: 0, total: 0, count: 0, results: []));
      });
      blocTest(
          "should emit Status loading and then Status error with no data avalible message",
          build: () => sut,
          act: (cubit) => cubit.start(skip: 0),
          expect: () => [
                const HomePageState(status: Status.loading, results: [], data: null),
                const HomePageState(
                    status: Status.error,
                    results: [],
                    errorMessage: "No data avalible",
                    data: null)
              ]);
    });
    group("faliure", () {
      setUp(() {
        when(
          () => repository.getComics(skip: 0),
        ).thenThrow(Exception("error"));
      });
      blocTest("should emit Status loading and then Status error with message",
          build: () => sut,
          act: (cubit) => cubit.start(skip: 0),
          expect: () => [
                const HomePageState(status: Status.loading, results: [], data: null),
                const HomePageState(
                    status: Status.error,
                    results: [],
                    errorMessage: "Exception: error",
                    data: null)
              ]);
    });

    group("Call check", () {
      test("should call dataRepository.getComics nce", () async {
        when(
          () => repository.getComics(skip: 0),
        ).thenAnswer((_) async =>
            const Data(offset: 0, limit: 0, total: 0, count: 0, results: []));

        await sut.start(skip: 0);

        verify(
          () => repository.getComics(skip: 0),
        ).called(1);
      });
    });
  });

  group("getMoreDATA", () {
    group("succes", () {
      setUp(() {
        when(
          () => repository.getComics(skip: 0),
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
      blocTest<HomePageCubit, HomePageState>(
        "emit Status loading then filter results and emit status succes with filtered results and data",
        build: () => sut,
        act: (cubit) => cubit.getMoreData(skip: 0),
        expect: () => [
          const HomePageState(
              status: Status.succes,
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
          () => repository.getComics(skip: 0),
        ).thenAnswer((_) async =>
            const Data(offset: 0, limit: 0, total: 0, count: 0, results: []));

        await sut.getMoreData(skip: 0);

        verify(
          () => repository.getComics(skip: 0),
        ).called(1);
      });
    });
    group("Faliure", () {

    });
     group("faliure", () {
      setUp(() {
        when(
          () => repository.getComics(skip: 0),
        ).thenThrow(Exception("error"));
      });
      blocTest("should emit Status loading and then Status error with message",
          build: () => sut,
          act: (cubit) => cubit.getMoreData(skip: 0),
          expect: () => [
             
                const HomePageState(
                    status: Status.error,
                    results: [],
                    errorMessage: "Exception: error",
                    data: null)
              ]);
    });
  });
}
