import 'package:injectable/injectable.dart';
import 'package:mood_up_recruitment_task/domain/data_sources/data_source.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';

@injectable
class DataRepository {
  DataRepository({required this.remoteDataSource});
  final RemoteDataSource remoteDataSource;

  Future<Data> getComics({String? title, required int skip}) async {
    final initialData = await remoteDataSource.getComics(title: title,skip: skip);
    
    final data = initialData.data;

   



    return data;
  }
}
