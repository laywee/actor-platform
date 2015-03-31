//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetPublicKeys.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetPublicKeys.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/PublicKeyRequest.h"
#include "im/actor/model/api/rpc/RequestGetPublicKeys.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcRequestGetPublicKeys () {
 @public
  id<JavaUtilList> keys_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestGetPublicKeys, keys_, id<JavaUtilList>)


#line 20
@implementation ImActorModelApiRpcRequestGetPublicKeys


#line 23
+ (ImActorModelApiRpcRequestGetPublicKeys *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestGetPublicKeys_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)keys {
  if (self = [super init]) {
    
#line 30
    self->keys_ = keys;
  }
  return self;
}


#line 33
- (instancetype)init {
  return [super init];
}

- (id<JavaUtilList>)getKeys {
  
#line 38
  return self->keys_;
}


#line 42
- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _keys = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_keys addWithId:[[ImActorModelApiPublicKeyRequest alloc] init]];
  }
  self->keys_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_keys];
}


#line 51
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 52
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->keys_];
}

- (NSString *)description {
  NSString *res = @"rpc GetPublicKeys{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"keys=", [((id<JavaUtilList>) nil_chk(self->keys_)) size]));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 65
  return ImActorModelApiRpcRequestGetPublicKeys_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestGetPublicKeys *)other {
  [super copyAllFieldsTo:other];
  other->keys_ = keys_;
}

@end

ImActorModelApiRpcRequestGetPublicKeys *ImActorModelApiRpcRequestGetPublicKeys_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestGetPublicKeys_init();
  
#line 24
  return ((ImActorModelApiRpcRequestGetPublicKeys *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestGetPublicKeys alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestGetPublicKeys)
