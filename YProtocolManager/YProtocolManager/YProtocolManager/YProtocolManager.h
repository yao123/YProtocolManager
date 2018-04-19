//
//  YProtocolManager.h
//  YProtocolManager
//
//  Created by xuguangyao on 2018/4/19.
//  Copyright © 2018年 com.haqi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

/**
 管理者注册协议

 @param protocol 当前的协议
 @return self
 */
+ (id)serviceProvideForProtocol:(Protocol*)protocol;
@end
