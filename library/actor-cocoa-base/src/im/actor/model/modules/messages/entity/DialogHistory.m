//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/messages/entity/DialogHistory.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/messages/entity/DialogHistory.java"

#include "J2ObjC_source.h"
#include "im/actor/model/entity/MessageState.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/modules/messages/entity/DialogHistory.h"

@interface ImActorModelModulesMessagesEntityDialogHistory () {
 @public
  AMPeer *peer_;
  jint unreadCount_;
  jlong sortDate_;
  jlong rid_;
  jlong date_;
  jint senderId_;
  AMAbsContent *content_;
  AMMessageStateEnum *status_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesEntityDialogHistory, peer_, AMPeer *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesEntityDialogHistory, content_, AMAbsContent *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesEntityDialogHistory, status_, AMMessageStateEnum *)


#line 10
@implementation ImActorModelModulesMessagesEntityDialogHistory


#line 21
- (instancetype)initWithAMPeer:(AMPeer *)peer
                       withInt:(jint)unreadCount
                      withLong:(jlong)sortDate
                      withLong:(jlong)rid
                      withLong:(jlong)date
                       withInt:(jint)senderId
              withAMAbsContent:(AMAbsContent *)content
        withAMMessageStateEnum:(AMMessageStateEnum *)status {
  if (self = [super init]) {
    
#line 23
    self->peer_ = peer;
    
#line 24
    self->unreadCount_ = unreadCount;
    
#line 25
    self->sortDate_ = sortDate;
    
#line 26
    self->rid_ = rid;
    
#line 27
    self->date_ = date;
    
#line 28
    self->senderId_ = senderId;
    
#line 29
    self->content_ = content;
    
#line 30
    self->status_ = status;
  }
  return self;
}


#line 33
- (AMPeer *)getPeer {
  
#line 34
  return peer_;
}


#line 37
- (jint)getUnreadCount {
  
#line 38
  return unreadCount_;
}


#line 41
- (jlong)getSortDate {
  
#line 42
  return sortDate_;
}


#line 45
- (jlong)getRid {
  
#line 46
  return rid_;
}


#line 49
- (jlong)getDate {
  
#line 50
  return date_;
}


#line 53
- (jint)getSenderId {
  
#line 54
  return senderId_;
}


#line 57
- (AMAbsContent *)getContent {
  
#line 58
  return content_;
}


#line 61
- (AMMessageStateEnum *)getStatus {
  
#line 62
  return status_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesEntityDialogHistory *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->unreadCount_ = unreadCount_;
  other->sortDate_ = sortDate_;
  other->rid_ = rid_;
  other->date_ = date_;
  other->senderId_ = senderId_;
  other->content_ = content_;
  other->status_ = status_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesEntityDialogHistory)
