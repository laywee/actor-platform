//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetAuthSessions.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetAuthSessions.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestGetAuthSessions.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"


#line 20
@implementation ImActorModelApiRpcRequestGetAuthSessions


#line 23
+ (ImActorModelApiRpcRequestGetAuthSessions *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestGetAuthSessions_fromBytesWithByteArray_(data);
}


#line 28
- (instancetype)init {
  return [super init];
}


#line 33
- (void)parseWithBSBserValues:(BSBserValues *)values {
}


#line 37
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
}

- (NSString *)description {
  
#line 42
  NSString *res = @"rpc GetAuthSessions{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 49
  return ImActorModelApiRpcRequestGetAuthSessions_HEADER;
}

@end

ImActorModelApiRpcRequestGetAuthSessions *ImActorModelApiRpcRequestGetAuthSessions_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestGetAuthSessions_init();
  
#line 24
  return ((ImActorModelApiRpcRequestGetAuthSessions *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestGetAuthSessions alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestGetAuthSessions)
