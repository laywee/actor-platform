//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateEncryptedMessage.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateEncryptedMessage.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateEncryptedMessage.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateEncryptedMessage () {
 @public
  ImActorModelApiPeer *peer_;
  jint senderUid_;
  jlong date_;
  jlong keyHash_;
  IOSByteArray *aesEncryptedKey_;
  IOSByteArray *message_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateEncryptedMessage, peer_, ImActorModelApiPeer *)
J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateEncryptedMessage, aesEncryptedKey_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateEncryptedMessage, message_, IOSByteArray *)


#line 20
@implementation ImActorModelApiUpdatesUpdateEncryptedMessage


#line 23
+ (ImActorModelApiUpdatesUpdateEncryptedMessage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateEncryptedMessage_fromBytesWithByteArray_(data);
}


#line 34
- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                    withInt:(jint)senderUid
                                   withLong:(jlong)date
                                   withLong:(jlong)keyHash
                              withByteArray:(IOSByteArray *)aesEncryptedKey
                              withByteArray:(IOSByteArray *)message {
  if (self = [super init]) {
    
#line 35
    self->peer_ = peer;
    
#line 36
    self->senderUid_ = senderUid;
    
#line 37
    self->date_ = date;
    
#line 38
    self->keyHash_ = keyHash;
    
#line 39
    self->aesEncryptedKey_ = aesEncryptedKey;
    
#line 40
    self->message_ = message;
  }
  return self;
}


#line 43
- (instancetype)init {
  return [super init];
}

- (ImActorModelApiPeer *)getPeer {
  
#line 48
  return self->peer_;
}


#line 51
- (jint)getSenderUid {
  
#line 52
  return self->senderUid_;
}


#line 55
- (jlong)getDate {
  
#line 56
  return self->date_;
}


#line 59
- (jlong)getKeyHash {
  
#line 60
  return self->keyHash_;
}


#line 63
- (IOSByteArray *)getAesEncryptedKey {
  
#line 64
  return self->aesEncryptedKey_;
}


#line 67
- (IOSByteArray *)getMessage {
  
#line 68
  return self->message_;
}


#line 72
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:[[ImActorModelApiPeer alloc] init]];
  self->senderUid_ = [values getIntWithInt:2];
  self->date_ = [values getLongWithInt:6];
  self->keyHash_ = [values getLongWithInt:3];
  self->aesEncryptedKey_ = [values getBytesWithInt:4];
  self->message_ = [values getBytesWithInt:5];
}


#line 82
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 83
  if (self->peer_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  [writer writeIntWithInt:2 withInt:self->senderUid_];
  [writer writeLongWithInt:6 withLong:self->date_];
  [writer writeLongWithInt:3 withLong:self->keyHash_];
  if (self->aesEncryptedKey_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:4 withByteArray:self->aesEncryptedKey_];
  if (self->message_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:5 withByteArray:self->message_];
}

- (NSString *)description {
  NSString *res = @"update EncryptedMessage{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", senderUid=", self->senderUid_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", date=", self->date_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", keyHash=", self->keyHash_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", aesEncryptedKey=", BSUtils_byteArrayToStringCompactWithByteArray_(self->aesEncryptedKey_)));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 114
  return ImActorModelApiUpdatesUpdateEncryptedMessage_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateEncryptedMessage *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->senderUid_ = senderUid_;
  other->date_ = date_;
  other->keyHash_ = keyHash_;
  other->aesEncryptedKey_ = aesEncryptedKey_;
  other->message_ = message_;
}

@end

ImActorModelApiUpdatesUpdateEncryptedMessage *ImActorModelApiUpdatesUpdateEncryptedMessage_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateEncryptedMessage_init();
  
#line 24
  return ((ImActorModelApiUpdatesUpdateEncryptedMessage *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateEncryptedMessage alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateEncryptedMessage)
