class Trending {
  String imageUrl;
  String image2;
  String image3;
  String name;
  String open;
  String location;
  String rating;
  String price;
  String menu;

  Trending({
    this.imageUrl,
    this.image2,
    this.image3,
    this.name,
    this.open,
    this.location,
    this.rating,
    this.price,
    this.menu,
  });
}

List<Trending> trendings = [
  Trending(
      imageUrl: 'assets/kopinalar.jpg',
      name: 'Kopi Nalar',
      location: "Jl. Prof. Joko Sutono No. 7 Senopati, Jakarta",
      open: '10.00 - 20.00',
      rating: '⭐ ⭐ ⭐ ⭐',
      price: '100.000/person',
      image2: 'assets/kopinalar.jpg',
      image3: 'assets/kopinalar.jpg',
      menu: 'assets/menulima.jpg'),
  Trending(
      imageUrl: 'assets/lima.jpg',
      name: 'LIMA',
      location: "Rukan Gold Coast, Jl. Pantai Indah Kapuk no. 5, PIK, Jakarta Utara",
      open: '07.00 - 21.00',
      rating: '⭐ ⭐ ⭐ ',
      price: '100.000/person',
      image2: 'assets/lima2.jpg',
      image3: 'assets/lima3.jpg',
      menu: 'assets/menulima.jpg'),
  Trending(
      imageUrl: 'assets/6.jpg',
      name: 'Anomali Coffee',
      location: 'Jl. Iskandarsyah Raya No.19',
      open: '07.00 - 21.00',
      rating: '⭐ ⭐ ⭐ ⭐ ⭐',
      price: '100.000/person',
      image2: 'assets/3.jpg',
      image3: 'assets/6.jpg',
      menu: 'assets/menulima.jpg'),
  Trending(
      imageUrl: 'assets/Chief.jpg',
      name: 'Chief Coffee',
      location: 'Jl. Ciragil I No.11, RT.2/RW.7, Kec. Kby. Baru, Kota Jakarta Selatan',
      open: '08.00 - 21.00',
      rating: '⭐ ⭐ ⭐ ⭐',
      price: '100.000/person',
      image2: 'assets/Chief2.jpg',
      image3: 'assets/Chief.jpg',
      menu: 'assets/menulima.jpg'),
];
