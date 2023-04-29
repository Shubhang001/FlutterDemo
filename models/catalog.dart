class CatalogModel{
static final items=
[Item(
  id: "001",
  name: "iPhone 12 Pro",
  discript: "Apple iPhone 12 generation",
  price:999,
  color:"#33505A", 
  image:"https://imgs.search.brave.com/QDu3qxPft5vwxNrGKNLezeyFNJQLhvaGAuSyWbxnhSs/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9jZG4u/bW92ZXJ0aXguY29t/L21lZGlhL2NhdGFs/b2cvcHJvZHVjdC9j/YWNoZS9pbWFnZS8x/MjAweC9pL3AvaXBo/b25lLTEyLW1pbmkt/Z3JlZW4tMTI4Z2Iu/anBn"
  )];
}


class Item{
  final String id;
  final String name;
  final String discript;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.discript, required this.price, required this.color, required this.image});
}

