# 输入与输出

## 基本数据数据类型

- 字符, 用单引号包围 'c', '1'
- 整数 包括负数 0 和 正整数
- 浮点数 带小数点的数字， 整数最多为6位， 小数最多为7位
- double 精度和长度更高的小数

## 其它数据类型

- 空类型 void
- 数组类型
- 结构体类型
- 指针类型

## C语言基本数据类型存储大小与值范围

| 数据类型         | 存储大小（字节） | 取值范围                          |
|------------------|------------------|------------------------------------|
| char             | 1                | -128 ~ 127 或 0 ~ 255              |
| short            | 2                | -32,768 ~ 32,767                   |
| int              | 4                | -2,147,483,648 ~ 2,147,483,647     |
| long             | 4 或 8           | -2,147,483,648 ~ 2,147,483,647 或更大 |
| float            | 4                | 约 3.4E-38 ~ 3.4E+38               |
| double           | 8                | 约 1.7E-308 ~ 1.7E+308             |

## 变量

变量 可以理解为一个放置不东西的盒子，给这个盒子一个名字，就是变量名，

盒子的名称可以自己定义，盒子的内容也在不停的变化

## 定义一个变量

```c
int age = 16;
int math = 85;
int chinese = 88;
int english = 99;

char isChinese = 'Y'
char isJapanese = 'N'

float shengao = 1.80
float height = 1.80
float weight = 65.8
float pi = 3.14159

```

## 格式化输出 printf

`printf` 是 C 语言中用于输出信息到屏幕的函数。它属于标准库函数，定义在 `<stdio.h>` 头文件中。`printf` 可以输出字符串、变量的值等内容，并支持格式化输出。

### 基本语法

```c
printf("格式字符串", 变量1, 变量2, ...);
```

### 常用格式符

- `%d`：输出整数
- `%f`：输出浮点数
- `%c`：输出字符
- `%s`：输出字符串

### 示例

```c
#include <stdio.h>

int main() {
    int age = 18;
    float height = 1.75;
    char sex = 'M';
    printf("我的年龄：%d\n", a);
    printf("我的身高：%f\n", b);
    printf("我的性别：%c\n", c);
    printf("打个招呼：%s\n", "Hello, How are you?");
    return 0;
}
```

## 定义字符串并输出

在 C 语言中，可以使用字符数组来定义字符串，并通过 printf 输出：

```c
#include <stdio.h>

int main() {
    char greeting[] = "你好，欢迎学习C语言！";
    printf("%s\n", greeting);
    return 0;
}
```

输出结果：

```
你好，欢迎学习C语言！
```

[Printf.pdf](references/printf.pdf)

## 格式化输入 scanf

`scanf` 是 C 语言中用于从键盘读取输入的函数。它属于标准库函数，定义在 `<stdio.h>` 头文件中。`scanf` 可以读取整数、浮点数、字符、字符串等，并将输入的值存储到变量中。

### 基本语法

```c
scanf("格式字符串", &变量1, &变量2, ...);
```

注意：变量名前要加 `&`，表示取变量的地址。

### 示例1：输入年龄和身高

```c
#include <stdio.h>

int main() {
    int age;
    float height;
    printf("请输入你的年龄和身高（用空格分隔）：");
    scanf("%d %f", &age, &height);
    printf("你的年龄是：%d，身高是：%.2f米\n", age, height);
    return 0;
}
```

### 示例2：输入性别和打招呼语

```c
#include <stdio.h>

int main() {
    char gender;
    char greeting[20];
    printf("请输入你的性别（M/F）和打招呼语：");
    scanf(" %c %s", &gender, greeting);
    printf("你的性别是：%c，打招呼语是：%s\n", gender, greeting);
    return 0;
}
```

[Scanf.pdf](references/scanf.pdf)
