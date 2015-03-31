//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/mailbox/ActorDispatcher.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/mailbox/ActorDispatcher.java"

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorContext.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorScope.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/ActorTime.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/actors/debug/TraceInterface.h"
#include "im/actor/model/droidkit/actors/dispatch/AbstractDispatcher.h"
#include "im/actor/model/droidkit/actors/extensions/ActorExtension.h"
#include "im/actor/model/droidkit/actors/mailbox/ActorDispatcher.h"
#include "im/actor/model/droidkit/actors/mailbox/ActorEndpoint.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"
#include "im/actor/model/droidkit/actors/mailbox/MailboxesQueue.h"
#include "im/actor/model/droidkit/actors/messages/DeadLetter.h"
#include "im/actor/model/droidkit/actors/messages/Ping.h"
#include "im/actor/model/droidkit/actors/messages/PoisonPill.h"
#include "im/actor/model/droidkit/actors/messages/StartActor.h"
#include "java/lang/Exception.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"

@interface DKActorDispatcher () {
 @public
  id LOCK_;
  JavaUtilHashMap *endpoints_;
  JavaUtilHashMap *scopes_;
  DKActorSystem *actorSystem_;
  NSString *name_;
  DKAbstractDispatcher *dispatcher_;
}
@end

J2OBJC_FIELD_SETTER(DKActorDispatcher, LOCK_, id)
J2OBJC_FIELD_SETTER(DKActorDispatcher, endpoints_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(DKActorDispatcher, scopes_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(DKActorDispatcher, actorSystem_, DKActorSystem *)
J2OBJC_FIELD_SETTER(DKActorDispatcher, name_, NSString *)
J2OBJC_FIELD_SETTER(DKActorDispatcher, dispatcher_, DKAbstractDispatcher *)


#line 18
@implementation DKActorDispatcher


#line 28
- (instancetype)initWithNSString:(NSString *)name
               withDKActorSystem:(DKActorSystem *)actorSystem {
  if (self = [super init]) {
    LOCK_ =
#line 20
    [[NSObject alloc] init];
    endpoints_ =
#line 21
    [[JavaUtilHashMap alloc] init];
    scopes_ =
#line 22
    [[JavaUtilHashMap alloc] init];
    
#line 29
    self->name_ = name;
    
#line 30
    self->actorSystem_ = actorSystem;
  }
  return self;
}


#line 38
- (void)initDispatcherWithDKAbstractDispatcher:(DKAbstractDispatcher *)dispatcher {
  
#line 39
  if (self->dispatcher_ != nil) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Double dispatcher init"];
  }
  self->dispatcher_ = dispatcher;
}


#line 45
- (DKActorRef *)referenceActorWithNSString:(NSString *)path
                               withDKProps:(DKProps *)props {
  
#line 46
  @synchronized(LOCK_) {
    if ([((JavaUtilHashMap *) nil_chk(scopes_)) containsKeyWithId:path]) {
      return [((DKActorScope *) nil_chk([scopes_ getWithId:path])) getActorRef];
    }
    
#line 51
    DKMailbox *mailbox = [((DKProps *) nil_chk(props)) createMailboxWithDKMailboxesQueue:[((DKAbstractDispatcher *) nil_chk(dispatcher_)) getQueue]];
    
#line 53
    DKActorEndpoint *endpoint = [((JavaUtilHashMap *) nil_chk(endpoints_)) getWithId:path];
    if (endpoint == nil) {
      endpoint = [[DKActorEndpoint alloc] initWithNSString:path];
      (void) [endpoints_ putWithId:path withId:endpoint];
    }
    
#line 59
    DKActorScope *scope = [[DKActorScope alloc] initWithDKActorSystem:actorSystem_ withDKMailbox:mailbox withDKActorDispatcher:self withNSString:path withDKProps:props withDKActorEndpoint:endpoint];
    [((DKActorEndpoint *) nil_chk(endpoint)) connectWithDKMailbox:mailbox withDKActorScope:scope];
    (void) [scopes_ putWithId:[scope getPath] withId:scope];
    
#line 64
    [((DKActorRef *) nil_chk([scope getActorRef])) sendWithId:ImActorModelDroidkitActorsMessagesStartActor_get_INSTANCE_()];
    return [scope getActorRef];
  }
}


#line 69
- (void)killGracefullyWithDKActorScope:(DKActorScope *)scope {
  
#line 70
  for (id<ImActorModelDroidkitActorsExtensionsActorExtension> __strong e in nil_chk([((DKActor *) nil_chk([((DKActorScope *) nil_chk(scope)) getActor])) getExtensions])) {
    [((id<ImActorModelDroidkitActorsExtensionsActorExtension>) nil_chk(e)) postStop];
  }
  [((DKActor *) nil_chk([scope getActor])) postStop];
  [scope onActorDie];
  {
    IOSObjectArray *a__ = [((DKMailbox *) nil_chk([scope getMailbox])) allEnvelopes];
    DKEnvelope * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    DKEnvelope * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      DKEnvelope *e = *b__++;
      
#line 77
      if ([((DKEnvelope *) nil_chk(e)) getSender] != nil) {
        [((DKActorRef *) nil_chk([e getSender])) sendWithId:[[ImActorModelDroidkitActorsMessagesDeadLetter alloc] initWithId:[e getMessage]]];
      }
    }
  }
  
#line 81
  [((DKMailbox *) nil_chk([scope getMailbox])) clear];
  @synchronized(LOCK_) {
    (void) [((JavaUtilHashMap *) nil_chk(scopes_)) removeWithId:[scope getPath]];
    (void) [((JavaUtilHashMap *) nil_chk(endpoints_)) removeWithId:[scope getPath]];
    [((DKMailboxesQueue *) nil_chk([((DKAbstractDispatcher *) nil_chk(dispatcher_)) getQueue])) disconnectMailboxWithDKMailbox:[scope getMailbox]];
  }
}


