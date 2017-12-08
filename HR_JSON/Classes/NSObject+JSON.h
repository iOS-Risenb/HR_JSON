

#import <Foundation/Foundation.h>

@interface NSObject (JSON)

/**
 NSObject -> NSData
 */
- (NSData *)hr_JSONData;

/**
 NSObject -> NSString
 */
- (NSString *)hr_JSONString;

@end
