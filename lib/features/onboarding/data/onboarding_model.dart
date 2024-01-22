

class OnboardingContent {
  String image;
  String title;
  String subtitle;

  OnboardingContent({
   required this.image, 
   required this.title, 
   required this.subtitle});
}

List<OnboardingContent> contents = [
  OnboardingContent(
    title: 'Convenient payment',
    image: 'assets/images/onboarding1.png',
    subtitle: "Simply scan the QR code with your smartphone, and your payment will be processed instantly. "
  ),
  OnboardingContent(
    title: 'Create payment list',
    image: 'assets/images/onboarding3.png',
    subtitle: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
    
  ),
  OnboardingContent(
    title: 'Secure Transactions',
    image: 'assets/images/onboarding2.png',
    subtitle: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
   
  ),
];