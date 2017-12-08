
#import "NSObject+JSON.h"

@implementation NSObject (JSON)

- (NSData *)hr_JSONData {
    NSError *error = nil;
    id result = [NSJSONSerialization dataWithJSONObject:self
                                                options:kNilOptions error:&error];
    if (error)
        return nil;
    return result;
}

- (NSString *)hr_JSONString {
    return [[NSString alloc] initWithData:[self hr_JSONData]
                                 encoding:NSUTF8StringEncoding];
}

@end
