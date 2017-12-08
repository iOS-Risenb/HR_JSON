
#import "NSDictionary+JSON.h"

@implementation NSDictionary (JSON)

- (NSData *)HR_JSONData {
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    return ([jsonData length] > 0 && !error) ? jsonData : nil;
}

- (NSString *)HR_JSONString {
    return [[NSString alloc] initWithData:[self HR_JSONData]
                                 encoding:NSUTF8StringEncoding];
}

@end
