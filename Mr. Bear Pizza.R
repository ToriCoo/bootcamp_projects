# appetizers
ap_id <- c(1,2,0)
ap_menu <- c("Garlic bread",
            "French fried",
            "Go next ...")
ap_prize <- c(49,39,0)
df_ap <- data.frame(ap_id,
                    ap_menu ,
                    ap_prize)

# main dish
pizza_id <- c(1:4, 0)
pizza_menu <- c("Seafood deluxe",
               "Hawaiian",
               "Pepperoni",
               "Double cheese (+ 50 ฿)",
               "Go naxt ... ")
df_pizza <- data.frame(pizza_id,
                      pizza_menu)
                                                                                                 
size_id <- c("s","m","l")
size <- c("Small","Medium","Large")
prize <- c(199,299,399)
df_size <- data.frame(size_id,
                     size,
                     prize)

# drinks
drinks_id <- c(1:3,0)
drinks <- c("Coke 500 ml",
          "Sprite 500 ml",
          "Mineral water 650 ml",
          "Go naxt ... ")
drinks_prize <- c(25,25,20,0)
df_drinks <- data.frame(drinks_id,
                   drinks,
                   drinks_prize)

####################

# greeting
print("Restrurant is opening now !!")
print("===============================================")
print("|      ʕ •ᴥ•ʔ Welcome to Mr. Bear pizza       |")
print("===============================================")
print("Select your order by typing id number...")

#---------------------------------------------------------------------------------#
# 1.choose appetizer

appetizers <- 0 # count appetizer orders
appetizer1 <- 0
appetizer2 <- 0

