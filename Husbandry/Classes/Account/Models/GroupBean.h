#import <UIKit/UIKit.h>

@interface GroupBean : NSObject

@property (nonatomic, strong) NSString * croupCode;
@property (nonatomic, assign) NSInteger groupId;
@property (nonatomic, strong) NSString * groupName;
@property (nonatomic, assign) NSInteger groupType;
@property (nonatomic, assign) NSInteger parentId;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end