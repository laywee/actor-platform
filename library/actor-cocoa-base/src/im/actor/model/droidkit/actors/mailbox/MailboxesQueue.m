//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/mailbox/MailboxesQueue.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/mailbox/MailboxesQueue.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/dispatch/AbstractDispatchQueue.h"
#include "im/actor/model/droidkit/actors/dispatch/DispatchResult.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"
#include "im/actor/model/droidkit/actors/mailbox/MailboxesQueue.h"
#include "im/actor/model/droidkit/actors/mailbox/collections/EnvelopeCollection.h"
#include "im/actor/model/droidkit/actors/mailbox/collections/EnvelopeRoot.h"

@interface DKMailboxesQueue () {
 @public
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *envelopeRoot_;
}
@end

J2OBJC_FIELD_SETTER(DKMailboxesQueue, envelopeRoot_, ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *)


#line 12
@implementation DKMailboxesQueue


#line 16
- (instancetype)init {
  if (self = [super init]) {
    
#line 17
    envelopeRoot_ = [[ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot alloc] initWithDKMailboxesQueue:self];
  }
  return self;
}


#line 20
- (ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *)getEnvelopeRoot {
  
#line 21
  return envelopeRoot_;
}


#line 24
- (void)unlockMailboxWithDKMailbox:(DKMailbox *)mailbox {
  
#line 25
  [((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(envelopeRoot_)) attachCollectionWithImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection:[((DKMailbox *) nil_chk(mailbox)) getEnvelopes]];
}


#line 28
- (void)disconnectMailboxWithDKMailbox:(DKMailbox *)mailbox {
  
#line 29
  [((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(envelopeRoot_)) detachCollectionWithImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection:[((DKMailbox *) nil_chk(mailbox)) getEnvelopes]];
}


#line 32
- (void)notifyQueueChanged {
  
#line 33
  [super notifyQueueChanged];
}


#line 37
- (DKDispatchResult *)dispatchWithLong:(jlong)time {
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *res = [((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(envelopeRoot_)) fetchCollectionWithLong:time];
  if (res == nil) {
    return [self delayWithLong:DKAbstractDispatchQueue_FOREVER];
  }
  
#line 43
  if ([((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *) nil_chk(res)) getEnvelope] != nil) {
    DKDispatchResult *result = [self resultWithId:[res getEnvelope]];
    [res recycle];
    return result;
  }
  else {
    
#line 48
    DKDispatchResult *result = [self delayWithLong:[res getDelay]];
    [res recycle];
    return result;
  }
}

- (void)copyAllFieldsTo:(DKMailboxesQueue *)other {
  [super copyAllFieldsTo:other];
  other->envelopeRoot_ = envelopeRoot_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKMailboxesQueue)
