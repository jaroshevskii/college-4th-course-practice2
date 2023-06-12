# Practical Work 5

## Task: Function Deepening

Implement a function template using metaprogramming that allows applying a given function multiple times.

**Example**:

```cpp
deep<f, 3>(10); // Same as f(f(f(10)))
deep<g, 1>(x);  // Same as g(x)
```

**Instructions**:

1. Define the function template `deep`, which has two template parameters: `typename F` and `int N`.
2. Define the base case of recursion when `N` equals 0. In this case, simply return the argument without any changes.
3. Define the general case of recursion when `N` is greater than 0. In this case, recursively call the `deep` function, decrementing the value of `N` by 1, and apply the function `F` to the result of the previous call.

Test the implementation using the provided examples above.
