import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mood_up_recruitment_task/app/env/env.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:crypto/crypto.dart';
@injectable
class RemoteDataSource {
  static final privateKey = Env.privateKey;
  static final publicKey = Env.publicKey;
  Future<InitialData> getComics({String? title, required int skip}) async {
    String generateMd5(String input) {
      List<int> bytes = utf8.encode(input);

      Digest digest = md5.convert(bytes);

      return digest.toString();
    }

    String ts = "1";

    String concatenatedString = ts + privateKey + publicKey;

    final String md5Hash = generateMd5(concatenatedString);

 

  

    final String url =
        "https://gateway.marvel.com:443/v1/public/comics?format=comic&formatType=comic&noVariants=true&offset=$skip&apikey=$publicKey&ts=$ts&hash=$md5Hash";
    final String titleUrl =
        "https://gateway.marvel.com:443/v1/public/comics?format=comic&formatType=comic&noVariants=true&title=$title&offset=$skip&apikey=$publicKey&ts=$ts&hash=$md5Hash";

    final result =
        await Dio().get<Map<String, dynamic>>(title == null ? url : titleUrl);

    print(result);
    final responseData = result.data;

    final initialData = InitialData.fromJson(responseData!);
    if (initialData.code == 200) {
      return initialData;
    } else {
      throw Error();
    }

   
  }
}
