import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/features/_commons/data/remote/response/SectionsDataResponse.dart';
import 'package:maharat/features/_commons/data/repository/ProgramsRepository.dart';
import 'package:maharat/features/details/sections/models/Sections.dart';
import 'package:stacked/stacked.dart';

class SectionsDetailsViewModel extends BaseViewModel {
  final int selectedId;
  final Sections sections;

  int? get i =>
      sections.data?.indexWhere((element) => element.id == selectedId);
  String title = "";
  int index = 0;

  SectionsDetailsViewModel({
    required this.sections,
    required this.selectedId,
  }) {
    index = i ?? 0;
    title = sections.data?.elementAt(index).name ?? "";
  }

  final ProgramsRepository _programsRepository = getIt<ProgramsRepository>();

  bool isLoading = true;
  Sections? section;

  Future initializeSections(SectionsDataResponse data) async {
    await _loadSectionData(data.id!.toString());
  }

  Future _loadSectionData(String id) async {
    var result = await _programsRepository.getSectionItemById(id);
    _updateIsLoading(true);
    result.when((success) {
      section = success;
      _updateIsLoading(false);
    }, (error) {
      _updateIsLoading(false);
    });
  }

  onNext() {
    if (sections.data == null) return;
    _updateIsLoading(true);
    if (index == sections.data!.length - 1) {
      index = 0;
      var id = sections.data![index].id;
      _loadSectionData(id.toString());
    } else {
      index++;
      var id = sections.data![index].id;
      _loadSectionData(id.toString());
    }
    title = sections.data?.elementAt(index).name ?? "";
  }


  onPrevious() {
    if (sections.data == null) return;
    _updateIsLoading(true);
    if (index == 0) {
      index = sections.data!.length - 1;
      var id = sections.data![index].id;
      _loadSectionData(id.toString());
    } else {
      index--;
      var id = sections.data![index].id;
      _loadSectionData(id.toString());
    }
    title = sections.data?.elementAt(index).name ?? "";
  }

  _updateIsLoading(bool v) {
    isLoading = v;
    notifyListeners();
  }
}
