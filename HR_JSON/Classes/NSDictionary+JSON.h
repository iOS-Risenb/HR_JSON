

#import <Foundation/Foundation.h>

@interface NSDictionary (JSON)

/**
 NSDictionary 转 NSData
 */
- (NSData *)HR_JSONData;

/**
 NSDictionary 转 NSString
 */
- (NSString *)HR_JSONString;

@end
