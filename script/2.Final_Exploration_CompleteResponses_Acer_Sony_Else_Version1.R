# DECRIPTION: Acer / Sony Brand Preference
# NAME: Else Frijling
# SCRIPT FUNCTION: Data Exploration
# VERSION: 2

#GGplot exploration 
#plot Customer Brand Preference by age
ggplot(CompleteResponses, aes(x=age, fill = brand)) +
  theme_bw() +
  geom_bar() +
  labs(y = "Customer Count",
       title = "Customer Preference by Age")


#plot Customer Brand Preference by zipcode
ggplot(CompleteResponses, aes(x=zipcode, fill = brand)) +
  theme_bw() +
  geom_bar() +
  labs(y = "Customer Count",
       title = "Customer Preference by Zipcode")

#plot Customer Brand Preference by car
ggplot(CompleteResponses, aes(x=car, fill = brand)) +
  theme_bw() +
  geom_bar() +
  labs(y = "Customer Count",
       title = "Customer Preference by Car")

#plot Customer Brand Preference by elevel
ggplot(CompleteResponses, aes(x=elevel, fill = brand)) +
  theme_bw() +
  geom_bar() +
  labs(y = "Customer Count",
       title = "Customer Preference by Education")

#plot Customer Brand Preference by age, seperated by zipcode
ggplot(CompleteResponses, aes(x = age, fill = brand)) +
  theme_bw() +
  facet_wrap(~zipcode) +
  geom_bar() +
  labs(y = "Customer Count",
       title = "Customer Preference by Age and Region")


#plot histogram based on age, bin = 10, and brand preference
ggplot(CompleteResponses, aes(x = age, fill = brand)) +
  theme_bw() +
  geom_histogram(binwidth = 10) +
  labs(y = "Customer Count",
       x = "Age (binwidth = 10",
       title = "Distribution of Customer Age and Brand Preference")

#plot histogram based on age, bin = 5, and brand preference
ggplot(CompleteResponses, aes(x = age, fill = brand)) +
  theme_bw() +
  geom_histogram(binwidth = 5) +
  labs(y = "Customer Count",
       x = "Age (binwidth = 5",
       title = "Distribution of Customer Age and Brand Preference")


#plot Customer Brand Preference
ggplot(CompleteResponses, aes(x=brand, fill = brand)) +
  theme_bw() +
  geom_bar() +
  labs(y = "Customer Count",
       x = "0 = Acer, 1 = Sony",
       title = "Customer Preference of Brands ")

