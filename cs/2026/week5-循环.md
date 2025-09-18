# 循环语句

在 C 语言中，循环语句用于让某段代码重复执行。常见的循环语句有 `while`、`do...while` 和 `for`。

## 1. while 循环

`while` 循环会在条件为真时重复执行循环体。

**语法：**
```c
while (条件) {
    // 循环体
}
```

**示例：**
```c
#include <stdio.h>

int main() {
    int i = 1;
    while (i <= 5) {
        printf("第%d次循环\n", i);
        i++;
    }
    return 0;
}
```

## 2. do...while 循环

`do...while` 循环至少执行一次循环体，然后在条件为真时继续执行。

**语法：**
```c
do {
    // 循环体
} while (条件);
```

**示例：**
```c
#include <stdio.h>

int main() {
    int i = 1;
    do {
        printf("第%d次循环\n", i);
        i++;
    } while (i <= 5);
    return 0;
}
```

## 3. for 循环

`for` 循环适合已知循环次数的场景。

**语法：**
```c
for (初始化; 条件; 更新) {
    // 循环体
}
```

**示例：**
```c
#include <stdio.h>

int main() {
    for (int i = 1; i <= 5; i++) {
        printf("第%d次循环\n", i);
    }
    return 0;
}
```

---

## 有趣的练习题

1. **输出1到100所有偶数。**
2. **计算1到100的所有整数的和。**
3. **输入一个正整数，输出它的阶乘。**
4. **打印九九乘法表。**
5. **输入一个整数，判断它是否为质数（素数）。**