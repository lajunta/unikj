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

**示例：**

```c
#include <stdio.h>

int main() {
    int age = 20;
    if (age >= 18) {
        printf("你已成年。\n");
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

**示例：**

```c
#include <stdio.h>

int main() {
    int score = 65;
    if (score >= 60) {
        printf("及格\n");
    } else {
        printf("不及格\n");
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

**示例：**

```c
#include <stdio.h>

int main() {
    int score = 85;
    if (score >= 90) {
        printf("优秀\n");
    } else if (score >= 60) {
        printf("及格\n");
    } else {
        printf("不及格\n");
    }
    return 0;
}
```

## 4. switch 语句

`switch` 语句用于对某个变量的值进行多分支判断。

**语法：**

```c
switch (变量) {
    case 值1:
        // 当变量等于值1时执行
        break;
    case 值2:
        // 当变量等于值2时执行
        break;
    ...
    default:
        // 以上都不匹配时执行
}
```

**示例：**

```c
#include <stdio.h>

int main() {
    int day = 3;
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
        default:
            printf("其他\n");
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
   - 60分及以上为“及格”
   - 其他为“不及格”

3. **判断奇偶数**  
   输入一个整数，判断它是奇数还是偶数，并输出结果。

4. **星期几输出**  
   输入一个数字（1~7），用 switch 语句输出对应的星期几（如1输出“星期一”，2输出“星期二”，以此类推）。

5. **判断字符类型**  
   输入一个字符，判断它是数字、字母还是其他字符，并输出结果。
