# UIViewRoundedCornerDemo
Add rounded corner to UIView by category

**Usage**

```objc
UIView *view = [[UIView alloc]init];
view.frame = CGRectMake(50, 200, 200, 300);
[view addRoundedCorner:10 borderWidth:0 borderColor:[UIColor whiteColor] backgroundColor:[UIColor redColor]];
[self.view addSubview:view];
```

**ScreenShot**
![](http://ww3.sinaimg.cn/large/006tNc79gy1g39a0ffdouj30q81g0wen.jpg)