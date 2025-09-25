# 数组

在 C 语言中，数组是一组相同类型数据的集合，可以用一个名字和下标来访问每个元素。数组常用于存储和处理批量数据。

## 数组的定义和使用

**定义语法：**
```c
类型 数组名[长度];
```

**示例：**
```c
int scores[5]; // 定义一个长度为5的整型数组
float heights[10]; // 定义一个长度为10的浮点型数组
char letters[26]; // 定义一个长度为26的字符型数组
```

**初始化数组：**
在定义数组时可以直接进行初始化。

```c
// 完全初始化
int nums1[5] = {1, 2, 3, 4, 5};

// 部分初始化，未指定的元素会被初始化为0
int nums2[5] = {1, 2, 3};

// 不指定长度，由初始化列表决定
int nums3[] = {1, 2, 3, 4, 5}; // nums3的长度为5

// 字符数组的特殊初始化方式
char str1[] = "Hello"; // 等价于 {'H', 'e', 'l', 'l', 'o', '\0'}
char str2[10] = "Hello"; // 剩余位置自动补'\0'
```

**访问数组元素：**
数组的下标从0开始。

```c
int arr[5] = {10, 20, 30, 40, 50};
printf("第一个元素: %d\n", arr[0]); // 输出 10
printf("第三个元素: %d\n", arr[2]); // 输出 30

// 修改数组元素
arr[1] = 25;
printf("修改后的第二个元素: %d\n", arr[1]); // 输出 25
```

## 结合 printf、scanf、判断和循环的例子

### 例1：输入并输出一组整数
```c
#include <stdio.h>

int main() {
    int nums[5];
    printf("请输入5个整数：\n");
    for (int i = 0; i < 5; i++) {
        printf("请输入第%d个数: ", i + 1);
        scanf("%d", &nums[i]);
    }
    
    printf("你输入的整数是：");
    for (int i = 0; i < 5; i++) {
        printf("%d ", nums[i]);
    }
    printf("\n");
    return 0;
}
```

### 例2：统计数组中正数、负数和零的个数
```c
#include <stdio.h>

int main() {
    int nums[10];
    int positive = 0, negative = 0, zero = 0;
    
    printf("请输入10个整数：\n");
    for (int i = 0; i < 10; i++) {
        printf("请输入第%d个数: ", i + 1);
        scanf("%d", &nums[i]);
        
        if (nums[i] > 0) {
            positive++;
        } else if (nums[i] < 0) {
            negative++;
        } else {
            zero++;
        }
    }
    
    printf("正数的个数是：%d\n", positive);
    printf("负数的个数是：%d\n", negative);
    printf("零的个数是：%d\n", zero);
    
    return 0;
}
```

### 例3：求数组元素的最大值和最小值
```c
#include <stdio.h>

int main() {
    int nums[10];
    
    printf("请输入10个整数：\n");
    for (int i = 0; i < 10; i++) {
        printf("请输入第%d个数: ", i + 1);
        scanf("%d", &nums[i]);
    }
    
    // 假设第一个元素既是最大值也是最小值
    int max = nums[0];
    int min = nums[0];
    
    for (int i = 1; i < 10; i++) {
        if (nums[i] > max) {
            max = nums[i];
        }
        if (nums[i] < min) {
            min = nums[i];
        }
    }
    
    printf("最大值是：%d\n", max);
    printf("最小值是：%d\n", min);
    
    return 0;
}
```

### 例4：计算数组所有元素的总和和平均值
```c
#include <stdio.h>

int main() {
    int nums[10], sum = 0;
    float average;
    
    printf("请输入10个整数：\n");
    for (int i = 0; i < 10; i++) {
        printf("请输入第%d个数: ", i + 1);
        scanf("%d", &nums[i]);
        sum += nums[i];
    }
    
    average = (float)sum / 10; // 强制类型转换为float以获得小数部分
    
    printf("总和是：%d\n", sum);
    printf("平均值是：%.2f\n", average);
    
    return 0;
}
```

### 例5：在数组中查找元素并返回下标
```c
#include <stdio.h>

int main() {
    int nums[10], find;
    int index = -1; // -1表示未找到
    
    printf("请输入10个整数：\n");
    for (int i = 0; i < 10; i++) {
        printf("请输入第%d个数: ", i + 1);
        scanf("%d", &nums[i]);
    }
    
    printf("请输入要查找的整数：");
    scanf("%d", &find);
    
    for (int i = 0; i < 10; i++) {
        if (nums[i] == find) {
            index = i;
            break;
        }
    }
    
    if (index != -1) {
        printf("找到了！%d 在数组中的下标是 %d。\n", find, index);
    } else {
        printf("没找到 %d。\n", find);
    }
    
    return 0;
}
```

### 例6：数组元素逆序排列
```c
#include <stdio.h>

int main() {
    int nums[10];
    
    printf("请输入10个整数：\n");
    for (int i = 0; i < 10; i++) {
        printf("请输入第%d个数: ", i + 1);
        scanf("%d", &nums[i]);
    }
    
    printf("原数组: ");
    for (int i = 0; i < 10; i++) {
        printf("%d ", nums[i]);
    }
    printf("\n");
    
    // 逆序: 交换对称位置的元素
    for (int i = 0; i < 10 / 2; i++) {
        int temp = nums[i];
        nums[i] = nums[9 - i];
        nums[9 - i] = temp;
    }
    
    printf("逆序后: ");
    for (int i = 0; i < 10; i++) {
        printf("%d ", nums[i]);
    }
    printf("\n");
    
    return 0;
}
```

## 二维数组简介

二维数组可以看作是一个表格，有行和列。

**定义语法：**
```c
类型 数组名[行数][列数];
```

**示例：**
```c
int matrix[3][4]; // 定义一个3行4列的整型二维数组

// 初始化二维数组
int matrix2[2][3] = {{1, 2, 3}, {4, 5, 6}};

// 访问二维数组元素
printf("第一行第二列的元素: %d\n", matrix2[0][1]); // 输出 2

// 使用嵌套循环遍历二维数组
for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 3; j++) {
        printf("%d ", matrix2[i][j]);
    }
    printf("\n"); // 每行结束后换行
}
```

## 有趣的练习题

1. 输入10个整数，输出其中的最大值和最小值。
2. 输入一组成绩，统计及格人数（成绩≥60）和优秀人数（成绩≥90）。
3. 输入10个整数，将它们按从大到小的顺序排序并输出。
4. 输入10个整数，输出所有偶数及其下标。
5. 定义一个3x3的二维整型数组，输入数据后，计算每行、每列和对角线的和。