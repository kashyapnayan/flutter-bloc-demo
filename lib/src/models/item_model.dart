class ItemModel {
  int? _page;
  List<Results>? _results;
  int? _totalPages;
  int? _totalResults;

  ItemModel(
      {int? page, List<Results>? results, int? totalPages, int? totalResults}) {
    this._page = page;
    this._results = results;
    this._totalPages = totalPages;
    this._totalResults = totalResults;
  }

  int get page => _page!;
  set page(int page) => _page = page;

  List<Results> get results => _results!;
  set results(List<Results> results) => _results = results;

  int get totalPages => _totalPages!;
  set totalPages(int totalPages) => _totalPages = totalPages;

  int get totalResults => _totalResults!;
  set totalResults(int totalResults) => _totalResults = totalResults;

  ItemModel.fromJson(Map<String, dynamic> json) {
    _page = json['page'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results!.add(new Results.fromJson(v));
      });
    }
    _totalPages = json['total_pages'];
    _totalResults = json['total_results'];
  }
}

class Results {
  int? _id;
  String? _originalLanguage;
  String? _originalTitle;
  String? _posterPath;
  String? _releaseDate;
  String? _title;

  Results(
      {int? id,
        String? originalLanguage,
        String? originalTitle,
        String? posterPath,
        String? releaseDate,
        String? title}) {
    this._id = id;
    this._originalLanguage = originalLanguage;
    this._originalTitle = originalTitle;
    this._posterPath = posterPath;
    this._releaseDate = releaseDate;
    this._title = title;
  }

  int get id => _id!;
  set id(int id) => _id = id;

  String get originalLanguage => _originalLanguage!;
  set originalLanguage(String originalLanguage) =>
      _originalLanguage = originalLanguage;

  String get originalTitle => _originalTitle!;
  set originalTitle(String originalTitle) => _originalTitle = originalTitle;

  String get posterPath => _posterPath!;
  set posterPath(String posterPath) => _posterPath = posterPath;

  String get releaseDate => _releaseDate!;
  set releaseDate(String releaseDate) => _releaseDate = releaseDate;

  String get title => _title!;
  set title(String title) => _title = title;

  Results.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _originalLanguage = json['original_language'];
    _originalTitle = json['original_title'];
    _posterPath = json['poster_path'];
    _releaseDate = json['release_date'];
    _title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['original_language'] = this._originalLanguage;
    data['original_title'] = this._originalTitle;
    data['poster_path'] = this._posterPath;
    data['release_date'] = this._releaseDate;
    data['title'] = this._title;
    return data;
  }
}