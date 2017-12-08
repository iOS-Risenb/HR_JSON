
#import "NSDictionary+JSON.h"

@implementation NSDictionary (JSON)

- (NSData *)hr_JSONData {
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    return ([jsonData length] > 0 && !error) ? jsonData : nil;
}

- (NSString *)hr_JSONString {
    return [[NSString alloc] initWithData:[self hr_JSONData]
                                 encoding:NSUTF8StringEncoding];
}

@end
