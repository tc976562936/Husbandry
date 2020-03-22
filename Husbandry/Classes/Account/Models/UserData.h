/*
 
 {
 data (用户实体类, optional): 对象 ,
 message (string, optional): 消息 ,
 status (integer, optional): 接口状态码 200：成功 、500：失败 、501：需绑定手机号
 }
 用户实体类 {
 groupBean (分组实体类, optional): 用户分组信息 ,
 roleBean (角色实体类, optional): 用户角色信息 ,
 sex (integer, optional): 年龄 ,
 state (integer, optional): 用户状态 ,
 userCard (string, optional): 用户标识 ,
 userId (integer, optional): 用户编号 ,
 userName (string, optional): 姓名 ,
 userType (integer, optional): 用户类型
 }
 分组实体类 {
 croupCode (string, optional): 分组标识 ,
 groupId (integer, optional): 分组编号 ,
 groupName (string, optional): 分组名称 ,
 groupType (integer, optional): 类型编号 ,
 parentId (integer, optional): 父编号
 }
 角色实体类 {
 createTime (string, optional): 创建时间 ,
 description (string, optional): 角色类型 ,
 roleId (integer, optional): 角色编号 ,
 roleName (string, optional): 角色名称 ,
 roleType (integer, optional): 类型编号
 }
 
 
 登录信息:{
 data =     {
 groupBean =         {
 croupCode = "\U7535\U5f71\U5f55\U97f32019\U7ea7";
 groupId = 10;
 groupName = "\U7535\U5f71\U5f55\U97f32019\U7ea7";
 groupType = 4;
 parentId = 9;
 };
 roleBean =         {
 createTime = "2019-06-13 10:09:24.0";
 description = " ";
 roleId = 2;
 roleName = "\U7cfb\U7edf\U7ba1\U7406\U5458";
 roleType = 0;
 };
 sex = 0;
 state = 1;
 userId = 3;
 userName = ceshi;
 userType = 0;
 };
 message = "\U6210\U529f";
 status = 200;
 }
 
 */

#import <UIKit/UIKit.h>
#import "GroupBean.h"
#import "RoleBean.h"

@interface UserData : NSObject

@property (nonatomic, strong) GroupBean * groupBean;
@property (nonatomic, strong) RoleBean * roleBean;
@property (nonatomic, assign) NSInteger sex;
@property (nonatomic, assign) NSInteger state;
@property (nonatomic, assign) NSInteger userId;
@property (nonatomic, strong) NSString * userName;
@property (nonatomic, assign) NSInteger userType;
@property (nonatomic, strong) NSString * userCard;
@property (nonatomic, strong) NSString * sessionId;
@property (nonatomic, strong) NSString * photo;
-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

- (BOOL)saveUser;
- (BOOL)removeUser;
- (UserData *)getUser;

@end
