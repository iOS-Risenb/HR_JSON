

#import <Foundation/Foundation.h>

@interface NSDictionary (JSON)

/**
 NSDictionary 转 NSData
 */
- (NSData *)hr_JSONData;

/**
 NSDictionary 转 NSString
 */
- (NSString *)hr_JSONString;

@end
