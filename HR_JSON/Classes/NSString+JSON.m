

#import "NSString+JSON.h"

@implementation NSString (JSON)

- (NSData *)hr_JSONData {
    return [self dataUsingEncoding:NSASCIIStringEncoding];
}

- (NSArray *)hr_JSONArray {
    NSData *jsonData = [self hr_JSONData];
    NSError *error = nil;
    NSArray *jsonArr = [NSJSONSerialization JSONObjectWithData:jsonData
                                                    options:NSJSONReadingAllowFragments
                                                      error:&error];
    if (jsonArr && !error){
        return jsonArr;
    } else {
        return nil;
    }
}

- (NSDictionary *)hr_JSONDictionary {
    NSData *jsonData = [self hr_JSONData];
    NSError *error = nil;
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                       options:NSJSONReadingAllowFragments
                                                         error:&error];
    if (jsonDic && !error){
        return jsonDic;
    } else {
        return nil;
    }
}

@end
