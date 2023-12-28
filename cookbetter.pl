:- dynamic fact/1, fiction/1.

is_true(Question) :-
  (
    fact(Question) -> true;
    fiction(Question) -> fail;
    format('~w?~n', [Question]),
    Answer = read(yes),
    Answer -> assert(fact(Question));
    assert(fiction(Question)), fail).


cook(pizza):- is_true('Flour'), is_true('Tomato Sauce'), is_true('Cheese'), is_true('baking powder'), is_true('Olive Oil').
cook(couscous_chicken) :- is_true('Couscous'), is_true('Chicken'), is_true('Chickpeas'), is_true('Carrots'), is_true('Onion'), is_true('Garlic'), is_true('Cumin'), is_true('Coriander').
cook(chorba_soup) :- is_true('Lamb'), is_true('Tomatoes'), is_true('Chickpeas'), is_true('Onion'), is_true('Garlic'), is_true('Coriander'), is_true('Paprika'), is_true('Noodles').
cook(shakshuka) :- is_true('Tomatoes'), is_true('Peppers'), is_true('Onion'), is_true('Eggs'), is_true('Cumin'), is_true('Paprika'), is_true('Garlic').
cook(mthawam):-  is_true('Tomatoes'), is_true('Peppers'), is_true('Onion'), is_true('meat'), is_true('Garlic').
cook(baghrir):- is_true('flour'), is_true('baking powder'), is_true('salt'), is_true('sugar').
cook(macedoine):- is_true('rize'),is_true('mayonnaise'),is_true('carotte'),is_true('cheese').
cook(caesar_salad) :- is_true('Romaine Lettuce'), is_true('Caesar Dressing'), is_true('Parmesan Cheese'), is_true('Croutons').
cook(berkoukes) :- is_true('Berkoukes (Large Couscous)'), is_true('Lamb'), is_true('Chickpeas'), is_true('Tomatoes'), is_true('Onion'), is_true('Coriander'), is_true('Cumin').
cook(loubia) :- is_true('White Beans'), is_true('Tomatoes'), is_true('Lamb'), is_true('Onion'), is_true('Garlic'), is_true('Coriander'), is_true('Cumin').
cook(hmiss) :- is_true('Red Peppers'), is_true('Tomatoes'), is_true('Garlic'), is_true('Olive Oil'), is_true('Cumin').
cook(pasta) :-  is_true('Pasta'),is_true('Tomato'), is_true('Oil').
cook(rice) :-  is_true('Rice'), is_true('Tomato'), is_true('Oil').
cook(frites_omelette) :- is_true('potato'), is_true('Eggs'), is_true('Oil').
cook(frites) :- is_true('Potato'),is_true('Oil').

% Facts for recipes

recipe(frites, [
    'Peel and cut potatoes into strips',
    'Fry them in oil until golden brown'
]).

recipe(pasta, [
    'Boil pasta',
    'Prepare a tomato sauce',
    'Mix the cooked pasta with the sauce'
]).

recipe(rice, [
    'Cook rice',
    'Prepare a tomato sauce',
    'Mix the cooked rice with the sauce'
]).

recipe(frites_omelette, [
    'Peel and cut potatoes into strips',
    'Fry them in oil until golden brown',
    'Beat eggs and mix with fried potatoes'
]).

recipe(pizza, [
    'Prepare pizza dough with flour, baking powder, and olive oil',
    'Top with tomato sauce and cheese',
    'Bake until crust is golden'
]).

recipe(couscous_chicken, [
    'Cook couscous',
    'Prepare a stew with chicken, chickpeas, carrots, onion, garlic, cumin, and coriander'
]).

recipe(chorba_soup, [
    'Cook lamb',
    'Prepare a soup with tomatoes, chickpeas, onion, garlic, coriander, paprika, and noodles'
]).

recipe(shakshuka, [
    'Cook tomatoes, peppers, and onion with cumin, paprika, and garlic',
    'Poach eggs in the mixture'
]).

recipe(mthawam, [
    'Cook tomatoes, peppers, and onion with meat and garlic'
]).

