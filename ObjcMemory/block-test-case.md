```objective-c
int val = 0;       
void (^blk)(void) = ^{
	printf("in block val = %d\n", val);
};        
val = 1;      
blk();
```

```objective-c
__block int val = 0;
void (^blk)(void) = ^{
	printf("in block val = %d\n", val);
};
val = 1;
blk();
```

```objective-c
__block int val = 0;
void (^blk)(void) = ^{
	printf("in block val = %d\n", val);
	val = 2;
};
val = 1;
blk();
printf("after block val = %d\n", val);
```


|      |  新仔  |  王蕾  |  鲜华  |
| :--: | :--: | :--: | :--: |
| 第一个  |  ❌   |  ✅   |  ✅   |
| 第二个  |  ❓   |  ❓   |  ✅   |
| 第三个  |  ✅   |  ✅   |  ✅   |




| Block 的类                | 副本源的配置存储 | 复制效果   |
| ----------------------- | -------- | ------ |
| __NSConcreteStackBlock  | 栈        | 从栈复制到堆 |
| __NSConcreteGlobalBlock | 程序的数据区域  | 什么也不做  |
| __NSConcreteMallocBlock | 堆        | 引用计数增加 |


| __block 变量的配置存储域 | Block 从栈复制到堆时的影响 |
| --- | --- |
| 栈 | 从栈复制到堆并被 Block 持有 |
| 堆 | 被 Block 持有 |


