# Practical work 2

Розробити три класи, які слід пов'язати між собою, використовуючи успадкування: 

1. клас Product, який має три елемент-даних - ім'я, ціна і вага товару (базовий клас для всіх класів); 

2. клас Buy, що містить дані про кількість товару, що купується в штуках, про ціну за весь куплений товар і про вагу товару (похідний клас для класу Product і базовий клас для класу Check); 

3. клас Check, який не містить ніяких елемент-даних. Даний клас повинен виводити на екран інформацію про товар і про покупку (похідний клас для класу Buy); Для взаємодії з даними класів розробити set- і get-методи. Все елемент-дані класів оголошувати як private.