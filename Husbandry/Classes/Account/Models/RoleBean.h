#import <UIKit/UIKit.h>

@interface RoleBean : NSObject

@property (nonatomic, strong) NSString * createTime;
@property (nonatomic, strong) NSString * descriptionField;
@property (nonatomic, assign) NSInteger roleId;
@property (nonatomic, strong) NSString * roleName;
@property (nonatomic, assign) NSInteger roleType;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end