recipe(baghrir, [
    'Prepare a batter with flour, baking powder, salt, and sugar',
    'Cook thin pancakes'
]).

recipe(macedoine, [
    'Cook rice',
    'Mix with mayonnaise, chopped carrots, and cheese'
]).

recipe(caesar_salad, [
    'Toss Romaine lettuce with Caesar dressing',
    'Top with Parmesan cheese and croutons'
]).

recipe(berkoukes, [
    'Cook Berkoukes',
    'Prepare a stew with lamb, chickpeas, tomatoes, onion, coriander, and cumin'
]).

recipe(loubia, [
    'Cook white beans',
    'Prepare a stew with tomatoes, lamb, onion, garlic, coriander, and cumin'
]).

recipe(hmiss, [
    'Cook red peppers and tomatoes with garlic, olive oil, and cumin'
]).


drink(lemonade) :-          is_true('Is the drink flavored from natural sources'),     is_true('Is the drink citrus').
drink(soda) :-              is_true('Is the drink Carbonated'),                        is_true('Is the drink sweet from added sugar'),                  is_true('Is there a danger of diabetes with lots of the drink').
drink(apple_juice) :-       is_true('Is the drink flavored from natural sources'),     is_true('Is the drink often a morning beverage'),                is_true('Is the drink made from a plant').
drink(orange_juice) :-      is_true('Is the drink flavored from natural sources'),     is_true('Is the drink often a morning beverage'),                is_true('Is the drink citrus').
drink(fruit_punch) :-       is_true('Is the drink flavored from natural sources'),     is_true('Is the drink sweet from added sugar').
drink(water) :-             is_true('Is the drink natural'),                           is_true('Are we essentially flesh bags made of the drink').
drink(tropical_punch) :-    is_true('Is the drink flavored from natural sources'),     is_true('Is the drink sweet from added sugar'),                  is_true('Does the drink often break through walls and scream -oh yea!-').
drink(milk) :-              is_true('Is the drink natural'),                           is_true('Does the drink come from animal').
drink(chocolate_milk) :-    is_true('Is the drink sweet from added sugar'),            is_true('Does the drink come from animal'),                      is_true('I do believe you have stumped me, if that is correct I will reward you with chocolate milk').



begin :-
    nl,
    write('  - Welcome to this expert system about meals and drinks to help you decide what to have -  '), nl,
    write('  I will ask you whether you want to cook a meal or have a drink.  '), nl,
    write('  Please answer in the exact form yes. or no.  '), nl,
    write('  Are you ready to begin?  '), nl,
    repeat,
    read(Ready), nl,
    run(Ready), nl,
    undo,
    write('If you would like to try again type begin.').

run(yes) :-
    write('Do you want to cook a meal or have a drink? '), nl,
    read(Choice), nl,
    (
        Choice == meal -> run_meal;
        Choice == drink -> run_drink;
        write('Invalid choice. Please choose between meal and drink.'), nl
    ).

run(no) :- write('Goodbye'), nl, halt.

run_meal :-
    write('Great! Let me suggest a meal for you.'), nl,
    (cook(Meal) ->
        format('I think you can cook ~w.~n', [Meal]),
       write('Do you want the recipe? '), nl,
        read(Answer),
        (
            Answer == yes ->
            recipe(Meal, Recipe),
            format('Recipe: ~w~n', [Recipe]),
            true
        )


      ,  write('Do you want a drink to accompany your meal? '), nl,
        read(Answer),
        (
            Answer == yes -> run_drink;
            true
        )
    ;
        write('I couldn\'t find a suitable meal based on your ingredients. Try again with different ingredients.'), nl).

run_drink :-
    write('Great! Let me suggest a drink for you.'), nl,
    (drink(Drink) ->
        format('I suggest you have ~w.~n', [Drink])
    ;
        write('I couldn\'t find a suitable non-alcoholic drink suggestion for you. Try again with different preferences.'), nl).

undo :- retract(fact(_)), fail.
undo :- retract(fiction(_)), fail.
undo.