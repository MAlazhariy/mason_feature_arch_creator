import 'endpoints.dart';

import '../model/{{featureName.camelCase()}}_model.dart';
import '../../../../core/data_source/dio_helper.dart';

class {{featureName.pascalCase()}}Repository{
final  DioService dioService ;
  {{featureName.pascalCase()}}Repository(this.dioService);
}
