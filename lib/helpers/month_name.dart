
class MonthName {
      _getmonthname(int month){
        switch(month){
            case 1:
            return "Janeiro";
            case 2:
            return "fevereiro";
            case 3:
            return "Março";
            case 4:
            return "Abril";
            case 5:
            return "Mail";
            case 6:
            return "Junho";
            case 7:
            return "Julho";
            case 8:
            return "Agosto";
            case 9:
            return "Setembro";
            case 10:
            return "Outubro";
            case 11:
            return "Novembro";
            case 12:
            return "Dezembro";
            case <1 && >12:
              _getmonthname(DateTime.now().month);

        }
      }

        fomaterData(DateTime datetime) {
    String month = _getmonthname(datetime.month);
    return "${datetime.day} de $month de ${datetime.year}";
  }
}