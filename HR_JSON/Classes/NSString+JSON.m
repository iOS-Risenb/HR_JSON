

#import "NSString+JSON.h"

@implementation NSString (JSON)

- (NSData *)HR_JSONData {
    return [self dataUsingEncoding:NSASCIIStringEncoding];
}

- (NSArray *)HR_JSONArray {
    NSData *jsonData = [self HR_JSONData];
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

- (NSDictionary *)HR_JSONDictionary {
    NSData *jsonData = [self HR_JSONData];
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
