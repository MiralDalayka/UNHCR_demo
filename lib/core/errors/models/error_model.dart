 class FailureModel {
   String message;
   FailureModel({required this.message});
  factory FailureModel.fromJson(String json) {
    return FailureModel(
        message: json);
  }

  FailureModel copyWith({required String message}) {
    this.message = message;
    return this;
  }


}