#line 89
- (void)sendMessageWithDKActorEndpoint:(DKActorEndpoint *)endpoint
                                withId:(id)message
                              withLong:(jlong)time
                        withDKActorRef:(DKActorRef *)sender {
  
#line 90
  if ([((DKActorEndpoint *) nil_chk(endpoint)) isDisconnected]) {
    if (sender != nil) {
      if ([((DKActorSystem *) nil_chk(actorSystem_)) getTraceInterface] != nil) {
        [((id<ImActorModelDroidkitActorsDebugTraceInterface>) nil_chk([actorSystem_ getTraceInterface])) onDeadLetterWithDKActorRef:sender withId:message];
      }
      [sender sendWithId:[[ImActorModelDroidkitActorsMessagesDeadLetter alloc] initWithId:message]];
    }
  }
  else {
    
#line 98
    [((DKMailbox *) nil_chk([endpoint getMailbox])) scheduleWithDKEnvelope:[[DKEnvelope alloc] initWithId:message withDKActorScope:[endpoint getScope] withDKMailbox:[endpoint getMailbox] withDKActorRef:sender] withLong:time];
  }
}


#line 102
- (void)sendMessageOnceWithDKActorEndpoint:(DKActorEndpoint *)endpoint
                                    withId:(id)message
                                  withLong:(jlong)time
                            withDKActorRef:(DKActorRef *)sender {
  
#line 103
  if ([((DKActorEndpoint *) nil_chk(endpoint)) isDisconnected]) {
    if (sender != nil) {
      if ([((DKActorSystem *) nil_chk(actorSystem_)) getTraceInterface] != nil) {
        [((id<ImActorModelDroidkitActorsDebugTraceInterface>) nil_chk([actorSystem_ getTraceInterface])) onDeadLetterWithDKActorRef:sender withId:message];
      }
      [sender sendWithId:[[ImActorModelDroidkitActorsMessagesDeadLetter alloc] initWithId:message]];
    }
  }
  else {
    
#line 111
    [((DKMailbox *) nil_chk([endpoint getMailbox])) scheduleOnceWithDKEnvelope:[[DKEnvelope alloc] initWithId:message withDKActorScope:[endpoint getScope] withDKMailbox:[endpoint getMailbox] withDKActorRef:sender] withLong:time];
  }
}


#line 115
- (void)cancelSendWithDKActorEndpoint:(DKActorEndpoint *)endpoint
                               withId:(id)message
                       withDKActorRef:(DKActorRef *)sender {
  
#line 116
  if (![((DKActorEndpoint *) nil_chk(endpoint)) isDisconnected]) {
    [((DKMailbox *) nil_chk([endpoint getMailbox])) unscheduleWithDKEnvelope:[[DKEnvelope alloc] initWithId:message withDKActorScope:[endpoint getScope] withDKMailbox:[endpoint getMailbox] withDKActorRef:sender]];
  }
}


#line 122
- (NSString *)getName {
  
#line 123
  return name_;
}


