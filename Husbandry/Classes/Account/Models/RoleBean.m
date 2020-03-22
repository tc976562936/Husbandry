//
//	RoleBean.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RoleBean.h"

NSString *const kRoleBeanCreateTime = @"createTime";
NSString *const kRoleBeanDescriptionField = @"description";
NSString *const kRoleBeanRoleId = @"roleId";
NSString *const kRoleBeanRoleName = @"roleName";
NSString *const kRoleBeanRoleType = @"roleType";

@interface RoleBean ()
@end
@implementation RoleBean




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRoleBeanCreateTime] isKindOfClass:[NSNull class]]){
		self.createTime = dictionary[kRoleBeanCreateTime];
	}	
	if(![dictionary[kRoleBeanDescriptionField] isKindOfClass:[NSNull class]]){
		self.descriptionField = dictionary[kRoleBeanDescriptionField];
	}	
	if(![dictionary[kRoleBeanRoleId] isKindOfClass:[NSNull class]]){
		self.roleId = [dictionary[kRoleBeanRoleId] integerValue];
	}

	if(![dictionary[kRoleBeanRoleName] isKindOfClass:[NSNull class]]){
		self.roleName = dictionary[kRoleBeanRoleName];
	}	
	if(![dictionary[kRoleBeanRoleType] isKindOfClass:[NSNull class]]){
		self.roleType = [dictionary[kRoleBeanRoleType] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.createTime != nil){
		dictionary[kRoleBeanCreateTime] = self.createTime;
	}
	if(self.descriptionField != nil){
		dictionary[kRoleBeanDescriptionField] = self.descriptionField;
	}
	dictionary[kRoleBeanRoleId] = @(self.roleId);
	if(self.roleName != nil){
		dictionary[kRoleBeanRoleName] = self.roleName;
	}
	dictionary[kRoleBeanRoleType] = @(self.roleType);
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
	if(self.createTime != nil){
		[aCoder encodeObject:self.createTime forKey:kRoleBeanCreateTime];
	}
	if(self.descriptionField != nil){
		[aCoder encodeObject:self.descriptionField forKey:kRoleBeanDescriptionField];
	}
	[aCoder encodeObject:@(self.roleId) forKey:kRoleBeanRoleId];	if(self.roleName != nil){
		[aCoder encodeObject:self.roleName forKey:kRoleBeanRoleName];
	}
	[aCoder encodeObject:@(self.roleType) forKey:kRoleBeanRoleType];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.createTime = [aDecoder decodeObjectForKey:kRoleBeanCreateTime];
	self.descriptionField = [aDecoder decodeObjectForKey:kRoleBeanDescriptionField];
	self.roleId = [[aDecoder decodeObjectForKey:kRoleBeanRoleId] integerValue];
	self.roleName = [aDecoder decodeObjectForKey:kRoleBeanRoleName];
	self.roleType = [[aDecoder decodeObjectForKey:kRoleBeanRoleType] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	RoleBean *copy = [RoleBean new];

	copy.createTime = [self.createTime copy];
	copy.descriptionField = [self.descriptionField copy];
	copy.roleId = self.roleId;
	copy.roleName = [self.roleName copy];
	copy.roleType = self.roleType;

	return copy;
}
@end