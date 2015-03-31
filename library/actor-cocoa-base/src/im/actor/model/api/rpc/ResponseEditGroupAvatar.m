//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseEditGroupAvatar.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseEditGroupAvatar.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/rpc/ResponseEditGroupAvatar.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcResponseEditGroupAvatar () {
 @public
  ImActorModelApiAvatar *avatar_;
  jint seq_;
  IOSByteArray *state_;
  jlong date_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseEditGroupAvatar, avatar_, ImActorModelApiAvatar *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseEditGroupAvatar, state_, IOSByteArray *)


#line 20
@implementation ImActorModelApiRpcResponseEditGroupAvatar


#line 23
+ (ImActorModelApiRpcResponseEditGroupAvatar *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseEditGroupAvatar_fromBytesWithByteArray_(data);
}


#line 32
- (instancetype)initWithImActorModelApiAvatar:(ImActorModelApiAvatar *)avatar
                                      withInt:(jint)seq
                                withByteArray:(IOSByteArray *)state
                                     withLong:(jlong)date {
  if (self = [super init]) {
    
#line 33
    self->avatar_ = avatar;
    
#line 34
    self->seq_ = seq;
    
#line 35
    self->state_ = state;
    
#line 36
    self->date_ = date;
  }
  return self;
}


#line 39
- (instancetype)init {
  return [super init];
}

- (ImActorModelApiAvatar *)getAvatar {
  
#line 44
  return self->avatar_;
}


#line 47
- (jint)getSeq {
  
#line 48
  return self->seq_;
}


#line 51
- (IOSByteArray *)getState {
  
#line 52
  return self->state_;
}


#line 55
- (jlong)getDate {
  
#line 56
  return self->date_;
}


#line 60
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->avatar_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:[[ImActorModelApiAvatar alloc] init]];
  self->seq_ = [values getIntWithInt:2];
  self->state_ = [values getBytesWithInt:3];
  self->date_ = [values getLongWithInt:4];
}


#line 68
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 69
  if (self->avatar_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->avatar_];
  [writer writeIntWithInt:2 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:3 withByteArray:self->state_];
  [writer writeLongWithInt:4 withLong:self->date_];
}

- (NSString *)description {
  NSString *res = @"tuple EditGroupAvatar{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 90
  return ImActorModelApiRpcResponseEditGroupAvatar_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcResponseEditGroupAvatar *)other {
  [super copyAllFieldsTo:other];
  other->avatar_ = avatar_;
  other->seq_ = seq_;
  other->state_ = state_;
  other->date_ = date_;
}

@end

ImActorModelApiRpcResponseEditGroupAvatar *ImActorModelApiRpcResponseEditGroupAvatar_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseEditGroupAvatar_init();
  
#line 24
  return ((ImActorModelApiRpcResponseEditGroupAvatar *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcResponseEditGroupAvatar alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseEditGroupAvatar)
