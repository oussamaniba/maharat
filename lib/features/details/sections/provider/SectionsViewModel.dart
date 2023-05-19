import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/features/_commons/data/remote/response/ProgramsDataResponse.dart';
import 'package:maharat/features/_commons/data/repository/ProgramsRepository.dart';
import 'package:maharat/features/details/sections/models/Sections.dart';
import 'package:stacked/stacked.dart';

class SectionsViewModel extends BaseViewModel {
  final ProgramsRepository _programsRepository = getIt<ProgramsRepository>();

  bool isLoading = true;
  Sections? section;

  Future initializeSections(ProgramsDataResponse data) async {
    await _loadSectionData(data.id!.toString());
  }

  Future _loadSectionData(String id) async {
    var result = await _programsRepository.getSections();
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
