//
//  ViewController.m
//  时间戳转时间
//
//  Created by 国立 安 on 16/8/5.
//  Copyright © 2016年 agl. All rights reserved.
//

#import "ViewController.h"
#define kScreenWidth self.view.bounds.size.width

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(0, 0, kScreenWidth, 50);
    [self.view addSubview:button1];
    [button1 setTitle:@"时间戳转时间" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(click1) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(0, 50, kScreenWidth, 50);
    [self.view addSubview:button2];
    [button2 setTitle:@"上传时使用当前的系统时间作为文件名(date 转 时间)" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(click2) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeSystem];
    button3.frame = CGRectMake(0, 100, kScreenWidth, 50);
    [self.view addSubview:button3];
    [button3 setTitle:@"将yyyy-MM-dd HH:mm:ss格式时间转换成时间戳" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(click3) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeSystem];
    button4.frame = CGRectMake(0, 150, kScreenWidth, 50);
    [self.view addSubview:button4];
    [button4 setTitle:@"根据20170130算7天后的日期" forState:UIControlStateNormal];
    [button4 addTarget:self action:@selector(click4) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeSystem];
    button5.frame = CGRectMake(0, 200, kScreenWidth, 50);
    [self.view addSubview:button5];
    [button5 setTitle:@"输出发布时间" forState:UIControlStateNormal];
    [button5 addTarget:self action:@selector(click5) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeSystem];
    button6.frame = CGRectMake(0, 250, kScreenWidth, 50);
    [self.view addSubview:button6];
    [button6 setTitle:@"算当前时间7天后的时间" forState:UIControlStateNormal];
    [button6 addTarget:self action:@selector(click6) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeSystem];
    button7.frame = CGRectMake(0, 300, kScreenWidth, 50);
    [self.view addSubview:button7];
    [button7 setTitle:@"计算发帖时间, 比如几分钟前, 几小时前" forState:UIControlStateNormal];
    [button7 addTarget:self action:@selector(click7) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button8 = [UIButton buttonWithType:UIButtonTypeSystem];
    button8.frame = CGRectMake(0, 350, kScreenWidth, 50);
    [self.view addSubview:button8];
    [button8 setTitle:@"判断竞价状态" forState:UIControlStateNormal];
    [button8 addTarget:self action:@selector(click8) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button9 = [UIButton buttonWithType:UIButtonTypeSystem];
    button9.frame = CGRectMake(0, 400, kScreenWidth, 50);
    [self.view addSubview:button9];
    [button9 setTitle:@"xxx" forState:UIControlStateNormal];
    [button9 addTarget:self action:@selector(click9) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button10 = [UIButton buttonWithType:UIButtonTypeSystem];
    button10.frame = CGRectMake(0, 450, kScreenWidth, 50);
    [self.view addSubview:button10];
    [button10 setTitle:@"xxx" forState:UIControlStateNormal];
    [button10 addTarget:self action:@selector(click10) forControlEvents:UIControlEventTouchUpInside];
    
}

#pragma mark - 时间戳转时间
- (void)click1 {
    NSString *dataStr = @"1470376282";
    NSString *format = @"yyyy-MM-dd HH:mm:ss SSS";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    //[formatter setDateStyle:NSDateFormatterFullStyle];// 修改下面提到的北京时间的日期格式
    //[formatter setTimeStyle:NSDateFormatterFullStyle];// 修改下面提到的北京时间的时间格式
    // 此行代码与上面两行作用一样，故上面两行代码失效
    [dateFormat setDateFormat:format];
//    NSTimeInterval timeInterval = [dataStr doubleValue];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[dataStr intValue]];
    NSString *dateBeijing = [dateFormat stringFromDate:date];
    NSLog(@"%@这个时间是格林尼治时间",date);
    NSLog(@"%@这个时间是北京时间", dateBeijing);
}

#pragma mark - 上传时使用当前的系统时间作为文件名 (date 转 时间)
- (void)click2 {
    // 可以在上传时使用当前的系统事件作为文件名
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    // 设置时间格式
    formatter.dateFormat = @"yyyyMMddHHmmssSSS";
    NSString *str = [formatter stringFromDate:[NSDate date]];
    NSString *fileName = [NSString stringWithFormat:@"%@.png", str];
    NSLog(@"fileName: %@", fileName);
    // 根据系统时间拼接文件保存路径
//    NSString *outputPath = [NSHomeDirectory() stringByAppendingFormat:@"/tmp/output-%@.mp4", [formatter stringFromDate:[NSDate date]]];
//    NSLog(@"video outputPath = %@",outputPath);

}

#pragma mark - 将yyyy-MM-dd HH:mm:ss格式时间转换成时间戳
- (void)click3 {
    NSString *timeStr = @"2016-10-10 10:44:11";
    
    NSDateFormatter *format=[[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *endDate = [format dateFromString:timeStr];

    NSTimeInterval timeInterval = [endDate timeIntervalSince1970];
    NSLog(@"%.f", timeInterval);
}


#pragma mark - 根据20170130算7天后的日期
- (void)click4 {
    //     根据20170130算7天后的日期
    NSDateFormatter *format=[[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyyMMdd"];
    NSDate *fromdate=[format dateFromString:@"20170130"];
    
    NSInteger dis = 7; //前后的天数
    NSTimeInterval oneDay = 24*60*60*1;  //1天的长度
    
    NSDate *theDate = [NSDate dateWithTimeInterval:oneDay*dis sinceDate:fromdate];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *afterDateStr = [dateFormatter stringFromDate:theDate];
    NSLog(@"%@",afterDateStr);

}


#pragma mark - 输出发布时间
- (void)click5 {
    // 1.获得年月日时分
    NSCalendar *calendar = [self currentCalendar];
    NSUInteger unitFlags = NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitDay |NSCalendarUnitHour |NSCalendarUnitMinute;
    // 当前日期
    NSDateComponents *cmp1 = [calendar components:unitFlags fromDate:[NSDate date]];
    
    NSString *dataStr = @"1470376282";
    NSDate *publishDate = [NSDate dateWithTimeIntervalSince1970:[dataStr intValue]];
    // 发布日期
    NSDateComponents *cmp2 = [calendar components:unitFlags fromDate:publishDate];
    
    // 2.格式化日期
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    BOOL isToday = NO;
    if ([cmp1 day] == [cmp2 day]) { // 今天
        formatter.dateFormat = @" HH:mm";
        isToday = YES;
    } else if ([cmp1 year] == [cmp2 year]) { // 今年
        formatter.dateFormat = @"MM-dd HH:mm";
    } else {
        formatter.dateFormat = @"yyyy-MM-dd HH:mm";
    }
    NSString *time = [formatter stringFromDate:publishDate];
    NSLog(@"发布时间: %@", time);
}

#pragma mark - 日历获取在9.x之后的系统使用currentCalendar会出异常。在8.0之后使用系统新API。
- (NSCalendar *)currentCalendar {
    if ([NSCalendar respondsToSelector:@selector(calendarWithIdentifier:)]) {
        return [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    }
    return [NSCalendar currentCalendar];
}


#pragma mark - 算当前时间7天后的时间
- (void)click6 {
    NSInteger dis = 7; //前后的天数
    NSDate*nowDate = [NSDate date];
    NSDate* theDate;
    NSTimeInterval  oneDay = 24*60*60*1;  //1天的长度
    //之后的天数
    theDate = [nowDate initWithTimeIntervalSinceNow: +oneDay*dis];
    //之前的天数
//    theDate = [nowDate initWithTimeIntervalSinceNow: -oneDay*dis];
    //实例化一个NSDateFormatter对象
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString * endDateStr = [dateFormatter stringFromDate:theDate];
    NSLog(@"当前时间7天后的时间: %@",endDateStr);
}

#pragma mark - 计算发帖时间, 比如几分钟前, 几小时前
- (void)click7 {
    // 计算发帖时间, 比如几分钟前, 几小时前
    NSString *endDt = @"20170217155409";
    NSDateFormatter *format= [[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyyMMddHHmmss"];
    NSDate *endDate= [format dateFromString:endDt];
    NSTimeInterval endTime = [endDate timeIntervalSince1970];
    // 当前系统时间
    NSDate *nDate = [NSDate date];
    NSTimeInterval nTime = [nDate timeIntervalSince1970];

//     时间差
    NSTimeInterval time = nTime - endTime;
////    两个时间间隔也可以这么计算 [大 小] -> 正
//    NSTimeInterval time = [nDate timeIntervalSinceDate:endDate];

    if (time < 0) {
        NSLog(@"夭寿啊,在未来发的帖");
    }

    if (time < 60) {
        NSLog(@"刚刚");
    }
    NSInteger minutes = time / 60;
    if (minutes < 60) {
        NSLog(@"%ld分钟前", minutes);

    }
    // 秒转小时
    NSInteger hours = time / 3600;
    if (hours < 24) {
        NSLog(@"%ld小时前",hours);
    }
    // 秒转天数
    NSInteger days = time / 3600 / 24;
    if (days < 30) {
        NSLog(@"%ld天前",days);
    }
    // 秒转月
    NSInteger months = time / 3600 / 24 / 30;
    if (months < 12) {
        NSLog(@"%ld月前",months);

    }
    // 秒转年
    NSInteger years = time / 3600 / 24 / 30 / 12;
    NSLog(@"%ld年前",years);

}

#pragma mark - 判断竞价状态
- (void)click8 {
    // 根据获取到的时间字符串 endDt 和当前时间对比, 若 currentTime 大于 endDt 就显示竞价场次结束, 反之显示距离竞价结束的时间
    NSString *endDt = @"20170223145409";
    NSDateFormatter *format= [[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyyMMddHHmmss"];
    NSDate *endDate= [format dateFromString:endDt];
    NSTimeInterval endTime = [endDate timeIntervalSince1970];

    NSString *timeStr = [self updateTimeForTimeInterval:endTime];
    NSLog(@"%@", timeStr);

}

// 几天前 几分钟前..
- (NSString *)updateTimeForTimeInterval:(NSInteger)timeInterval {
    
    // 获取当前时时间戳
    NSTimeInterval currentTime = [[NSDate date] timeIntervalSince1970];
    // 获取场次结束时间
    NSTimeInterval endTime = timeInterval;
    // 时间差
    NSTimeInterval time = endTime - currentTime;
    
    if (time < 0) {
        return @"该场次已结束";
    }
    // 秒转秒
    NSInteger seconds = time;
    if (seconds < 60) {
        return [NSString stringWithFormat:@"%ld秒后结束", seconds];
    }
    // 秒转分钟
    NSInteger minutes = time / 60;
    if (minutes < 60) {
        seconds = seconds - minutes*60;
        return [NSString stringWithFormat:@"%ld分%ld秒后结束", minutes, seconds];
    }
    // 秒转小时
    NSInteger hours = time / 3600;
    if (hours < 24) {
        minutes = (seconds - hours*3600) / 60;
        seconds = seconds  - hours *3600 - minutes*60;
        
        return [NSString stringWithFormat:@"%ld小时%ld分%ld秒后结束", hours, minutes, seconds];
    }
    // 秒转天数
    NSInteger days = time / 3600 / 24;
    //    if (days < 30) {
    hours = (seconds - days*3600*24) / 3600;
    minutes = (seconds - days*3600*24 - hours*3600) / 60;
    seconds = seconds  - days*3600*24 - hours *3600 - minutes*60;
    
    return [NSString stringWithFormat:@"%ld天%ld小时%ld分%ld秒后结束", days, hours, minutes, seconds];
    //    }
    //    // 秒转月
    //    NSInteger months = time / 3600 / 24 / 30;
    //    if (months < 12) {
    //        return [NSString stringWithFormat:@"%ld月前",months];
    //    }
    //    // 秒转年
    //    NSInteger years = time / 3600 / 24 / 30 / 12;
    //    return [NSString stringWithFormat:@"%ld年前",years];
}



- (void)click9 {
}

- (void)click10 {
    
}


@end
