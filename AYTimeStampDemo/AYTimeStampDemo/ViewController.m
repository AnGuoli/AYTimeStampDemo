//
//  ViewController.m
//  时间戳转时间
//
//  Created by Gejiaqi on 16/8/5.
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
    [button1 setTitle:@"自己" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(click1) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(0, 50, kScreenWidth, 50);
    [self.view addSubview:button2];
    [button2 setTitle:@"自己:上传时使用当前的系统事件作为文件名" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(click2) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeSystem];
    button3.frame = CGRectMake(0, 100, kScreenWidth, 50);
    [self.view addSubview:button3];
    [button3 setTitle:@"子浩将yyyy-MM-dd HH:mm:ss格式时间转换成时间戳" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(click3) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeSystem];
    button4.frame = CGRectMake(0, 150, kScreenWidth, 50);
    [self.view addSubview:button4];
    [button4 setTitle:@"子浩将yyyy-MM-dd HH:mm格式时间转换成时间戳" forState:UIControlStateNormal];
    [button4 addTarget:self action:@selector(click4) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeSystem];
    button5.frame = CGRectMake(0, 200, kScreenWidth, 50);
    [self.view addSubview:button5];
    [button5 setTitle:@"MJRefresh" forState:UIControlStateNormal];
    [button5 addTarget:self action:@selector(click5) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeSystem];
    button6.frame = CGRectMake(0, 250, kScreenWidth, 50);
    [self.view addSubview:button6];
    [button6 setTitle:@"TZImagePicker" forState:UIControlStateNormal];
    [button6 addTarget:self action:@selector(click6) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeSystem];
    button7.frame = CGRectMake(0, 300, kScreenWidth, 50);
    [self.view addSubview:button7];
    [button7 setTitle:@"内涵段子上传图片" forState:UIControlStateNormal];
    [button7 addTarget:self action:@selector(click7) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button8 = [UIButton buttonWithType:UIButtonTypeSystem];
    button8.frame = CGRectMake(0, 350, kScreenWidth, 50);
    [self.view addSubview:button8];
    [button8 setTitle:@"内涵段子时间戳转时间" forState:UIControlStateNormal];
    [button8 addTarget:self action:@selector(click8) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button9 = [UIButton buttonWithType:UIButtonTypeSystem];
    button9.frame = CGRectMake(0, 400, kScreenWidth, 50);
    [self.view addSubview:button9];
    [button9 setTitle:@"子浩将NSDate按yyyy-MM-dd HH:mm:ss格式时间输出" forState:UIControlStateNormal];
    [button9 addTarget:self action:@selector(click9) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button10 = [UIButton buttonWithType:UIButtonTypeSystem];
    button10.frame = CGRectMake(0, 450, kScreenWidth, 50);
    [self.view addSubview:button10];
    [button10 setTitle:@"子浩将NSDate按yyyy-MM-dd HH:mm格式时间输出" forState:UIControlStateNormal];
    [button10 addTarget:self action:@selector(click10) forControlEvents:UIControlEventTouchUpInside];
    
    
    //    NSInteger dis = 3; //前后的天数
    //
    //    NSDate*nowDate = [NSDate date];
    //    NSDate* theDate;
    //
    //    if(dis!=0)
    //    {
    //        NSTimeInterval  oneDay = 24*60*60*1;  //1天的长度
    //
    //        theDate = [nowDate initWithTimeIntervalSinceNow: +oneDay*dis ];
    //        //or
    //        theDate = [nowDate initWithTimeIntervalSinceNow: -oneDay*dis ];
    //    }
    //    else
    //    {
    //        theDate = nowDate;
    //    }
    ////////////////////////////////////////
    
    //    NSInteger dis = 7; //前后的天数
    //    NSDate*nowDate = [NSDate date];
    //    NSDate* theDate;
    //    NSTimeInterval  oneDay = 24*60*60*1;  //1天的长度
    //    //之后的天数
    //    theDate = [nowDate initWithTimeIntervalSinceNow: +oneDay*dis ];
    //    //之前的天数
    //    theDate = [nowDate initWithTimeIntervalSinceNow: -oneDay*dis ];
    //    //实例化一个NSDateFormatter对象
    //    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //    //设定时间格式,这里可以设置成自己需要的格式
    //    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    //    //用[NSDate date]可以获取系统当前时间
    //    NSString * currentDateStr = [dateFormatter stringFromDate:theDate];
    //    NSLog(@"%@",currentDateStr);
    
    //    long time;
    
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
    
    
    // 计算时间差
    //    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    //    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    //    NSDate *timeDate = [dateFormatter dateFromString:model.created_at];//model.created_at 时间
    //    //八小时时区
    //    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    //    NSInteger interval = [zone secondsFromGMTForDate:timeDate];
    //    NSDate *mydate = [timeDate dateByAddingTimeInterval:interval];
    //    NSDate *nowDate = [[NSDate date]dateByAddingTimeInterval:interval];
    //    //两个时间间隔
    //    NSTimeInterval timeInterval = [mydate timeIntervalSinceDate:nowDate];
    //    timeInterval = -timeInterval;
    //    long temp = 0;
    //    //    NSString *time;
    //    if (timeInterval<60) {
    //        self.timeLabel.text = [NSString stringWithFormat:@"刚刚"];
    //    }else if ((temp = timeInterval/60)<60){
    //        self.timeLabel.text = [NSString stringWithFormat:@"%ld分钟前",temp];
    //    }else if ((temp = timeInterval/(60*60))<24){
    //        self.timeLabel.text = [NSString stringWithFormat:@"%ld小时前",temp];
    //    }else if((temp = timeInterval/(24*60*60))<30){
    //        self.timeLabel.text = [NSString stringWithFormat:@"%ld天前",temp];
    //    }else if (((temp = timeInterval/(24*60*60*30)))<12){
    //        self.timeLabel.text = [NSString stringWithFormat:@"%ld月前",temp];
    //    }else {
    //        temp = timeInterval/(24*60*60*30*12);
    //        self.timeLabel.text = [NSString stringWithFormat:@"%ld年前",temp];
    //    }
    
    
    //    NSString *endDt = @"20170217155409";
    //    NSDateFormatter *format= [[NSDateFormatter alloc] init];
    //    [format setDateFormat:@"yyyyMMddHHmmss"];
    //    NSDate *endDate= [format dateFromString:endDt];
    //    NSTimeInterval endTime = [endDate timeIntervalSince1970];
    //
    //    NSDate *nDate = [NSDate date];
    //    NSTimeInterval nTime = [nDate timeIntervalSince1970];
    //
    ////     时间差
    //    NSTimeInterval time = nTime - endTime;
    //
    //////    两个时间间隔也可以这么计算 [大 小] -> 正
    ////    NSTimeInterval time = [nDate timeIntervalSinceDate:endDate];
    //
    //    if (time < 0) {
    //        NSLog(@"该场次已结束");
    //    }
    //
    //    if (time < 60) {
    //        NSLog(@"刚刚");
    //    }
    //    NSInteger minutes = time / 60;
    //    if (minutes < 60) {
    //        NSLog(@"%ld分钟前", minutes);
    //
    //    }
    //    // 秒转小时
    //    NSInteger hours = time / 3600;
    //    if (hours < 24) {
    //        NSLog(@"%ld小时前",hours);
    //    }
    //    // 秒转天数
    //    NSInteger days = time / 3600 / 24;
    //    if (days < 30) {
    //        NSLog(@"%ld天前",days);
    //    }
    //    // 秒转月
    //    NSInteger months = time / 3600 / 24 / 30;
    //    if (months < 12) {
    //        NSLog(@"%ld月前",months);
    //
    //    }
    //    // 秒转年
    //    NSInteger years = time / 3600 / 24 / 30 / 12;
    //    NSLog(@"%ld年前",years);
    
    
    // 根据获取到的时间字符串 endDt 和当前时间对比, 若 currentTime 大于 endDt 就显示竞价场次结束, 反之显示距离竞价结束的时间
    //    NSString *endDt = @"20170203145409";
    //    NSDateFormatter *format= [[NSDateFormatter alloc] init];
    //    [format setDateFormat:@"yyyyMMddHHmmss"];
    //    NSDate *endDate= [format dateFromString:endDt];
    //    NSTimeInterval endTime = [endDate timeIntervalSince1970];
    //
    //    NSString *timeStr = [self updateTimeForTimeInterval:endTime];
    //    NSLog(@"%@", timeStr);
    
}


// 几天前 几分钟前..
- (NSString *)updateTimeForTimeInterval:(NSInteger)timeInterval {
    
    // 获取当前时时间戳 1466386762.345715 十位整数 6位小数
    NSTimeInterval currentTime = [[NSDate date] timeIntervalSince1970];
    // 创建歌曲时间戳(后台返回的时间 一般是13位数字)// 获取场次结束时间
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


#pragma mark - 自己
- (void)click1 {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterFullStyle];// 修改下面提到的北京时间的日期格式
    [formatter setTimeStyle:NSDateFormatterFullStyle];// 修改下面提到的北京时间的时间格式
    //    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss SSS"];// 此行代码与上面两行作用一样，故上面两行代码失效
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];// 此行代码与上面两行作用一样，故上面两行代码失效
    
    // 北京时间戳1500000000（可以把北京时间戳转成北京时间、格林尼治时间）
    NSString *dataStr = @"1470376282";
    NSDate *date1 = [NSDate dateWithTimeIntervalSince1970:[dataStr intValue]];
    NSLog(@"%@这个时间是格林尼治时间",date1);// 这个时间是格林尼治时间
    NSString *dat = [formatter stringFromDate:date1];
    NSLog(@"%@这个时间是北京时间", dat);// 这个时间是北京时间
}

#pragma mark - 自己:上传时使用当前的系统事件作为文件名

- (void)click2 {
    // 可以在上传时使用当前的系统事件作为文件名
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    // 设置时间格式
    formatter.dateFormat = @"yyyyMMddHHmmss";
    NSString *str = [formatter stringFromDate:[NSDate date]];
    //    NSString *fileName = [NSString stringWithFormat:@"%@.png", str];
    NSLog(@"%@", str);
}

#pragma mark - 子浩将yyyy-MM-dd HH:mm:ss格式时间转换成时间戳

- (void)click3 {
    NSString *timeStr = @"2016-10-10 10:44:11";
    NSLog(@"%ld", [self changeTimeToTimeSp:timeStr]);
}

//将yyyy-MM-dd HH:mm:ss格式时间转换成时间戳
-(long)changeTimeToTimeSp:(NSString *)timeStr{
    long time;
    NSDateFormatter *format=[[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *fromdate=[format dateFromString:timeStr];
    time= (long)[fromdate timeIntervalSince1970];
    return time;
}


#pragma mark - 子浩将yyyy-MM-dd HH:mm格式时间转换成时间戳


- (void)click4 {
    NSString *timeStr = @"2016-10-10 10:44";
    NSLog(@"%ld", [self changeTimeToTimeSp1:timeStr]);
}

//将yyyy-MM-dd HH:mm格式时间转换成时间戳
-(long)changeTimeToTimeSp1:(NSString *)timeStr{
    long time;
    NSDateFormatter *format=[[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy-MM-dd HH:mm"];
    NSDate *fromdate=[format dateFromString:timeStr];
    time= (long)[fromdate timeIntervalSince1970];
    return time;
}

#pragma mark - MJRefresh

- (void)click5 {
    // 1.获得年月日
    NSCalendar *calendar = [self currentCalendar];
    NSUInteger unitFlags = NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitDay |NSCalendarUnitHour |NSCalendarUnitMinute;
    NSDateComponents *cmp1 = [calendar components:unitFlags fromDate:[NSDate date]];
    NSDateComponents *cmp2 = [calendar components:unitFlags fromDate:[NSDate date]];
    
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
    NSString *time = [formatter stringFromDate:[NSDate date]];
    NSLog(@"%@", time);
}

#pragma mark - 日历获取在9.x之后的系统使用currentCalendar会出异常。在8.0之后使用系统新API。
- (NSCalendar *)currentCalendar {
    if ([NSCalendar respondsToSelector:@selector(calendarWithIdentifier:)]) {
        return [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    }
    return [NSCalendar currentCalendar];
}


#pragma mark - TZImagePicker


- (void)click6 {
    NSDateFormatter *formater = [[NSDateFormatter alloc] init];
    [formater setDateFormat:@"yyyy-MM-dd-HH:mm:ss"];
    NSString *outputPath = [NSHomeDirectory() stringByAppendingFormat:@"/tmp/output-%@.mp4", [formater stringFromDate:[NSDate date]]];
    NSLog(@"video outputPath = %@",outputPath);
    
}

#pragma mark - 内涵段子上传图片


- (void)click7 {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss:SSS";
    NSString *fileName = [NSString stringWithFormat:@"%@%@.png",[formatter stringFromDate:[NSDate date]],@(7)];
    NSLog(@"%@", fileName);
    
}

#pragma mark - 内涵段子时间戳转时间


- (void)click8 {
    //    NSString *str = @"1470376282";
    //    NSString *labelStr = [self convertTimesTampWithDateFormat:@"yyyy-MM-dd HH:mm" withStr:str];
    //    NSLog(@"%@", labelStr);
    NSString *str = @"1483589378";
    NSString *format = @"yyyy-MM-dd HH:mm:ss";
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:format];
    
    NSTimeInterval timeInterval = [str doubleValue];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSLog(@"%@", [dateFormat stringFromDate:date]);
    
}


//将yyyy-MM-dd HH:mm:ss格式时间转换成时间戳
-(long)changeTimeToTimeSp222:(NSString *)timeStr{
    long time;
    timeStr = @"2016-10-10 10:44:11";
    
    NSDateFormatter *format=[[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSDate *date=[format dateFromString:timeStr];
    time= (long)[date timeIntervalSince1970];
    return time;
}




- (NSString *)convertTimesTampWithDateFormat:(NSString *)dateFormat withStr:(NSString *)str{
    //    @"yyyy-MM-dd HH:mm"
    if (dateFormat.length == 0) {
        return @"";
    }
    NSTimeInterval timeInterval = [str doubleValue];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSString *timeStr = [self datestrFromDate:date withDateFormat:dateFormat];
    return timeStr;
}

// 时间戳转时间
- (NSString *)datestrFromDate:(NSDate *)date
               withDateFormat:(NSString *)format {
    
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:format];
    return [dateFormat stringFromDate:date];
}


#pragma mark - 子浩将NSDate按yyyy-MM-dd HH:mm:ss格式时间输出
- (void)click9 {
    
    
    NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *string=[dateFormat stringFromDate:[NSDate date]];
    NSLog(@"%@", string);
}

////将NSDate按yyyy-MM-dd HH:mm:ss格式时间输出
//- (NSString*)nsdateToString:(NSDate *)date{
//    NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
//    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
//    NSString* string=[dateFormat stringFromDate:date];
//    return string;
//}



#pragma mark - 子浩将NSDate按yyyy-MM-dd HH:mm格式时间输出
- (void)click10 {
    NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm"];
    NSString* string=[dateFormat stringFromDate:[NSDate date]];
    NSLog(@"%@", string);
    
    
}
////将NSDate按yyyy-MM-dd HH:mm格式时间输出
//- (NSString*)nsdateToString1:(NSDate *)date{
//    NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
//    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString* string=[dateFormat stringFromDate:date];
//    return string;
//}


@end
