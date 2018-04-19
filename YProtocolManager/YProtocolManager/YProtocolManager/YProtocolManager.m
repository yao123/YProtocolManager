//
//  YProtocolManager.m
//  YProtocolManager
//
//  Created by xuguangyao on 2018/4/19.
//  Copyright © 2018年 com.haqi. All rights reserved.
//

#import "YProtocolManager.h"

@interface YProtocolManager ()

@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;

@end

@implementation YProtocolManager

+ (YProtocolManager *)sharedInstance
{
    static YProtocolManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol
{
    if (provide == nil || protocol == nil) {
        return;
        
    }
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}



+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}

@end
