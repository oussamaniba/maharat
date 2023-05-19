import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/features/_commons/data/remote/response/SectionsDataResponse.dart';
import 'package:maharat/features/_commons/data/repository/ProgramsRepository.dart';
import 'package:maharat/features/details/sections/models/Sections.dart';
import 'package:stacked/stacked.dart';

class SectionsDetailsViewModel extends BaseViewModel {
  final int selectedId;
  final Sections sections;
  SectionsDetailsViewModel({
    required this.sections,
    required this.selectedId,
  });

  final ProgramsRepository _programsRepository = getIt<ProgramsRepository>();

  bool isLoading = true;
  Sections? section;

  Future initializeSections(SectionsDataResponse data) async {
    await _loadSectionData(data.id!.toString());
  }

  Future _loadSectionData(String id) async {
    var result = await _programsRepository.getSectionItemById(id);
    result.when((success) {
      section = success;
      _updateIsLoading(false);
    }, (error) {
      _updateIsLoading(false);
    });
  }

  _updateIsLoading(bool v) {
    isLoading = v;
    notifyListeners();
  }
}
