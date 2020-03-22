//
//	GroupBean.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "GroupBean.h"

NSString *const kGroupBeanCroupCode = @"croupCode";
NSString *const kGroupBeanGroupId = @"groupId";
NSString *const kGroupBeanGroupName = @"groupName";
NSString *const kGroupBeanGroupType = @"groupType";
NSString *const kGroupBeanParentId = @"parentId";

@interface GroupBean ()
@end
@implementation GroupBean




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kGroupBeanCroupCode] isKindOfClass:[NSNull class]]){
		self.croupCode = dictionary[kGroupBeanCroupCode];
	}	
	if(![dictionary[kGroupBeanGroupId] isKindOfClass:[NSNull class]]){
		self.groupId = [dictionary[kGroupBeanGroupId] integerValue];
	}

	if(![dictionary[kGroupBeanGroupName] isKindOfClass:[NSNull class]]){
		self.groupName = dictionary[kGroupBeanGroupName];
	}	
	if(![dictionary[kGroupBeanGroupType] isKindOfClass:[NSNull class]]){
		self.groupType = [dictionary[kGroupBeanGroupType] integerValue];
	}

	if(![dictionary[kGroupBeanParentId] isKindOfClass:[NSNull class]]){
		self.parentId = [dictionary[kGroupBeanParentId] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.croupCode != nil){
		dictionary[kGroupBeanCroupCode] = self.croupCode;
	}
	dictionary[kGroupBeanGroupId] = @(self.groupId);
	if(self.groupName != nil){
		dictionary[kGroupBeanGroupName] = self.groupName;
	}
	dictionary[kGroupBeanGroupType] = @(self.groupType);
	dictionary[kGroupBeanParentId] = @(self.parentId);
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
	if(self.croupCode != nil){
		[aCoder encodeObject:self.croupCode forKey:kGroupBeanCroupCode];
	}
	[aCoder encodeObject:@(self.groupId) forKey:kGroupBeanGroupId];	if(self.groupName != nil){
		[aCoder encodeObject:self.groupName forKey:kGroupBeanGroupName];
	}
	[aCoder encodeObject:@(self.groupType) forKey:kGroupBeanGroupType];	[aCoder encodeObject:@(self.parentId) forKey:kGroupBeanParentId];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.croupCode = [aDecoder decodeObjectForKey:kGroupBeanCroupCode];
	self.groupId = [[aDecoder decodeObjectForKey:kGroupBeanGroupId] integerValue];
	self.groupName = [aDecoder decodeObjectForKey:kGroupBeanGroupName];
	self.groupType = [[aDecoder decodeObjectForKey:kGroupBeanGroupType] integerValue];
	self.parentId = [[aDecoder decodeObjectForKey:kGroupBeanParentId] integerValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	GroupBean *copy = [GroupBean new];

	copy.croupCode = [self.croupCode copy];
	copy.groupId = self.groupId;
	copy.groupName = [self.groupName copy];
	copy.groupType = self.groupType;
	copy.parentId = self.parentId;

	return copy;
}
@end