//
//  HSNetWorkingAPIClient.m
//  AFNetWorking封装使用
//

#import "HSNetWorkingAPIClient.h"
static HSNetWorkingAPIClient *netWorkingClient=nil;
@implementation HSNetWorkingAPIClient
+(HSNetWorkingAPIClient *)sharedHSNetWorkingAPIClient
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        netWorkingClient=[[HSNetWorkingAPIClient alloc]initWithBaseURL:[NSURL URLWithString:@""]];
        netWorkingClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        //设置返回原生状态数据：返回NSData类型
        netWorkingClient.responseSerializer = [AFHTTPResponseSerializer serializer];
        //返回的数据是解析完的json数据
        //netWorkingClient.responseSerializer = [AFJSONResponseSerializer serializer];
        //返回的数据是解析完的XML数据
        //netWorkingClient.responseSerializer = [AFXMLParserResponseSerializer serializer];
    });
    return netWorkingClient;
}
@end
