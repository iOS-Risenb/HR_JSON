
#import "NSObject+JSON.h"

@implementation NSObject (JSON)

- (NSData *)HR_JSONData {
    NSError *error = nil;
    id result = [NSJSONSerialization dataWithJSONObject:self
                                                options:kNilOptions error:&error];
    if (error)
        return nil;
    return result;
}

- (NSString *)HR_JSONString {
    return [[NSString alloc] initWithData:[self HR_JSONData]
                                 encoding:NSUTF8StringEncoding];
}

@end
