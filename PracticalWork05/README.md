# Practical work 5

Завдання ««Поглиблення» функції» 

Реалізувати з використанням метапрограмування шаблон функції, який дозволив би застосовувати задану функцію багаторазово.

```cpp
deep<f, 3>(10); // То же, что и f(f(f(10)))
deep<g, 1>(x);  // g(x)
```