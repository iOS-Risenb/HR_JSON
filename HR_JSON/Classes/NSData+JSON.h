
#import <Foundation/Foundation.h>

@interface NSData (JSON)

/**
 NSData -> NSString
 */
- (NSString *)hr_JSONString;

/**
 NSData -> NSArray
 */
- (NSArray *)hr_JSONArray;

/**
 NSData -> NSDictionary
 */
- (NSDictionary *)hr_JSONDictionary;

@end
