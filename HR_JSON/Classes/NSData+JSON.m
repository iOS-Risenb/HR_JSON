

#import "NSData+JSON.h"

@implementation NSData (JSON)

- (NSString *)HR_JSONString {
    return [[NSString alloc] initWithData:self
                          encoding:NSUTF8StringEncoding];
}

- (NSArray *)HR_JSONArray {
    NSError *error = nil;
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:self
                                                    options:NSJSONReadingAllowFragments
                                                      error:&error];
    
    if (jsonArray && !error){
        return jsonArray;
    } else {
        return nil;
    }
}

- (NSDictionary *)HR_JSONDictionary {
    NSError *error = nil;
    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:self
                                                         options:NSJSONReadingAllowFragments
                                                           error:&error];
    
    if (jsonDictionary && !error){
        return jsonDictionary;
    } else {
        return nil;
    }
}

@end
