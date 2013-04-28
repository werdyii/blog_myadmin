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
