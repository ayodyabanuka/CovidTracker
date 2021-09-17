class CovidInfo {
  final int localnewCases;
  final int localDeaths;
  final int localRecovered;
  final String lastUpdated;
  final int localtotalcases;
  final int activecases;
  final int underinvestigation;

  CovidInfo({
    this.localnewCases,
    this.localDeaths,
    this.localRecovered,
    this.lastUpdated,
    this.localtotalcases,
    this.activecases,
    this.underinvestigation,
  });

  factory CovidInfo.fromJson(Map<String, dynamic> json) {
    return CovidInfo(
      localnewCases: json['local_new_cases'],
      localDeaths: json['local_deaths'],
      localRecovered: json['local_recovered'],
      lastUpdated: json['update_date_time'],
      localtotalcases: json['local_total_cases'],
      activecases: json['local_active_cases'],
      underinvestigation:
          json['local_total_number_of_individuals_in_hospitals'],
    );
  }
}
