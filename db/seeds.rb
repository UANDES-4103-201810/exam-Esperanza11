# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i1 = Ingredient.create(name: 'mozzarella')
i2 = Ingredient.create(name: 'tomato')
i3 = Ingredient.create(name: 'pepperoni')
i4 = Ingredient.create(name: 'olives')
i5 = Ingredient.create(name: 'onion')
i6 = Ingredient.create(name: 'artichokes')
i7 = Ingredient.create(name: 'mushrooms')
i8 = Ingredient.create(name: 'ham')
i9 = Ingredient.create(name: 'shrimp')

cr = Crust.create(regorthin: 'regular', price: 80)
ct = Crust.create(regorthin:'thin', price: 75)

r1 = Recipe.create(name: "Super pepperoni", price: 100)
r2 = Recipe.create(name: "Napolitana", price: 200)
r3 = Recipe.create(name: "Espe", price: 300)

pep1 = IngredientInRecipe.create(recipe: r1, ingredient: i1)
pep2 = IngredientInRecipe.create(recipe: r1, ingredient: i1)
pep3 = IngredientInRecipe.create(recipe: r1, ingredient: i3)
pep4 = IngredientInRecipe.create(recipe: r1, ingredient: i3)

nap1 = IngredientInRecipe.create(recipe: r2, ingredient: i1)
nap2 = IngredientInRecipe.create(recipe: r2, ingredient: i2)
nap3 = IngredientInRecipe.create(recipe: r2, ingredient: i4)
nap4 = IngredientInRecipe.create(recipe: r2, ingredient: i8)

espe1 = IngredientInRecipe.create(recipe: r1, ingredient: i9)
espe2 = IngredientInRecipe.create(recipe: r1, ingredient: i5)
espe3 = IngredientInRecipe.create(recipe: r1, ingredient: i6)
espe4 = IngredientInRecipe.create(recipe: r1, ingredient: i7)

p1= Pizza.create(recipe_id: 1, crust_id: 2)
p2= Pizza.create(recipe_id: 2, crust_id: 2)
p3= Pizza.create(recipe_id: 3, crust_id: 1)
p4= Pizza.create(recipe_id: 1, crust_id: 1)
p5= Pizza.create(recipe_id: 2, crust_id: 1)


o1 = Order.create(payment_method: 'card')

op1 = OrderPizza.create(order: o1, pizza: p1)
op2 = OrderPizza.create(order: o1, pizza: p2)
op3 = OrderPizza.create(order: o1, pizza: p3)
