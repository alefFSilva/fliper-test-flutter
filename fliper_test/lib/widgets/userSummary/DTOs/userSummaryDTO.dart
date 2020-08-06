class UserSummaryDTO {
  double gain;
  bool hasHistory;
  double cdi;
  double profitability;
  int total;

  UserSummaryDTO.parseData(data) {
    var wealthSummary = data["wealthSummary"][0];
    gain = wealthSummary["gain"];
    hasHistory = wealthSummary["hasHistory"];
    cdi = wealthSummary["cdi"];
    profitability = wealthSummary["profitability"];
    total = wealthSummary["total"];
  }
}
