# 条件判断

在 C 语言中，条件判断语句用于根据不同的条件执行不同的代码。常用的条件判断语句有 `if`、`if...else`、`if...else if...else` 和 `switch`。

## 1. if 语句

`if` 语句用于判断条件是否成立，如果成立则执行对应的代码块。

**语法：**

```c
if (条件) {
    // 条件为真时执行的代码
}
```

**示例：检查用户是否成年**

```c
#include <stdio.h>

int main() {
    int age;
    printf("请输入你的年龄: ");
    scanf("%d", &age);
    
    if (age >= 18) {
        printf("你已成年。\n");
    }
    
    return 0;
}
```

**示例：判断数字正负**

```c
#include <stdio.h>

int main() {
    int number;
    printf("请输入一个整数: ");
    scanf("%d", &number);
    
    if (number > 0) {
        printf("你输入的是正数。\n");
    }
    
    if (number < 0) {
        printf("你输入的是负数。\n");
    }
    
    if (number == 0) {
        printf("你输入的是零。\n");
    }
    
    return 0;
}
```

## 2. if...else 语句

`if...else` 语句用于条件成立和不成立时分别执行不同的代码块。

**语法：**

```c
if (条件) {
    // 条件为真时执行
} else {
    // 条件为假时执行
}
```

**示例：判断成绩是否及格**

```c
#include <stdio.h>

int main() {
    int score;
    printf("请输入你的考试成绩: ");
    scanf("%d", &score);
    
    if (score >= 60) {
        printf("恭喜你，及格了！\n");
    } else {
        printf("很遗憾，没有及格。\n");
    }
    
    return 0;
}
```

**示例：判断奇偶数**

```c
#include <stdio.h>

int main() {
    int number;
    printf("请输入一个整数: ");
    scanf("%d", &number);
    
    if (number % 2 == 0) {
        printf("%d 是偶数。\n", number);
    } else {
        printf("%d 是奇数。\n", number);
    }
    
    return 0;
}
```

## 3. if...else if...else 语句

用于多个条件的判断，每个条件都可以对应不同的代码块。

**语法：**

```c
if (条件1) {
    // 条件1为真时执行
} else if (条件2) {
    // 条件2为真时执行
} else {
    // 以上条件都不成立时执行
}
```

**示例：判断成绩等级**

```c
#include <stdio.h>

int main() {
    int score;
    printf("请输入你的考试成绩: ");
    scanf("%d", &score);
    
    if (score >= 90) {
        printf("成绩等级: 优秀\n");
    } else if (score >= 80) {
        printf("成绩等级: 良好\n");
    } else if (score >= 60) {
        printf("成绩等级: 及格\n");
    } else {
        printf("成绩等级: 不及格\n");
    }
    
    return 0;
}
```

**示例：根据年龄判断人生阶段**

```c
#include <stdio.h>

int main() {
    int age;
    printf("请输入你的年龄: ");
    scanf("%d", &age);
    
    if (age < 13) {
        printf("你是儿童。\n");
    } else if (age < 20) {
        printf("你是青少年。\n");
    } else if (age < 60) {
        printf("你是成年人。\n");
    } else {
        printf("你是老年人。\n");
    }
    
    return 0;
}
```

## 4. switch 语句

`switch` 语句用于对某个整型变量的值进行多分支判断。它比多个 `if...else if` 语句更清晰，尤其是当有大量离散值需要比较时。

**语法：**

```c
switch (整型表达式) {
    case 常量值1:
        // 当表达式的值等于常量值1时执行
        break; // 跳出switch语句
    case 常量值2:
        // 当表达式的值等于常量值2时执行
        break;
    ...
    default:
        // 以上都不匹配时执行
        break; // 可选，但建议加上
}
```

**注意事项：**
- 每个 `case` 后面必须是一个常量值。
- 每个 `case` 代码块结束后通常要加 `break` 语句，否则会继续执行下面的代码（称为“fall-through”）。
- `default` 分支是可选的，当没有匹配的 `case` 时执行。

**示例：根据数字输出星期几**

```c
#include <stdio.h>

int main() {
    int day;
    printf("请输入一个数字(1-7): ");
    scanf("%d", &day);
    
    switch (day) {
        case 1:
            printf("星期一\n");
            break;
        case 2:
            printf("星期二\n");
            break;
        case 3:
            printf("星期三\n");
            break;
        case 4:
            printf("星期四\n");
            break;
        case 5:
            printf("星期五\n");
            break;
        case 6:
            printf("星期六\n");
            break;
        case 7:
            printf("星期日\n");
            break;
        default:
            printf("输入错误，请输入1-7之间的数字。\n");
            break;
    }
    
    return 0;
}
```

**示例：简单的计算器**

```c
#include <stdio.h>

int main() {
    char operator;
    double num1, num2;
    
    printf("请输入运算符 (+, -, *, /): ");
    scanf(" %c", &operator); // 注意%c前有一个空格，用于忽略换行符
    
    printf("请输入两个数字: ");
    scanf("%lf %lf", &num1, &num2);
    
    switch (operator) {
        case '+':
            printf("%.2f + %.2f = %.2f\n", num1, num2, num1 + num2);
            break;
        case '-':
            printf("%.2f - %.2f = %.2f\n", num1, num2, num1 - num2);
            break;
        case '*':
            printf("%.2f * %.2f = %.2f\n", num1, num2, num1 * num2);
            break;
        case '/':
            if (num2 != 0) {
                printf("%.2f / %.2f = %.2f\n", num1, num2, num1 / num2);
            } else {
                printf("错误：除数不能为零！\n");
            }
            break;
        default:
            printf("错误：不支持的运算符 %c\n", operator);
            break;
    }
    
    return 0;
}
```

## 条件判断练习题

1. **判断年龄是否成年**  
   编写一个程序，输入一个人的年龄，如果年龄大于等于18岁，输出“已成年”，否则输出“未成年”。

2. **判断考试成绩等级**  
   输入一个考试成绩，判断并输出成绩等级：  
   - 90分及以上为“优秀”
   - 80分及以上为“良好”
   - 60分及以上为“及格”
   - 其他为“不及格”

3. **判断奇偶数**  
   输入一个整数，判断它是奇数还是偶数，并输出结果。

4. **星期几输出**  
   输入一个数字（1~7），用 switch 语句输出对应的星期几（如1输出“星期一”，2输出“星期二”，以此类推）。

5. **判断字符类型**  
   输入一个字符，判断它是数字、字母还是其他字符，并输出结果。
   
   **提示：** 可以使用ASCII码值进行判断。
   - 数字字符: '0' 到 '9'
   - 大写字母: 'A' 到 'Z'
   - 小写字母: 'a' 到 'z'
