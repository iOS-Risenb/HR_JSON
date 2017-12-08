

#import "NSArray+JSON.h"

@implementation NSArray (JSON)

- (NSData *)hr_JSONData {
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    return ([jsonData length] && !error) ? jsonData : nil;
}

- (NSString *)hr_JSONString {
    return [[NSString alloc] initWithData:[self hr_JSONData]
                                                 encoding:NSUTF8StringEncoding];
}

@end
