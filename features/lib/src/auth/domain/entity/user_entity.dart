class UserEntity {
  final String uid;
  final String displayName;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String picture;
  final String email;
  final String provider;
  final DateTime creationTime;
  final DateTime lastSignInTime;
  final String locale;

  UserEntity(
      this.uid,
      this.displayName,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.picture,
      this.email,
      this.provider,
      this.creationTime,
      this.lastSignInTime,
      this.locale);

  @override
  String toString() {
    return """{uid:$uid} {displayName:$displayName} 
    {firstName:$firstName} {lastName:$lastName} 
    {phoneNumber:$phoneNumber} {picture: $picture} 
    {email:$email} {provider:$provider} 
    {creationTime:$creationTime} {lastSignInTime:$lastSignInTime} 
    {locale:$locale}""";
  }
}
