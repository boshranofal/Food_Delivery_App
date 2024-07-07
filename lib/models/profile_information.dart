class ProfileInformation {
  final String name;
  final String imgUrl;
  final String id;

  ProfileInformation({
    required this.name,
    required this.imgUrl,
    required this.id,
  });
}

List<ProfileInformation> profile = [
  ProfileInformation(
      imgUrl: 'assets/images/email.jpg',
      name: "Email",
      id: 'boshranofal@gmail.com'),
  ProfileInformation(
      imgUrl: 'assets/images/phone.png', name: "Phone", id: '654896123'),
  ProfileInformation(
      imgUrl: 'assets/images/website.png',
      name: "Website",
      id: 'www.random.com '),
  ProfileInformation(
      imgUrl: 'assets/images/location.png', name: "Location", id: 'Nablus')
];
