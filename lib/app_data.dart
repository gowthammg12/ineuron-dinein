class AppData<T> {
  final T? data;
  final String? error;

  final bool? isCritical;

  AppData({this.data, this.error, this.isCritical = false});

  factory AppData.criticalError() {
    return AppData(error: "Something went wrong!! Please wait while we are fixing", isCritical: true);
  }

  bool get isSuccess => data != null;
  bool get isError => error != null;
}
