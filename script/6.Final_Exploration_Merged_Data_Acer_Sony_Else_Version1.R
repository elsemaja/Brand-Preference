# DECRIPTION: Acer / Sony Brand Preference
# NAME: Else Frijling
# SCRIPT FUNCTION: Merge dataframes and explore
# VERSION: 2


#plot Customer Brand Preference
ggplot(MergedData, aes(x=brand, fill = brand)) +
  theme_bw() +
  geom_bar() +
  labs(y = "Customer Count",
       x = "0 = Acer, 1 = Sony",
       title = "Customer Preference of Computer Brands ")

#plot Customer Brand Preferences according to age, salary and segment per elevel
ggplot(MergedData, aes(x=age, y= salary, color = brand)) +
  theme_bw() +
  geom_point() + 
  facet_wrap(~elevel) +
  labs(y = "Salary",
       x = "Age",
       title = "Customer Preference of Computer Brands (0 = Acer, 1 = Sony) segmented by education")

#plot Customer Brand Preferences according to age, salary and segment per zipcode
ggplot(MergedData, aes(x=age, y= salary, color = brand)) +
  theme_bw() +
  geom_point() + 
  facet_wrap(~zipcode) +
  labs(y = "Salary",
       x = "Age",
       title = "Customer Preference of Computer Brands (0 = Acer, 1 = Sony) segmented by zipcode")

#plot Customer Brand Preferences according to age, salary and segment per car
ggplot(MergedData, aes(x=age, y= salary, color = brand)) +
  theme_bw() +
  geom_point() + 
  facet_wrap(~car) +
  labs(y = "Salary",
       x = "Age",
       title = "Customer Preference of Computer Brands (0 = Acer, 1 = Sony) segmented by car")


