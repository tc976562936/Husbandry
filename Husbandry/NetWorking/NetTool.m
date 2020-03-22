//
//  NetTool.m
//  AFNetWorking封装使用
//

#import "NetTool.h"
#import "HSNetWorkingAPIClient.h"
@implementation NetTool


+(NSURLSessionDataTask *)getDataWithSuburl:(NSString*)suburl Parameters:(NSDictionary*)parameters Success:(void(^)(NSURLSessionDataTask *dataTask, id responseObject))success failure:(void(^)(NSURLSessionDataTask *dataTask,NSError *error))failure
{
    return [[HSNetWorkingAPIClient sharedHSNetWorkingAPIClient]GET:suburl parameters:parameters progress:nil success:success failure:failure];
}
+(NSURLSessionDataTask *)postDataWithSuburl:(NSString*)suburl Parameters:(NSDictionary*)parameters Success:(void(^)(NSURLSessionDataTask *dataTask, id responseObject))success failure:(void(^)(NSURLSessionDataTask *dataTask,NSError *error))failure
{
    return [[HSNetWorkingAPIClient sharedHSNetWorkingAPIClient]POST:suburl parameters:parameters progress:nil success:success failure:failure];
}
@end
