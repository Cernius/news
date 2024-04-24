import 'package:news_api/data/models/source_dto.dart';
import 'package:news_api/domain/mappers/mapper.dart';
import 'package:news_api/domain/models/source.dart';

class SourceMapper extends Mapper<SourceDTO, Source> {
  @override
  Source map(SourceDTO input) {
    return Source(
      id: input.id,
      name: input.name,
    );
  }
}
