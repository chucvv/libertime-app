enum AuthProviderEnum { facebook, google, phone }

class EnumUtil {
  static T fromStringEnum<T>(Iterable<T> values, String stringType) {
    return values.firstWhere(
        (f) =>
            "${f.toString().substring(f.toString().indexOf('.') + 1)}"
                .toString() ==
            stringType,
        orElse: () => null);
  }
}
