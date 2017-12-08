

#import <Foundation/Foundation.h>

@interface NSString (JSON)

/**
 NSString -> NSData
 */
- (NSData *)HR_JSONData;

/**
 NSString -> NSArray
 */
- (NSArray *)HR_JSONArray;

/**
 NSString -> NSDictionary
 */
- (NSDictionary *)HR_JSONDictionary;

@end
