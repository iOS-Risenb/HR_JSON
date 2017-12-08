
#import <Foundation/Foundation.h>

@interface NSData (JSON)

/**
 NSData -> NSString
 */
- (NSString *)HR_JSONString;

/**
 NSData -> NSArray
 */
- (NSArray *)HR_JSONArray;

/**
 NSData -> NSDictionary
 */
- (NSDictionary *)HR_JSONDictionary;

@end
