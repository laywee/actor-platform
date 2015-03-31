//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/Sex.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/Sex.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/entity/Sex.h"
#include "java/lang/IllegalArgumentException.h"

@interface AMSexEnum () {
 @public
  jint value_;
}
@end

#line 6

BOOL AMSexEnum_initialized = NO;

AMSexEnum *AMSexEnum_values_[3];

@implementation AMSexEnum


#line 11
- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  if (self = [super initWithNSString:__name withInt:__ordinal]) {
    self->value_ = value;
  }
  return self;
}


#line 15
- (jint)getValue {
  
#line 16
  return value_;
}


#line 19
+ (AMSexEnum *)fromValueWithInt:(jint)value {
  return AMSexEnum_fromValueWithInt_(value);
}

IOSObjectArray *AMSexEnum_values() {
  AMSexEnum_init();
  return [IOSObjectArray arrayWithObjects:AMSexEnum_values_ count:3 type:AMSexEnum_class_()];
}
+ (IOSObjectArray *)values {
  return AMSexEnum_values();
}

+ (AMSexEnum *)valueOfWithNSString:(NSString *)name {
  return AMSexEnum_valueOfWithNSString_(name);
}

AMSexEnum *AMSexEnum_valueOfWithNSString_(NSString *name) {
  AMSexEnum_init();
  for (int i = 0; i < 3; i++) {
    AMSexEnum *e = AMSexEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [AMSexEnum class]) {
    AMSexEnum_UNKNOWN = [[AMSexEnum alloc] initWithInt:
#line 7
    1 withNSString:@"UNKNOWN" withInt:0];
    AMSexEnum_MALE = [[AMSexEnum alloc] initWithInt:
#line 7
    2 withNSString:@"MALE" withInt:1];
    AMSexEnum_FEMALE = [[AMSexEnum alloc] initWithInt:
#line 7
    3 withNSString:@"FEMALE" withInt:2];
    J2OBJC_SET_INITIALIZED(AMSexEnum)
  }
}

@end

AMSexEnum *AMSexEnum_fromValueWithInt_(jint value) {
  AMSexEnum_init();
  
#line 20
  switch (value) {
    default:
    case 1:
    return AMSexEnum_UNKNOWN;
    case 2:
    return AMSexEnum_MALE;
    case 3:
    return AMSexEnum_FEMALE;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMSexEnum)
