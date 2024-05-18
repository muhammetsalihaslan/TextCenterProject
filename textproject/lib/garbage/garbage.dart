// class ImageSlider extends StatefulWidget {
//   @override
//   _ImageSliderState createState() => _ImageSliderState();
// }

// class _ImageSliderState extends State<ImageSlider> {
//   final PageController _pageController = PageController(initialPage: 0);
//   final List<String> _imageList = [
//     'assets/images/image1.jpg',
//     'assets/images/image2.jpg',
//     'assets/images/image3.jpg',
//   ];
//   int _currentPage = 0;
//   Timer _timer;

//   @override
//   void initState() {
//     super.initState();
//     _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
//       if (_currentPage < _imageList.length - 1) {
//         setState(() {
//           _currentPage++;
//         });
//       } else {
//         setState(() {
//           _currentPage = 0;
//         });
//       }
//       _pageController.animateToPage(
//         _currentPage,
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeIn,
//       );
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 400.0,
//       child: PageView.builder(
//         controller: _pageController,
//         itemCount: _imageList.length,
//         itemBuilder: (context, index) {
//           return Image.asset(
//             _imageList[index],
//             fit: BoxFit.cover,
//           );
//         },
//       ),
//     );
//   }
// }
