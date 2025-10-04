class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Fresh and Healthy Grocery',
      image: 'assets/images/vege.png',
      discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua."
  ),
  UnbordingContent(
      title: 'Secure Payment Method',
      image: 'assets/images/location.png',
      discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore"

  ),
  UnbordingContent(
      title: 'Fast Delivery Guaranteed',
      image: 'assets/images/delivery.png',
      discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore"

  ),
];