

#import <Foundation/Foundation.h>

@interface NSString (JSON)

/**
 NSString -> NSData
 */
- (NSData *)hr_JSONData;

/**
 NSString -> NSArray
 */
- (NSArray *)hr_JSONArray;

/**
 NSString -> NSDictionary
 */
- (NSDictionary *)hr_JSONDictionary;

@end
