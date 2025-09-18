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
```

## 结合 printf、scanf、判断和循环的例子

### 例1：输入并输出一组整数
```c
#include <stdio.h>

int main() {
    int nums[5];
    printf("请输入5个整数：\n");
    for (int i = 0; i < 5; i++) {
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

### 例2：统计数组中正数的个数
```c
#include <stdio.h>

int main() {
    int nums[5];
    int count = 0;
    printf("请输入5个整数：\n");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &nums[i]);
        if (nums[i] > 0) {
            count++;
        }
    }
    printf("正数的个数是：%d\n", count);
    return 0;
}
```

### 例3：求数组元素的最大值
```c
#include <stdio.h>

int main() {
    int nums[5];
    printf("请输入5个整数：\n");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &nums[i]);
    }
    int max = nums[0];
    for (int i = 1; i < 5; i++) {
        if (nums[i] > max) {
            max = nums[i];
        }
    }
    printf("最大值是：%d\n", max);
    return 0;
}
```

### 例4：计算数组所有元素的平均值
```c
#include <stdio.h>

int main() {
    int nums[5], sum = 0;
    printf("请输入5个整数：\n");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &nums[i]);
        sum += nums[i];
    }
    printf("平均值是：%.2f\n", sum / 5.0);
    return 0;
}
```

### 例5：判断某个数是否在数组中
```c
#include <stdio.h>

int main() {
    int nums[5], find, found = 0;
    printf("请输入5个整数：\n");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &nums[i]);
    }
    printf("请输入要查找的整数：");
    scanf("%d", &find);
    for (int i = 0; i < 5; i++) {
        if (nums[i] == find) {
            found = 1;
            break;
        }
    }
    if (found) {
        printf("找到了！\n");
    } else {
        printf("没找到。\n");
    }
    return 0;
}
```

---

## 有趣的练习题

1. 输入10个整数，输出其中的最大值和最小值。
2. 输入一组成绩，统计及格人数（成绩≥60）。
3. 输入5个整数，逆序输出它们。
4. 输入10个整数，输出所有偶数。
5. 输入一组整数，计算所有元素的总和和平均值。