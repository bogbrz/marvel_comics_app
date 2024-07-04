import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:mood_up_recruitment_task/data_source.dart';

class DataRepository {
  DataRepository({required this.remoteDataSource});
  final RemoteDataSource remoteDataSource;

  Future<Data> getComics({String? title, required int skip}) async {
    final initialData = await remoteDataSource.getComics(title: title,skip: skip);
    
    final data = initialData.data;

   



    return data;
  }
}
