import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/core/utils/global_functions.dart';
import 'package:maharat/features/_commons/data/repository/ProgramsRepository.dart';
import 'package:maharat/features/home/models/Groups.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final ProgramsRepository _categoriesRepository = getIt<ProgramsRepository>();

  bool isLoading = true;
  int selected = 0;

  Groups? programs;

  Future initialize() async {
    loadCategories("type");
  }

  Future loadCategories(String type) async {
    var result = await _categoriesRepository.getCategories(type);
    _updateIsLoading(false);

    result.when((success) {
      programs = success;
    }, (error) {});

    _updateIsLoading(false);
  }

  _updateIsLoading(bool v) {
    isLoading = v;
    notifyListeners();
  }

  updateSelected(int i) {
    logEvent(selected);
    selected = i;
    notifyListeners();
  }
}
