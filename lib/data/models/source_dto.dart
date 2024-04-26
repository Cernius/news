import 'package:json_annotation/json_annotation.dart';

part 'source_dto.g.dart';

@JsonSerializable()
class SourceDTO {
  final String? id;
  final String name;

  SourceDTO({
    required this.id,
    required this.name,
  });

  factory SourceDTO.fromJson(Map<String, dynamic> json) => _$SourceDTOFromJson(json);
}