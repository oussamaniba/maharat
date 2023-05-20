import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/core/routes/app_route.dart';
import 'package:maharat/core/utils/global_functions.dart';
import 'package:maharat/features/_commons/data/remote/response/SectionsDataResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_response/SectionsTestDataResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_response/SectionsTestResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_types_response/SectionsTestTypesDataResponse.dart';
import 'package:maharat/features/_commons/data/repository/ProgramsRepository.dart';
import 'package:stacked/stacked.dart';

class SectionsTestViewModel extends BaseViewModel {
  final String sectionId;
  final List<SectionsDataResponse> sectionData;
  final int selected;

  SectionsTestViewModel(
    this.sectionId,
    this.sectionData,
    this.selected,
  );

  final ProgramsRepository programsRepository = getIt<ProgramsRepository>();

  String title = "";
  int index = 0;
  bool isLoading = true;
  SectionsTestDataResponse? test;
  List<SectionsTestTypesDataResponse> testTypes = [];
  int selectedTestType = 0;

  Future initialize() async {
    updateSelectedIndex(selected, true);
  }

  Future _loadProgram() async {
    var result = await programsRepository.getSectionTest(
      sectionId,
      testTypes.elementAt(selectedTestType).type!,
      sectionData.elementAt(index).id!.toString(),
    );
    result.when(
        (success) => test = success.data,
        (error) => getIt<AppRoutes>().pop()
    );
    _updateIsLoading(false);
  }

  Future _loadTestTypes() async {
    _updateIsLoading(true);
    var result = await programsRepository.getSectionTestTypes(sectionId);
    testTypes.clear();
    result.when((success) async {
        if(success.data != null) {
          testTypes.addAll(success.data?.toList() ?? []);
          await _loadProgram();
        }
      }, (error) => getIt<AppRoutes>().pop()
    );
  }

  onNext() {
    if (sectionData.isEmpty) return;
    if (index == sectionData.length - 1) {
      index = 0;
      _loadProgram();
    } else {
      index++;
      _loadProgram();
    }
    title = sectionData.elementAt(index).name ?? "";
  }


  onPrevious() {
    if (sectionData.isEmpty) return;
    if (index == 0) {
      index = sectionData.length - 1;
      _loadProgram();
    } else {
      index--;
      _loadProgram();
    }
    title = sectionData.elementAt(index).name ?? "";
  }

  _updateIsLoading(bool v) {
    isLoading = v;
    notifyListeners();
  }

  updateSelectedIndex(int i, bool loadData) {
    index = i;
    title = sectionData.elementAt(index).name!;
    if (loadData) {
      _loadTestTypes();
    }
  }

  updateTestTypeIndex(int index) {
    selectedTestType = index;
    _loadProgram();
  }
}
