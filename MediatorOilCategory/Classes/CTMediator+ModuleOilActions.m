//
//  CTMediator+ModuleOilActions.m
//  CTMediator
//
//  Created by 王雪剑 on 2019/6/13.
//

#import "CTMediator+ModuleOilActions.h"

@implementation CTMediator (ModuleOilActions)

- (UIViewController *)enterOilControllerWithParams:(NSDictionary *)dic
{
    UIViewController *viewController = [self performTarget:@"Oil" action:@"nativeEnterOilViewController" params:dic shouldCacheTarget:NO];
    
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}

- (UIViewController *)enterOilControllerWithDoSomeThing:(NSDictionary *)dic{
    UIViewController *viewController = [self performTarget:@"Oil" action:@"nativeEnterOilViewControllerWithDoSomeThing" params:dic shouldCacheTarget:NO];
    
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}

- (void)showAlertWithMessage:(NSString *)message cancelAction:(void(^)(NSDictionary *info))cancelAction confirmAction:(void(^)(NSDictionary *info))confirmAction
{
    NSMutableDictionary *paramsToSend = [[NSMutableDictionary alloc] init];
    if (message) {
        paramsToSend[@"message"] = message;
    }
    if (cancelAction) {
        paramsToSend[@"cancelAction"] = cancelAction;
    }
    if (confirmAction) {
        paramsToSend[@"confirmAction"] = confirmAction;
    }
    [self performTarget:@"Oil"
                 action:@"showAlert"
                 params:paramsToSend
      shouldCacheTarget:NO];
}

@end
