#Kurz: [*Learn2CodeSK*](http://www.learn2code.sk/)

##Zadanie: 
* Vytvoriť jednoduchý blog ktorý bude mať:

MODEL:

     Post
        title :string
        body :text
     Category
        name :string
CONTROLLERS:

     Posts
        index
        show
     Categories
        show

* Vytvoriť väzby medzi Post a Category. 
* Naplniť databázu pomocou seedu.
* Vytvoriť jednoduchý layout s použitím partialov. 
* Vygenerovať dve statické stranky:
 * kontakt
 * o blogu
* Vytvoriť jednoduchú administráciu blogu (CRUD)
* Validacia formulárov a zobrazovanie chýb.

## Zadanie 2:
* Vytvorenie TO-DO listu.
* Vytvoriť dva asociovane modely project a task
* Vytvoriť controlery a views pre spravu to-do listu

#### BONUS

* Implementovat counter_cash 
* Rails Cast [#23](http://railscasts.com/episodes/23-counter-cache-column)

## Zadanie 3:
* Vytvor jednoduchu foto galeriu

MODEL

    album
        name:string
    photo
        file:string
        album_id:integer

CONTROLLER

    albums index new 
    has_many :photos, :dependent => :destroy

GEM:

    jquery-rails
    carrierwave
    rmagick
    fancybox2-rails , 0.2.4

#### BONUS

???? [fields_for](http://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-fields_for) ????

### Štefan

- ak by si chcel usetrit akoby miesto na disku (neskor na serveri, ktore byva obmedzene), mozes zmensovat aj tie originalne nahrane fotky. Ak niekto nahra 1MB fotku, sice sa vytvori malicky nahlad, ale mozes sprocesovat aj ten original. Staci zavolat metodu process, mimo toho "version" bloku. Mozes to vidiet zakomentovane na riadku 31 a 32 v photo_uploader.rb

- co sa tyka controllerov, napr PhotosController ci ProjectsController, jednotlive metody oddeluj prazdnym riadkom. Teda za poslednym "end" a dalsim "def" nechavaj miesto. Je to iba kozmeticka vec.

- ked si tu galeriu integroval priamo do toho blogu, napadlo mi, ze by si na frontende mohol zobrazovat iba albumy a fotky, a manazment tych albumov presunut pod admin ktory tam mas.

- posledna vec. pozri obrazok v prilohe a vsimni si before_filter (minule sme to pouzili v application controlleri) a poslednu metodu pod "private" blokom.
Kedze photos_controller obsahuje v kazdej z troch metod na prvom riadku nacitavanie albumu, jedna sa o sekvenciu kodu, ktora je rovnaka pre vsetky tri metody, a da sa presunut do metody, ktora sa vzdy automaticky zavola before filtrom. Pozri ten screen v prilohe aby si vedel o com hovorim a skus si to upravit aj u seba. Bude to fungovat rovnako.

