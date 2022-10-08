
import 'package:spacex_latest_launch/models/get_model/spacex_data_get_model.dart';


class SortListHelper{

  // Verileri guncelledikten sonra burada tarih e gore siranaliyor.
  // Gorevler en son yapilandan, ilk yapilana dogru siralaniyor ([0] -> son gorev etc.)
  // Ekrana null bastirmamak adina son gorevde istedigimiz field lar null ise bir onceki
  // goreve bakip field lari null olmayan son gorevin index sayisi return ediliyor.


  int sortList(List<SpaceXDataGetModel>? list){
    list?.sort((a, b) {
      var adate = a.staticFireDateUtc;
      var bdate = b.staticFireDateUtc;
      if (adate != null && bdate != null) {
        DateTime expiryAsDateTimeA = DateTime.parse(a.staticFireDateUtc!);
        DateTime expiryAsDateTimeB = DateTime.parse(b.staticFireDateUtc!);
        return expiryAsDateTimeB.compareTo(expiryAsDateTimeA);
      }
      return 0;
    });

    int lastCorrectMissionIndex = 0;

    for (var a in list!) {
      if (list?[lastCorrectMissionIndex].staticFireDateUtc == null ||
          list?[lastCorrectMissionIndex].details == null ||
          list?[lastCorrectMissionIndex].name == null) {
        lastCorrectMissionIndex++;
      }
    }
    return lastCorrectMissionIndex;
  }
}


