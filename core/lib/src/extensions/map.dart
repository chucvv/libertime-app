extension SafeMap<K, V> on Map<K, V> {
  V getOrDefault(K key, V defaultValue) {
    return this == null ? defaultValue : isEmpty ? defaultValue : this[key];
  }
}
