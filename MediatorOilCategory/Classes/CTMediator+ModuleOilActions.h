//
//  CTMediator+ModuleOilActions.h
//  CTMediator
//
//  Created by 王雪剑 on 2019/6/13.
//

#import <CTMediator/CTMediator.h>

@interface CTMediator (ModuleOilActions)

//传参数
- (UIViewController *)enterOilControllerWithParams:(NSDictionary *)dic;
//传参数+执行方法
- (UIViewController *)enterOilControllerWithDoSomeThing:(NSDictionary *)dic;
//弹框
- (void)showAlertWithMessage:(NSString *)message cancelAction:(void(^)(NSDictionary *info))cancelAction confirmAction:(void(^)(NSDictionary *info))confirmAction;

@end

/*******************************************
 *
 *
 *
 *1、实际应用中，这是一个单独的repo，这个repo由target-action维护者维护
 *2、这里只是提供一个外界与组件交互的方法，通过runtime再根据target名称+action名称找到具体的实现方式
 *
 *
 ********************************************/