# 1.1 loop appetizer
print("----------------------------------------------")
print("          [[ Step 1 : Appetizer ]]            ")
print("----------------------------------------------")
repeat
{
  print(df_ap)
  print("Select appetizer id ... ")
  appetizer <- readLines("stdin", n=1)

  # 1.1.1 if else (chose appetizer)
  if (appetizer == 1)
  {
    appetizers = appetizers +1
    appetizer1 = appetizer1 +1
    ap1_prize <- 49
     print("===============================================")
    print(paste("Appetizer order ", appetizers , " created successfully!"))
     print("===============================================")
    print("Select another one ? ...")
    print("------------------------")
  } 
  else if(appetizer == 2)
  {
    appetizers = appetizers +1
    appetizer2 = appetizer2 +1
    ap2_prize <- 39
    print("===============================================")
    print(paste("Appetizer order ", appetizers , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
    print("------------------------")
  } 
  else if(appetizer == "0")
  {
    break
  } 
  else
  {
    print("===============================================")
    print("   Not found !! ... Please select again   ")
    print("===============================================")
  }     
}

# 1.2 summary appetizer
print("======================***======================")
print("<<<<<<<<<<< Appetizer Order Summary >>>>>>>>>>>")  
if (appetizer1 > 0)
{
  print(paste( "Garlic bread : ", appetizer1 , "  ea."))
}
if (appetizer2 > 0)
{
  print(paste("French fried : ", appetizer2, "  ea."))
}
if (appetizers == 0)
{
  print("No appetizer ordered")
}
print("======================***======================")

#---------------------------------------------------------------------------------#
# 2. choose pizza
pizzas <- 0 # count pizza orders
pizza1s <- 0
pizza1m <- 0
pizza1l <- 0
pizza2s <- 0
pizza2m <- 0
pizza2l <- 0
pizza3s <- 0
pizza3m <- 0
pizza3l <- 0
pizza4s <- 0
pizza4m <- 0
pizza4l <- 0

# 2.1 loop pizza
print("----------------------------------------------")  
print("            [[ Step 2 : Pizza ]]              ")

repeat
{
  # 2.1.1) choose pizza type (if 0 = go next step)
  print("----------------------------------------------")
  print("          [[ Step 2.1 : Pizza Type ]]          ")
  print("----------------------------------------------")
  print(df_pizza)
  print("Select pizza id ...")
  pizza <- readLines("stdin", n=1)
  if (pizza == 0)
  {
    break
  }
  else if (pizza == 1 | pizza == 2 | pizza == 3 | pizza == 4)
  {
    print("===============================================")
    print("              Pizza selected ...           ")
    print("===============================================")
  }
  else
  {
    print("===============================================")
    print("   Not found !! ... Please select again   ")
    print("===============================================")
  }

  # 2.1.2) choose size
  print("----------------------------------------------")  
  print("          [[ Step 2-2 : Pizza Size ]]          ")
  print("----------------------------------------------")
  print(df_size)
  print("Select pizza size (s,m,l) ...")
  size <- readLines("stdin", n=1)

  # 2.1.3) count pizza
  # 2.1.3.1) Pizza Id_1 (s,m,l)
  if (pizza == 1 & size == "s")
  {
    pizzas = pizzas +1
    pizza1s = pizza1s +1
    pizza1s_prize <- 199
    print("===============================================")
    print(paste("Pizza order ", pizzas , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
  }
  else if(pizza == 1 & size == "m")
  {
    pizzas = pizzas +1
    pizza1m = pizza1m +1
    pizza1m_prize <- 299
    print("===============================================")
    print(paste("Pizza order ", pizzas , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
  }
  else if(pizza == 1 & size == "l")
  {
    pizzas = pizzas +1
    pizza1l = pizza1l +1
    pizza1l_prize <- 399
    print("===============================================")
    print(paste("Pizza order ", pizzas , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
  } 
    
  # 2.1.3.2) Pizza Id_2 (s,m,l)
  else if(pizza == 2 & size == "s")
  {
    pizzas = pizzas +1
    pizza2s = pizza2s +1
    pizza2s_prize <- 199
    print("===============================================")
    print(paste("Pizza order ", pizzas , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
  }
  else if(pizza == 2 & size == "m")
  {
    pizzas = pizzas +1
    pizza2m = pizza2m +1
    pizza2m_prize <- 299
    print("===============================================")
    print(paste("Pizza order ", pizzas , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
  }
  else if(pizza == 2 & size == "l")
  {
    pizzas = pizzas +1
    pizza2l = pizza2l +1
    pizza2l_prize <- 399
    print("===============================================")
    print(paste("Pizza order ", pizzas , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
  } 
    
  # 2.1.3.3) Pizza Id_3 (s,m,l)
  else if(pizza == 3 & size == "s")
  {
    pizzas = pizzas +1
    pizza3s = pizza3s +1
    pizza3s_prize <- 199
    print("===============================================")
    print(paste("Pizza order ", pizzas , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
  }
  else if(pizza == 3 & size == "m")
  {
    pizzas = pizzas +1
    pizza3m = pizza3m +1
    pizza3m_prize <- 299
    print("===============================================")
    print(paste("Pizza order ", pizzas , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
  }
  else if(pizza == 3 & size == "l")
  {
    pizzas = pizzas +1
    pizza3l = pizza3l +1
    pizza3l_prize <- 399
    print("===============================================")
    print(paste("Pizza order ", pizzas , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
  }
    
  # 2.1.3.4) Pizza Id_4 (s,m,l)
  else if(pizza == 4 & size == "s")
  {
    pizzas = pizzas +1
    pizza4s = pizza4s +1
    pizza4s_prize <- 249
    print("===============================================")
    print(paste("Pizza order ", pizzas , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
  }
  else if(pizza == 4 & size == "m")
  {
    pizzas = pizzas +1
    pizza4m = pizza4m +1
    pizza4m_prize <- 349
    print("===============================================")
    print(paste("Pizza order ", pizzas , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
  }
  else if(pizza == 4 & size == "l")
  {
    pizzas = pizzas +1
    pizza4l = pizza4l +1
    pizza4l_prize <- 449
    print("===============================================")
    print(paste("Pizza order ", pizzas , " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
  }
    else
  {
    print("===============================================")
    print("   Not found !! ... Please select again   ")
    print("===============================================")
  }
}

# 2.2 summary pizza menu
    
print("======================***======================")
print("<<<<<<<<<<<<< Pizza Order Summary >>>>>>>>>>>>>") 
  # 2.2.1) Pizza Id_1 (s,m,l)
  if (pizza1s > 0)
  {
    print(paste("Small Seafood deluxe pizza : ", pizza1s , "  ea."))
  } 
  if (pizza1m > 0)
  {
    print(paste("Medium Seafood deluxe pizza : ", pizza1m , "  ea."))    
  }
  if (pizza1l > 0)
  {
    print(paste("Large Seafood deluxe pizza : ", pizza1l , "  ea."))    
  }
  
  # 2.2.2) Pizza Id_2 (s,m,l)
  if (pizza2s > 0)
  {
    print(paste("Small Hawaiian pizza : ", pizza2s , "  ea."))
  } 
  if (pizza2m > 0)
  {
    print(paste("Medium Hawaiian pizza : ", pizza2m , "  ea."))    
  }
  if (pizza2l > 0)
  {
    print(paste("Large Hawaiian pizza : ", pizza2l , "  ea."))    
  }
    # 2.2.3) Pizza Id_3 (s,m,l)
  if (pizza3s > 0)
  {
    print(paste("Small Pepperoni pizza : ", pizza3s , "  ea."))
  } 
  if (pizza3m > 0)
  {
    print(paste("Medium Pepperoni pizza : ", pizza3m , "  ea."))    
  }
  if (pizza3l > 0)
  {
    print(paste("Large Pepperoni pizza : ", pizza3l , "  ea."))    
  }
    # 2.2.1) Pizza Id_1 (s,m,l)
  if (pizza4s > 0)
  {
    print(paste("Small Double cheese pizza : ", pizza4s , "  ea."))
  } 
  if (pizza4m > 0)
  {
    print(paste("Medium Double cheese pizza : ", pizza4m , "  ea."))    
  }
  if (pizza4l > 0)
  {
    print(paste("Large Double cheese pizza : ", pizza4l , "  ea."))    
  }
  if (pizzas == 0)
  {  
    print("No pizza ordered.")
  }  
print("======================***======================")

#---------------------------------------------------------------------------------#

# 3. choose drinks
drinks <- 0
drink1 <- 0
drink2 <- 0
drink3 <- 0
# 3.1 loop drink
print("----------------------------------------------")  
print("                Step 3 : Drinks               ")
print("----------------------------------------------")  
repeat
{
    print(df_drinks)
    print("Select your drinks ...")
    drink <- readLines("stdin", n=1) 
  
  if (drink == 1) #Coke 500 ml
  {
    drinks = drinks +1
    drink1 = drink1 +1
    d1_prize <- 25
    print("===============================================")
    print(paste("Your drink order ", drink, " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
    print("------------------------")
  }
  else if(drink == 2) #Sprite 500 ml
  {
    drinks = drinks +1
    drink2 = drink2 +1
    d2_prize <- 25
    print("===============================================")
    print(paste("Your drink order ", drink, " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
    print("------------------------")
  }
  else if(drink == 3) # Mineral water
  {
    drinks = drinks +1
    drink3 = drink3 +1
    d3_prize <- 20
    print("===============================================")
    print(paste("Your drink order ", drink, " created successfully!"))
    print("===============================================")
    print("Select another one ? ...")
    print("------------------------")
  }
  else if(drink == 0)
  {
    break
  }
  else
  {
    print("===============================================")
    print("   Not found !! ... Please select again   ")
    print("===============================================")
  }
}

# 3.2 summary drink
print("======================***======================")
print("<<<<<<<<<<<<< Drink Order Summary >>>>>>>>>>>>>")   
if (drink1 > 0)
{
  print(paste( "Coke 500 ml : ", drink1 , "  bot."))
}
if (drink2 > 0)
{
  print(paste("Sprite 500 ml : ", drink2, "  bot."))
}
if (drink3 > 0)
{
  print(paste("Mineral water 650 ml : ", drink3, "  bot."))
}
if (drinks == 0)
{
  print("No drink ordered")
}
print("======================***======================")

#---------------------------------------------------------------------------------#

# 4. Bill summary
datetime <- Sys.time()
# 4.1 Bill head
print("======================***======================")
print ("----------------------------------------------")
print ("|      ʕ ꈍᴥꈍʔ MR. BEAR PIZZA ʕꈍᴥꈍ ʔ      |")
print ("----------------------------------------------")
print (paste(" << RECEIPT >>       ", datetime))

# 4.2 Body (menu)
 # 4.2.1) Variables
order <- c() #order name
amount <- c() #order amount
price <- c() #order price

 # 4.2.2) add list
  # appetizer
if (appetizer1 > 0)
{
  order <- append(order, "Garlic bread")
  amount <- append(amount, appetizer1)
  price <- append(price, ap1_prize)
}
if (appetizer2 > 0)
{
  order <- append(order, "French fried")
  amount <- append(amount, appetizer2)
  price <- append(price, ap2_prize)
}
  
  # pizza_1
if (pizza1s > 0)
{
  order <- append(order, "Small - Seafood deluxe pizza")
  amount <- append(amount, pizza1s)
  price <- append(price, pizza1s_prize)
}
if (pizza1m > 0)
{
  order <- append(order, "Medium - Seafood deluxe pizza")
  amount <- append(amount, pizza1m)
  price <- append(price, pizza1m_prize)
}
if (pizza1l > 0)
{
  order <- append(order, "Large - Seafood deluxe pizza")
  amount <- append(amount, pizza1l)
  price <- append(price, pizza1l_prize)
}
  # pizza_2
if (pizza2s > 0)
{
  order <- append(order, "Small - Hawaiian pizza")
  amount <- append(amount, pizza2s)
  price <- append(price, pizza2s_prize)
}
if (pizza2m > 0)
{
  order <- append(order, "Medium - Hawaiian pizza")
  amount <- append(amount, pizza2m)
  price <- append(price, pizza2m_prize)
}
if (pizza2l > 0)
{
  order <- append(order, "Large - Hawaiian pizza")
  amount <- append(amount, pizza2l)
  price <- append(price, pizza2l_prize)
}
  # pizza_3
if (pizza3s > 0)
{
  order <- append(order, "Small - Pepperoni pizza")
  amount <- append(amount, pizza3s)
  price <- append(price, pizza3s_prize)
}
if (pizza3m > 0)
{
  order <- append(order, "Medium - Pepperoni pizza")
  amount <- append(amount, pizza3m)
  price <- append(price, pizza3m_prize)
}
if (pizza3l > 0)
{
  order <- append(order, "Large - Pepperoni pizza")
  amount <- append(amount, pizza3l)
  price <- append(price, pizza3l_prize)
}
  # pizza_4
if (pizza4s > 0)
{
  order <- append(order, "Small - Double cheese pizza")
  amount <- append(amount, pizza4s)
  price <- append(price, pizza4s_prize)
}
if (pizza4m > 0)
{
  order <- append(order, "Medium - Double cheese pizza")
  amount <- append(amount, pizza4m)
  price <- append(price, pizza4m_prize)
}
if (pizza4l > 0)
{
  order <- append(order, "Large - Double cheese pizza")
  amount <- append(amount, pizza4l)
  price <- append(price, pizza4l_prize)
}
  
  #drinks
if (drink1 > 0)
{
  order <- append(order, "Coke 500 ml")
  amount <- append(amount, drink1)
  price <- append(price, d1_prize)
}
if (drink2 > 0)
{
  order <- append(order, "Sprite 500 ml")
  amount <- append(amount, drink2)
  price <- append(price, d2_prize)
}
if (drink3 > 0)
{
  order <- append(order, "Mineral water 650 ml")
  amount <- append(amount, drink3)
  price <- append(price, d3_prize)
}

  
 # 4.2.3) create dataframe
my_order <- list(orders = order,
                amounts = amount,
                prices = price,
                total = amount*price) 
  
data.frame(my_order)
  
# 4.3 summary
print("|--------------------TOTAL---------------------|")

print(paste("      Total Amount     : ", sum(price), "    THB    "))

print("-----------------------------------------------")
print("               THANK YOU! ʕ♡˙ᴥ˙♡ʔ              ")
print("======================***======================")
