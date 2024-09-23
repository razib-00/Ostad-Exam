class Book{
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks=0;

  Book(this.title, this.author, this.publicationYear, this.pagesRead){
    totalBooks++;
  }

  //adds it to the `pagesRead` property
  void read(int pages){
    pagesRead +=pages;
  }

  //Getter Method
  get getPagesRead=>pagesRead;

  get getTitle=>title;

  get getAuthor=>author;

  get getPublicationYear=>publicationYear;

  int getBookAge(){
    int currentYears=DateTime.now().year;
    return (currentYears-publicationYear);
  }
}
void main(){
  Book book1=Book('Programming for habul', 'Jhangar Mahbub', 2016, 127);
  Book book2=Book('Bull to boss of programming', 'Jhangar Mahbub', 2017, 127);
  Book book3=Book('Recharge your down battery', 'Jhangar Mahbub', 2018, 120);

  //call the read method
  book1.read(52);
  book2.read(20);
  book3.read(60);

  //book1
  print('Book 1');
  print('Title: ${book1.getTitle}');
  print('Author: ${book1.getAuthor}');
  print('publicationYear: ${book1.getPublicationYear}');
  print('Page Read ${book1.getPagesRead}');
  print('BookAge: ${book1.getBookAge()} Years');
  print('=====================================');

  //book2
  print('Book 2');
  print('Title: ${book2.getTitle}');
  print('Author: ${book2.getAuthor}');
  print('publicationYear: ${book2.getPublicationYear}');
  print('Page Read ${book2.getPagesRead}');
  print('BookAge: ${book2.getBookAge()} Years');
  print('=====================================');

  //book3
  print('Book 3');
  print('Title: ${book3.getTitle}');
  print('Author: ${book3.getAuthor}');
  print('publicationYear: ${book3.getPublicationYear}');
  print('Page Read ${book3.getPagesRead}');
  print('BookAge: ${book3.getBookAge()} Years');
  print('=====================================');
  print('Total Books = ${Book.totalBooks}');
}