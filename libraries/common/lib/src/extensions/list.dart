extension SafeList<E> on List<E> {
  E get firstOrNull {
    return isEmpty ? null : first;
  }
}
