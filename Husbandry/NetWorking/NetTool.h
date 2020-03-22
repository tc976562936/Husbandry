//
//  NetTool.h
//  AFNetWorking封装使用
//

#import <Foundation/Foundation.h>

@interface NetTool : NSObject
+(NSURLSessionDataTask *)getDataWithSuburl:(NSString*)suburl Parameters:(NSDictionary*)parameters Success:(void(^)(NSURLSessionDataTask *dataTask, id responseObject))success failure:(void(^)(NSURLSessionDataTask *dataTask,NSError *error))failure;
+(NSURLSessionDataTask *)postDataWithSuburl:(NSString*)suburl Parameters:(NSDictionary*)parameters Success:(void(^)(NSURLSessionDataTask *dataTask, id responseObject))success failure:(void(^)(NSURLSessionDataTask *dataTask,NSError *error))failure;

@end
