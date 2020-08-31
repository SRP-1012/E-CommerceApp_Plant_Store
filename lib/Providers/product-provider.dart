import 'package:flutter/cupertino.dart';

import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _allProducts = [
    //THIS IS A DUMMY DATA. This should actually be an EMPTY LIST, then list must be Fetched from server using FETCHANDSET.
    Product(
      rating: 4.00,
      image: 'assets/images/29.jpg',
      prodId: '29',
      category: 'Waxy',
      title: 'Chinese Evergreen',
      price: 19.99,
      description:
          '"Buy something that likes to live the way you do," advises Gwenn Fried, manager of the Horticulture Therapy program at NYU Langone. "If you\'re more of a waterer, an excellent plant is a Chinese evergreen." It\'s super forgiving if you overdo it on H2O, and it comes in tons of different varieties.',
      tags: ['Chinese Evergreen'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/1.jpg',
      prodId: '1',
      category: 'Medicinal',
      title: 'Asparagus Fern',
      price: 13.99,
      description:
          'This fluffy plant tolerates a lot more abuse than other ferns — thanks to the fact that it\'s technically not a fern. Asparagus setaceus adapts to both bright spots and darker corners. Keep the soil moist and it\'ll thrive.',
      tags: ['Asparagus Fern'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/30.jpg',
      prodId: '30',
      category: 'Medicinal',
      title: 'Philodendron Birkin',
      price: 24.00,
      description:
          'Add a dose of nature to your space with the philodendron birkin, an easy-to-care-for plant that enjoys medium to bright indirect sunlight along with regular waterings. Just be sure to keep them away from pets and children, as they\'re toxic.',
      tags: ['Philodendron Birkin'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/2.jpg',
      prodId: '2',
      category: 'Waxy',
      title: 'Fiddle LeafFig',
      price: 12.19,
      description:
          'These trendy trees have more than just lush foliage going for them. Their hardy disposition can adapt to most bright locations (minus direct sunlight). Water generously in the summer and slow it down when winter comes.',
      tags: ['Fiddle LeafFig'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/3.jpg',
      prodId: '3',
      category: 'Flowering',
      title: 'Guiana Chestnut',
      price: 31.99,
      description:
          'More commonly known as money tree, Pachira aquatica frequently features a braided trunk. You\'ll want to stick it in a spot with bright, indirect light and water frequently — its native habitat is a swamp.',
      tags: ['Guiana Chestnut'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/8.jpg',
      prodId: '8',
      category: 'Decorative',
      title: 'Chinese Money Plant',
      price: 12.95,
      description:
          'Here\'s another plant with fortuitous associations, although it also goes by the adorable nickname "Pancake Plant." Pilea peperomioides prefers a shady spot (or winter windowsill) and weekly watering, according to The Little Book of House Plants and Other Greenery. Bonus: You can replant the offshoots that sprout from the base of the stem and keep money plants all over your house. ',
      tags: ['Chinese Money Plant'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/12.jpg',
      prodId: '12',
      category: 'Decorative',
      title: 'Cast-Iron Plant',
      price: 20.88,
      description:
          'The sturdy cast-iron plant lives up to its name, surviving low light, poor-quality soil, spotty watering, and a wide range of temperatures. Aspidistra elatior is the scientific name; elatior is Latin for "taller," which is apropos thanks to foliage that grows up to 2 feet high. The dark-leaved stunner likes to be left alone, so don\'t be too attentive, warns Nejman.',
      tags: ['Cast-Iron Plant'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/4.jpg',
      prodId: '4',
      category: 'Flowering',
      title: 'Yucca',
      price: 17.19,
      description:
          'The recipe for a happy yucca is easy: sun, sun, and more sun. Water sparingly and plant in a deep container to prevent the top-heavy woody stems from toppling over.',
      tags: ['Yucca'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/9.jpg',
      prodId: '9',
      category: 'Flowering',
      title: 'African Violets',
      price: 21.99,
      description:
          'of the most popular houseplants in the world, this flowering favorite blooms several times per year. Keep it thriving in bright but indirect light with moist soil. Good drainage and an African violet fertilizer administered every other week can help too.',
      tags: ['African Violets'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/10.jpg',
      prodId: '10',
      category: 'Waxy',
      title: 'Peperomia',
      price: 8.00,
      description:
          'These waxy plants do best in more humid conditions than trendy succulents. Bring \'em work too — the species even flourishes under fluorescent lights.',
      tags: ['Peperomia'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/15.jpg',
      prodId: '15',
      category: 'Medicinal',
      title: 'Air Plant',
      price: 18.95,
      description:
          'Don\'t worry about testing the soil. Tillandsia grows without dirt altogether. "Just dunk them in water for about two or three hours every 10 days or so,\" says Tovah Martin, expert gardener and author of The Indestructible Houseplant.',
      tags: ['Air Plant'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/17.jpg',
      prodId: '17',
      category: 'Decorative',
      title: 'Spider Plant',
      price: 18.00,
      description:
          'What\'s better than one spider plant? Lots of spider plants. The fast-growing shoots actually produce little "babies" you can re-pot for added greenery elsewhere. Just stick to well-lit spots, and don\'t forget weekly watering.',
      tags: ['Spider Plant'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/18.jpg',
      prodId: '18',
      category: 'Flowering',
      title: 'Peace Lily',
      price: 12.00,
      description:
          'If you\'re guilty of overwatering, try Spathiphyllum. Peace lilies can "almost grow in a fish tank," Fried says. Bonus: These powerful plants can also filter toxins from the air, according to NASA.',
      tags: ['Peace Lily'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/11.jpg',
      prodId: '11',
      category: 'Decorative',
      title: 'Dieffenbachia',
      price: 19.99,
      description:
          'Place this beauty by a curtained window, protecting new leaves from extra sun. With filtered light, the showy plant is one happy camper.',
      tags: ['Dieffenbachia'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/16.jpg',
      prodId: '16',
      category: 'Waxy',
      title: 'Aloe',
      price: 10.00,
      description:
          'Its spiky leaves certainly look cool, and they\'ll really thrive on your desk or bedside table. Aloe loves indirect light, plus a good soak every week or two',
      tags: ['Aloe'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/20.jpg',
      prodId: '20',
      category: 'Decorative',
      title: 'Dragon Tree',
      price: 8.39,
      description:
          'Save some room on your windowsill and tuck this low-light variety in an unloved corner. Just be warned: Dracaena marginata is toxic to both dogs and cats, so keep pets far away.',
      tags: ['Dragon Tree'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/19.jpg',
      prodId: '19',
      category: 'Medicinal',
      title: 'English Ivy',
      price: 21.99,
      description:
          'You could let the long tendrils hang from mantel or shelf, but the climbing plant is also game for topiaries (or stadium walls, like at Wrigley Field). Chicago Botanic Garden recommends Cascade, Domino, and Irish Lace as some of the best potted varieties.',
      tags: ['English Ivy'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/21.jpg',
      prodId: '21',
      category: 'Waxy',
      title: 'Calathea',
      price: 67.00,
      description:
          '"Prayer plants" are grown for their foliage alone, and it\'s easy to see why. The purple, green, pink, and red leaves put on quite the show. For the best display, keep the plant moist (not drenched) and avoid bright light.',
      tags: ['Calathea'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/22.jpg',
      prodId: '22',
      category: 'Waxy',
      title: 'Rubber Plant',
      price: 21.00,
      description:
          'Rubber trees can measure over 100 feet tall in their native Asia, but regular pruning can keep the ornamental variety in check. If the broad leaves get a little dusty, bring out the mayo for a florist-approved polishing trick.',
      tags: ['Rubber Plant'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/23.jpg',
      prodId: '23',
      category: 'Medicinal',
      title: 'Bromeliad',
      price: 69.19,
      description:
          'Like the pineapple, the bromeliad belongs to the bromeliaceae family. This plant "lasts a long time," says Sharon Nejman, Senior Horticulturist at Chicago Botanic Garden. "It produces pups or side shoots that will replace the original plant." Its favorite temperature is around 70 degrees, "which makes it home friendly," she says. Keep it away from cold drafts.',
      tags: ['Bromeliad'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/24.jpg',
      prodId: '24',
      category: 'Waxy',
      title: 'Kalanchoe',
      price: 49.99,
      description:
          'This water-retaining succulent grows colorful, bell-shaped flowers. "It takes very little care," says Nejman. Kalanchoe welcomes dry climates and temperature swings. It\'s even fine with 45-degree winter weather, she adds.',
      tags: ['Kalanchoe'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/25.jpg',
      prodId: '25',
      category: 'Flowering',
      title: 'Ponytail Palm',
      price: 17.99,
      description:
          'Officially called the Beaucarnea recurvata, the slow-growing ponytail palm likes basking in a sunny window. Don\'t over-water the Mexico native, because "its stems work off its reserves," says Nejman.',
      tags: ['Ponytail Palm'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/27.jpg',
      prodId: '27',
      category: 'Flowering',
      title: 'Begonia',
      price: 22.00,
      description:
          'These showy blooms only require the occasional drink, and even less water in the winter. "Plus they come in many different foliage colors and patterns," says Kathie Hayden, plant information service manager at the Chicago Botanic Garden.',
      tags: ['Begonia'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/5.jpg',
      prodId: '5',
      category: 'Decorative',
      title: 'Phalaenopsis Orchid',
      price: 54.99,
      description:
          'Native to tropical Asian countries, the phalaenopsis orchid likes low light. But think twice if you live in a dry climate, as the orchid has a better chance of thriving in humid areas. "Most orchids are pretty forgiving," says Nejman. "If they\'re lucky, I water them every week or week and a half."',
      tags: ['Phalaenopsis Orchid'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/26.jpg',
      prodId: '26',
      category: 'Waxy',
      title: 'Philodendron',
      price: 31.99,
      description:
          'Hundreds of species of the large-leafed philodendron grow in the West Indies, Mexico, and Brazil. This plant prefers low light. One caveat: "They like to be on the dry side," says Nejman, so don\'t water more than once a week.',
      tags: ['Philodendron'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/6.jpg',
      prodId: '6',
      category: 'Waxy',
      title: 'Crown of Thorns',
      price: 9.99,
      description:
          'Native to Madagascar, the succulent shrub doesn\'t like much water. Otherwise, it\'s not picky. Another plus: It produces lovely red blooms "year round," says Nejman. Two downsides, though: Its thorns and its sap, which can cause blisters and swelling.',
      tags: ['Crown of Thorns'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/28.jpg',
      prodId: '28',
      category: 'Waxy',
      title: 'Christmas Cactus',
      price: 8.99,
      description:
          'If you\'re more of a leave-it-and-forget-it type, anything in the cactus family will do, Fried says. Sold as Thanksgiving or Christmas cacti, this species produces segmented leaves and white, pink, red, or purple flowers.',
      tags: ['Christmas Cactus'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/14.jpg',
      prodId: '14',
      category: 'Medicinal',
      title: 'ZZ Plant',
      price: 57.00,
      description:
          'Officially named Zamioculcas zamiifolia, the ZZ plant is native to East Africa. Walker affectionately calls it "the king of the indestructible plants." The green tolerates the dangerous trifecta of plant-killers: drought, low light, and really low humidity, he says.',
      tags: ['ZZ Plant'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/7.jpg',
      prodId: '7',
      category: 'Decorative',
      title: 'Mother-in-law\'s Tongue',
      price: 64.00,
      description:
          'Mother-in-law\'s tongue (one of many sansevierias) is tough to kill. "Those can go for a month without water," says Nejman. The leaves are typically tall, stiff, and vertical, earning it the other nickname "snake plant."',
      tags: ['Mother-in-law\'s Tongue'],
    ),
    Product(
      rating: 4.00,
      image: 'assets/images/13.jpg',
      prodId: '13',
      category: 'Waxy',
      title: 'Schefflera',
      price: 11.99,
      description:
          'This evergreen shrub, also known as an umbrella tree, can grow 15 feet outside. "If you don\'t give it much care, it\'s going to grow slowly," says Walker. Like many plants, it can be mildly toxic.',
      tags: ['Schefflera'],
    ),
  ];

  List<Product> _favProducts = [];

  List<String> _topPicks = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  List<String> _cart = [];

  List<Map<String, String>> _myCart = [];

  List<String> get cart {
    return [..._cart];
  }

  List<Map<String, String>> get myCart {
    return [..._myCart];
  }

  List<Product> get allProducts {
    return [..._allProducts];
  }

  List<Product> get favProducts {
    return [..._favProducts];
  }

  List<String> get topPicks {
    return [..._topPicks];
  }

  void toggleCart(String a) {
    if (_cart.contains(a)) {
      _cart.remove(a);
      _myCart.removeWhere((element) => element['prodId'] == a);
    } else {
      _cart.add(a);
      _myCart.add({'prodId': a, 'count': '1'});
    }
    notifyListeners();
  }

  void changeCartCount(bool isAdd, String prodId) {
    int index = _myCart.indexWhere((element) => element['prodId'] == prodId);
    if (isAdd) {
      _myCart[index]['count'] =
          (int.parse(_myCart[index]['count']) + 1).toString();
    } else {
      if (_myCart[index]['count'] == '1') {
        toggleCart(_myCart[index]['prodId']);
      } else {
        _myCart[index]['count'] =
            (int.parse(_myCart[index]['count']) - 1).toString();
      }
    }
    notifyListeners();
  }

  void removeCartItem(String prodId) {
    int index = _myCart.indexWhere((element) => element['prodId'] == prodId);
    _cart.remove(prodId);
    _myCart.removeAt(index);

    notifyListeners();
  }

  void toggleFav(Product a) {
    if (_favProducts.contains(a)) {
      _favProducts.remove(a);
    } else {
      _favProducts.add(a);
    }
    notifyListeners();
  }

  void emptyCart() {
    _myCart = [];
    _cart = [];

    notifyListeners();
  }

  List<Product> productOfCategory(String cat) {
    List<Product> list = [];
    _allProducts.forEach((prod) {
      if (prod.category == cat) {
        list.add(prod);
      }
    });
    return list;
  }
}