#line 131
- (void)processEnvelopeWithDKEnvelope:(DKEnvelope *)envelope {
  
#line 133
  DKActorScope *scope = [((DKEnvelope *) nil_chk(envelope)) getScope];
  
#line 137
  if ([((DKActorSystem *) nil_chk(actorSystem_)) getTraceInterface] != nil) {
    [((id<ImActorModelDroidkitActorsDebugTraceInterface>) nil_chk([actorSystem_ getTraceInterface])) onEnvelopeDeliveredWithDKEnvelope:envelope];
  }
  
#line 141
  jlong start = DKActorTime_currentTime();
  jboolean isDisconnected = NO;
  
#line 144
  if ([((DKActorScope *) nil_chk(scope)) getActor] == nil) {
    if ([envelope getMessage] == ImActorModelDroidkitActorsMessagesPoisonPill_get_INSTANCE_()) {
      
#line 147
      return;
    }
    @try {
      DKActor *actor = [((DKProps *) nil_chk([scope getProps])) create];
      [((DKActor *) nil_chk(actor)) initActorWithNSString:[scope getPath] withDKActorContext:[[DKActorContext alloc] initWithDKActorScope:scope] withDKMailbox:[scope getMailbox]];
      for (id<ImActorModelDroidkitActorsExtensionsActorExtension> __strong e in nil_chk([actor getExtensions])) {
        [((id<ImActorModelDroidkitActorsExtensionsActorExtension>) nil_chk(e)) preStart];
      }
      [actor preStart];
      [scope onActorCreatedWithDKActor:actor];
    }
    @catch (
#line 157
    JavaLangException *e) {
      [((JavaLangException *) nil_chk(e)) printStackTrace];
      if ([envelope getSender] != nil) {
        [((DKActorRef *) nil_chk([envelope getSender])) sendWithId:[[ImActorModelDroidkitActorsMessagesDeadLetter alloc] initWithId:@"Unable to create actor"]];
      }
      return;
    }
  }
  
#line 166
  @try {
    if ([envelope getMessage] == ImActorModelDroidkitActorsMessagesStartActor_get_INSTANCE_()) {
      
#line 169
      return;
    }
    else
#line 170
    if ([envelope getMessage] == ImActorModelDroidkitActorsMessagesPing_get_INSTANCE_()) {
      
#line 172
      return;
    }
    else
#line 173
    if ([envelope getMessage] == ImActorModelDroidkitActorsMessagesPoisonPill_get_INSTANCE_()) {
      isDisconnected = YES;
      for (id<ImActorModelDroidkitActorsExtensionsActorExtension> __strong e in nil_chk([((DKActor *) nil_chk([scope getActor])) getExtensions])) {
        [((id<ImActorModelDroidkitActorsExtensionsActorExtension>) nil_chk(e)) postStop];
      }
      [((DKActor *) nil_chk([scope getActor])) postStop];
      [scope onActorDie];
      {
        IOSObjectArray *a__ =
#line 180
        [((DKMailbox *) nil_chk([scope getMailbox])) allEnvelopes];
        DKEnvelope * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        DKEnvelope * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          DKEnvelope *e = *b__++;
          
#line 181
          if ([((DKEnvelope *) nil_chk(e)) getSender] != nil) {
            [((DKActorRef *) nil_chk([e getSender])) sendWithId:[[ImActorModelDroidkitActorsMessagesDeadLetter alloc] initWithId:[e getMessage]]];
          }
        }
      }
      
#line 185
      [((DKMailbox *) nil_chk([scope getMailbox])) clear];
      @synchronized(LOCK_) {
        (void) [((JavaUtilHashMap *) nil_chk(scopes_)) removeWithId:[scope getPath]];
        (void) [((JavaUtilHashMap *) nil_chk(endpoints_)) removeWithId:[scope getPath]];
        [((DKMailboxesQueue *) nil_chk([((DKAbstractDispatcher *) nil_chk(dispatcher_)) getQueue])) disconnectMailboxWithDKMailbox:[scope getMailbox]];
      }
    }
    else {
      
#line 192
      [scope setSenderWithDKActorRef:[envelope getSender]];
      for (id<ImActorModelDroidkitActorsExtensionsActorExtension> __strong e in nil_chk([((DKActor *) nil_chk([scope getActor])) getExtensions])) {
        if ([((id<ImActorModelDroidkitActorsExtensionsActorExtension>) nil_chk(e)) onReceiveWithId:[envelope getMessage]]) {
          return;
        }
      }
      [((DKActor *) nil_chk([scope getActor])) onReceiveWithId:[envelope getMessage]];
    }
  }
  @catch (
#line 200
  JavaLangException *e) {
    if ([actorSystem_ getTraceInterface] != nil) {
      [((id<ImActorModelDroidkitActorsDebugTraceInterface>) nil_chk([actorSystem_ getTraceInterface])) onActorDieWithDKActorRef:[scope getActorRef] withJavaLangException:e];
    }
    [scope onActorDie];
    isDisconnected = YES;
    @synchronized(LOCK_) {
      (void) [((JavaUtilHashMap *) nil_chk(scopes_)) removeWithId:[scope getPath]];
      (void) [((JavaUtilHashMap *) nil_chk(endpoints_)) removeWithId:[scope getPath]];
      [((DKMailboxesQueue *) nil_chk([((DKAbstractDispatcher *) nil_chk(dispatcher_)) getQueue])) disconnectMailboxWithDKMailbox:[scope getMailbox]];
    }
  }
  @finally {
    
#line 212
    if ([actorSystem_ getTraceInterface] != nil) {
      [((id<ImActorModelDroidkitActorsDebugTraceInterface>) nil_chk([actorSystem_ getTraceInterface])) onEnvelopeProcessedWithDKEnvelope:envelope withLong:DKActorTime_currentTime() - start];
    }
    if (!isDisconnected) {
      [((DKMailboxesQueue *) nil_chk([((DKAbstractDispatcher *) nil_chk(dispatcher_)) getQueue])) unlockMailboxWithDKMailbox:[envelope getMailbox]];
    }
  }
}

- (void)copyAllFieldsTo:(DKActorDispatcher *)other {
  [super copyAllFieldsTo:other];
  other->LOCK_ = LOCK_;
  other->endpoints_ = endpoints_;
  other->scopes_ = scopes_;
  other->actorSystem_ = actorSystem_;
  other->name_ = name_;
  other->dispatcher_ = dispatcher_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKActorDispatcher)
