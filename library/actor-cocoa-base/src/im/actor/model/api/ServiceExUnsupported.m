//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ServiceExUnsupported.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ServiceExUnsupported.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/ServiceExUnsupported.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiServiceExUnsupported () {
 @public
  jint key_;
  IOSByteArray *content_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiServiceExUnsupported, content_, IOSByteArray *)


#line 19
@implementation ImActorModelApiServiceExUnsupported


#line 24
- (instancetype)initWithInt:(jint)key
              withByteArray:(IOSByteArray *)content {
  if (self = [super init]) {
    
#line 25
    self->key_ = key;
    
#line 26
    self->content_ = content;
  }
  return self;
}


#line 30
- (jint)getHeader {
  
#line 31
  return self->key_;
}


#line 35
- (void)parseWithBSBserValues:(BSBserValues *)values {
  @throw [[JavaIoIOException alloc] initWithNSString:@"Parsing is unsupported"];
}


#line 40
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 41
  [((BSBserWriter *) nil_chk(writer)) writeRawWithByteArray:content_];
}

- (void)copyAllFieldsTo:(ImActorModelApiServiceExUnsupported *)other {
  [super copyAllFieldsTo:other];
  other->key_ = key_;
  other->content_ = content_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiServiceExUnsupported)
