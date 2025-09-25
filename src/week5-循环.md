# 循环语句

在 C 语言中，循环语句用于让某段代码重复执行。常见的循环语句有 `while`、`do...while` 和 `for`。

## 1. while 循环

`while` 循环会在条件为真时重复执行循环体。如果条件一开始就是假，则循环体一次也不会执行。

**语法：**
```c
while (条件) {
    // 循环体
}
```

**示例：输出1到5的数字**
```c
#include <stdio.h>

int main() {
    int i = 1;
    while (i <= 5) {
        printf("第%d次循环\n", i);
        i++; // 更新条件，避免无限循环
    }
    return 0;
}
```

**示例：计算1到10所有整数的和**
```c
#include <stdio.h>

int main() {
    int i = 1;
    int sum = 0;
    
    while (i <= 10) {
        sum += i; // 累加
        i++;      // 更新计数器
    }
    
    printf("1到10的和是: %d\n", sum);
    return 0;
}
```

## 2. do...while 循环

`do...while` 循环至少执行一次循环体，然后在条件为真时继续执行。它与 `while` 循环的主要区别是条件判断在循环体执行之后。

**语法：**
```c
do {
    // 循环体
} while (条件);
```

**示例：模拟用户输入密码**
```c
#include <stdio.h>

int main() {
    int password;
    
    do {
        printf("请输入密码(数字): ");
        scanf("%d", &password);
        
        if (password != 123456) {
            printf("密码错误，请重新输入。\n");
        }
    } while (password != 123456);
    
    printf("密码正确，欢迎登录！\n");
    return 0;
}
```

**示例：输出1到5的数字**
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

`for` 循环适合已知循环次数或有明确初始化、条件和更新操作的场景。它的结构使循环控制更加紧凑和清晰。

**语法：**
```c
for (初始化; 条件; 更新) {
    // 循环体
}
```

**示例：输出1到5的数字**
```c
#include <stdio.h>

int main() {
    for (int i = 1; i <= 5; i++) {
        printf("第%d次循环\n", i);
    }
    return 0;
}
```

**示例：计算1到10所有整数的和**
```c
#include <stdio.h>

int main() {
    int sum = 0;
    
    for (int i = 1; i <= 10; i++) {
        sum += i;
    }
    
    printf("1到10的和是: %d\n", sum);
    return 0;
}
```

**示例：输出10到1的倒计数**
```c
#include <stdio.h>

int main() {
    printf("倒计时开始:\n");
    for (int i = 10; i >= 1; i--) {
        printf("%d ", i);
    }
    printf("\n发射！\n");
    return 0;
}
```

## 循环控制语句

在循环中，可以使用 `break` 和 `continue` 语句来控制循环的执行。

- **break**: 立即跳出当前循环，执行循环之后的代码。
- **continue**: 跳过本次循环中剩余的语句，直接进入下一次循环的条件判断。

**示例：使用 break**
```c
#include <stdio.h>

int main() {
    for (int i = 1; i <= 10; i++) {
        if (i == 5) {
            break; // 当i等于5时，跳出循环
        }
        printf("i = %d\n", i);
    }
    printf("循环结束\n");
    return 0;
}
```

**输出结果:**
```
i = 1
i = 2
i = 3
i = 4
循环结束
```

**示例：使用 continue**
```c
#include <stdio.h>

int main() {
    for (int i = 1; i <= 10; i++) {
        if (i % 2 == 0) {
            continue; // 跳过偶数
        }
        printf("i = %d\n", i);
    }
    return 0;
}
```

**输出结果:**
```
i = 1
i = 3
i = 5
i = 7
i = 9
```

## 有趣的练习题

1. **输出1到100所有偶数。**
   ```c
   #include <stdio.h>
   int main() {
       for (int i = 1; i <= 100; i++) {
           if (i % 2 == 0) {
               printf("%d ", i);
           }
       }
       printf("\n");
       return 0;
   }
   ```

2. **计算1到100的所有整数的和。**
   ```c
   #include <stdio.h>
   int main() {
       int sum = 0;
       for (int i = 1; i <= 100; i++) {
           sum += i;
       }
       printf("1到100的和是: %d\n", sum);
       return 0;
   }
   ```

3. **输入一个正整数，输出它的阶乘。**
   ```c
   #include <stdio.h>
   int main() {
       int n;
       long long factorial = 1; // 使用long long防止溢出
       printf("请输入一个正整数: ");
       scanf("%d", &n);
       
       for (int i = 1; i <= n; i++) {
           factorial *= i;
       }
       
       printf("%d的阶乘是: %lld\n", n, factorial);
       return 0;
   }
   ```

4. **打印九九乘法表。**
   ```c
   #include <stdio.h>
   int main() {
       for (int i = 1; i <= 9; i++) {
           for (int j = 1; j <= i; j++) {
               printf("%d*%d=%-2d ", j, i, i * j); // %-2d左对齐，占2位
           }
           printf("\n");
       }
       return 0;
   }
   ```

5. **输入一个整数，判断它是否为质数（素数）。**
   ```c
   #include <stdio.h>
   #include <math.h>
   int main() {
       int n, isPrime = 1; // 假设是质数
       printf("请输入一个整数: ");
       scanf("%d", &n);
       
       if (n <= 1) {
           isPrime = 0; // 小于等于1的数不是质数
       } else {
           for (int i = 2; i <= sqrt(n); i++) {
               if (n % i == 0) {
                   isPrime = 0; // 找到因数，不是质数
                   break;
               }
           }
       }
       
       if (isPrime) {
           printf("%d 是质数。\n", n);
       } else {
           printf("%d 不是质数。\n", n);
       }
       
       return 0;
   }
   ```