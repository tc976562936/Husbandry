//
//  HSNetWorkingAPIClient.h
//  AFNetWorking封装使用
//


#import <AFNetworking/AFHTTPSessionManager.h>

@interface HSNetWorkingAPIClient : AFHTTPSessionManager
+(HSNetWorkingAPIClient *)sharedHSNetWorkingAPIClient;
@end
