#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "HR_JSON.h"
#import "NSArray+JSON.h"
#import "NSData+JSON.h"
#import "NSDictionary+JSON.h"
#import "NSObject+JSON.h"
#import "NSString+JSON.h"

FOUNDATION_EXPORT double HR_JSONVersionNumber;
FOUNDATION_EXPORT const unsigned char HR_JSONVersionString[];

