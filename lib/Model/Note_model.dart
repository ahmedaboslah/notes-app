import 'package:hive/hive.dart';
part 'Note_model.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String Title;
  @HiveField(1)
  final String Subtitle;
  @HiveField(2)
  final String Date;
  @HiveField(3)
  final int color;

  NoteModel(
      {required this.Title,
      required this.Subtitle,
      required this.Date,
      required this.color});
}
