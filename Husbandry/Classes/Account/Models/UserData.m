//
//	UserData.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "UserData.h"

NSString *const kUserDataGroupBean = @"groupBean";
NSString *const kUserDataRoleBean = @"roleBean";
NSString *const kUserDataSex = @"sex";
NSString *const kUserDataState = @"state";
NSString *const kUserDataUserId = @"userId";
NSString *const kUserDataUserName = @"userName";
NSString *const kUserDataUserType = @"userType";
NSString *const kUserDataUserCard = @"userCard";
NSString *const kUserDataSessionId = @"sessionId";
NSString *const kUserDataPhoto = @"photo";

@interface UserData ()
@end
@implementation UserData




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
    
	if(![dictionary[kUserDataGroupBean] isKindOfClass:[NSNull class]]){
		self.groupBean = [[GroupBean alloc] initWithDictionary:dictionary[kUserDataGroupBean]];
	}

	if(![dictionary[kUserDataRoleBean] isKindOfClass:[NSNull class]]){
		self.roleBean = [[RoleBean alloc] initWithDictionary:dictionary[kUserDataRoleBean]];
	}

	if(![dictionary[kUserDataSex] isKindOfClass:[NSNull class]]){
		self.sex = [dictionary[kUserDataSex] integerValue];
	}

	if(![dictionary[kUserDataState] isKindOfClass:[NSNull class]]){
		self.state = [dictionary[kUserDataState] integerValue];
	}

	if(![dictionary[kUserDataUserId] isKindOfClass:[NSNull class]]){
		self.userId = [dictionary[kUserDataUserId] integerValue];
	}

	if(![dictionary[kUserDataUserName] isKindOfClass:[NSNull class]]){
		self.userName = dictionary[kUserDataUserName];
	}	
	if(![dictionary[kUserDataUserType] isKindOfClass:[NSNull class]]){
		self.userType = [dictionary[kUserDataUserType] integerValue];
	}
    if(![dictionary[kUserDataUserCard] isKindOfClass:[NSNull class]]){
        self.userCard = dictionary[kUserDataUserCard];
    }
    if(![dictionary[kUserDataSessionId] isKindOfClass:[NSNull class]]){
        self.sessionId = dictionary[kUserDataSessionId];
    }
    if(![dictionary[kUserDataPhoto] isKindOfClass:[NSNull class]]){
        self.photo = dictionary[kUserDataPhoto];
    }

	return self;
}
- (BOOL)saveUser {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@(self.userId) forKey:@"userId"];
    [defaults setObject:self.userName forKey:@"userName"];
    [defaults setObject:self.sessionId forKey:@"sessionId"];
    [defaults setObject:self.userCard forKey:@"userCard"];
    [defaults setObject:self.photo forKey:@"photo"];
    
    if (![defaults synchronize]) {
        NSLog(@"存储用户信息失败");
        return NO;
    }
    return YES;
}
- (UserData *)getUser {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger userId = [[defaults objectForKey:@"userId"] integerValue];
    NSString *userName = [defaults objectForKey:@"userName"];
    NSString *sessionId = [defaults objectForKey:@"sessionId"];
    NSString *userCard = [defaults objectForKey:@"userCard"];
    NSString *photo = [defaults objectForKey:@"photo"];
    UserData *user = [[UserData alloc] init];
    user.userId = userId;
    user.userName = userName;
    user.sessionId = sessionId;
    user.userCard = userCard;
    user.photo = photo;
    return user;
}
- (BOOL)removeUser {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults removeObjectForKey:@"userId"];
    [defaults removeObjectForKey:@"userName"];
    [defaults removeObjectForKey:@"sessionId"];
    [defaults removeObjectForKey:@"userCard"];
    [defaults removeObjectForKey:@"photo"];
    if (![defaults synchronize]) {
        NSLog(@"删除用户信息失败");
        return NO;
    }
    return YES;
}

/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.groupBean != nil){
        dictionary[kUserDataGroupBean] = [self.groupBean toDictionary];
    }
    if(self.roleBean != nil){
        dictionary[kUserDataRoleBean] = [self.roleBean toDictionary];
    }
    if(self.sessionId != nil){
        dictionary[kUserDataSessionId] = self.sessionId;
    }
    if(self.photo != nil){
        dictionary[kUserDataPhoto] = self.photo;
    }
    dictionary[kUserDataSex] = @(self.sex);
    dictionary[kUserDataState] = @(self.state);
    if(self.userCard != nil){
        dictionary[kUserDataUserCard] = self.userCard;
    }
    dictionary[kUserDataUserId] = @(self.userId);
    if(self.userName != nil){
        dictionary[kUserDataUserName] = self.userName;
    }
    dictionary[kUserDataUserType] = @(self.userType);
    return dictionary;
    
}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    if(self.groupBean != nil){
        [aCoder encodeObject:self.groupBean forKey:kUserDataGroupBean];
    }
    if(self.roleBean != nil){
        [aCoder encodeObject:self.roleBean forKey:kUserDataRoleBean];
    }
    if(self.sessionId != nil){
        [aCoder encodeObject:self.sessionId forKey:kUserDataSessionId];
    }
    if(self.photo != nil){
        [aCoder encodeObject:self.photo forKey:kUserDataPhoto];
    }
    [aCoder encodeObject:@(self.sex) forKey:kUserDataSex];    [aCoder encodeObject:@(self.state) forKey:kUserDataState];    if(self.userCard != nil){
        [aCoder encodeObject:self.userCard forKey:kUserDataUserCard];
    }
    [aCoder encodeObject:@(self.userId) forKey:kUserDataUserId];    if(self.userName != nil){
        [aCoder encodeObject:self.userName forKey:kUserDataUserName];
    }
    [aCoder encodeObject:@(self.userType) forKey:kUserDataUserType];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.groupBean = [aDecoder decodeObjectForKey:kUserDataGroupBean];
    self.roleBean = [aDecoder decodeObjectForKey:kUserDataRoleBean];
    self.sessionId = [aDecoder decodeObjectForKey:kUserDataSessionId];
    self.photo = [aDecoder decodeObjectForKey:kUserDataPhoto];
    self.sex = [[aDecoder decodeObjectForKey:kUserDataSex] integerValue];
    self.state = [[aDecoder decodeObjectForKey:kUserDataState] integerValue];
    self.userCard = [aDecoder decodeObjectForKey:kUserDataUserCard];
    self.userId = [[aDecoder decodeObjectForKey:kUserDataUserId] integerValue];
    self.userName = [aDecoder decodeObjectForKey:kUserDataUserName];
    self.userType = [[aDecoder decodeObjectForKey:kUserDataUserType] integerValue];
    return self;
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    UserData *copy = [UserData new];
    
    copy.groupBean = [self.groupBean copy];
    copy.roleBean = [self.roleBean copy];
    copy.sessionId = [self.sessionId copy];
    copy.photo = [self.photo copy];
    copy.sex = self.sex;
    copy.state = self.state;
    copy.userCard = [self.userCard copy];
    copy.userId = self.userId;
    copy.userName = [self.userName copy];
    copy.userType = self.userType;
    
    return copy;
}
@end
