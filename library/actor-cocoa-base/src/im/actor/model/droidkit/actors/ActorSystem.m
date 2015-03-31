//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/ActorSystem.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/ActorSystem.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSelection.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Environment.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/actors/ThreadPriority.h"
#include "im/actor/model/droidkit/actors/debug/TraceInterface.h"
#include "im/actor/model/droidkit/actors/mailbox/ActorDispatcher.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashMap.h"

@interface DKActorSystem () {
 @public
  JavaUtilHashMap *dispatchers_;
  id<ImActorModelDroidkitActorsDebugTraceInterface> traceInterface_;
}
@end

J2OBJC_FIELD_SETTER(DKActorSystem, dispatchers_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(DKActorSystem, traceInterface_, id<ImActorModelDroidkitActorsDebugTraceInterface>)

BOOL DKActorSystem_initialized = NO;


#line 13
@implementation DKActorSystem

DKActorSystem * DKActorSystem_mainSystem_;
NSString * DKActorSystem_DEFAULT_DISPATCHER_ = 
#line 26
@"default";


#line 22
+ (DKActorSystem *)system {
  return DKActorSystem_system();
}


#line 35
- (instancetype)init {
  return
#line 36
  [self initDKActorSystemWithBoolean:YES];
}


#line 43
- (instancetype)initDKActorSystemWithBoolean:(jboolean)addDefaultDispatcher {
  if (self = [super init]) {
    dispatchers_ =
#line 28
    [[JavaUtilHashMap alloc] init];
    
#line 44
    if (addDefaultDispatcher) {
      [self addDispatcherWithNSString:DKActorSystem_DEFAULT_DISPATCHER_];
    }
  }
  return self;
}

- (instancetype)initWithBoolean:(jboolean)addDefaultDispatcher {
  return [self initDKActorSystemWithBoolean:
#line 43
addDefaultDispatcher];
}


#line 55
- (void)addDispatcherWithNSString:(NSString *)dispatcherId
                          withInt:(jint)threadsCount {
  
#line 56
  @synchronized(dispatchers_) {
    if ([((JavaUtilHashMap *) nil_chk(dispatchers_)) containsKeyWithId:dispatcherId]) {
      return;
    }
    
#line 61
    DKActorDispatcher *dispatcher = DKEnvironment_createDispatcherWithNSString_withInt_withDKThreadPriorityEnum_withDKActorSystem_(dispatcherId, threadsCount, DKThreadPriorityEnum_get_LOW(), self);
    (void) [dispatchers_ putWithId:dispatcherId withId:dispatcher];
  }
}


#line 71
- (void)addDispatcherWithNSString:(NSString *)dispatcherId {
  
#line 72
  @synchronized(dispatchers_) {
    if ([((JavaUtilHashMap *) nil_chk(dispatchers_)) containsKeyWithId:dispatcherId]) {
      return;
    }
    
#line 77
    DKActorDispatcher *dispatcher = DKEnvironment_createDefaultDispatcherWithNSString_withDKThreadPriorityEnum_withDKActorSystem_(dispatcherId, DKThreadPriorityEnum_get_LOW(), self);
    [self addDispatcherWithNSString:dispatcherId withDKActorDispatcher:dispatcher];
  }
}


#line 88
- (void)addDispatcherWithNSString:(NSString *)dispatcherId
            withDKActorDispatcher:(DKActorDispatcher *)dispatcher {
  
#line 89
  @synchronized(dispatchers_) {
    if ([((JavaUtilHashMap *) nil_chk(dispatchers_)) containsKeyWithId:dispatcherId]) {
      return;
    }
    (void) [dispatchers_ putWithId:dispatcherId withId:dispatcher];
  }
}


#line 97
- (DKActorRef *)actorOfWithDKActorSelection:(DKActorSelection *)selection {
  
#line 98
  return [self actorOfWithDKProps:[((DKActorSelection *) nil_chk(selection)) getProps] withNSString:[selection getPath]];
}


#line 108
- (DKActorRef *)actorOfWithDKProps:(DKProps *)props
                      withNSString:(NSString *)path {
  
#line 109
  NSString *dispatcherId = [((DKProps *) nil_chk(props)) getDispatcher] == nil ? DKActorSystem_DEFAULT_DISPATCHER_ : [props getDispatcher];
  
#line 111
  DKActorDispatcher *mailboxesDispatcher;
  @synchronized(dispatchers_) {
    if (![((JavaUtilHashMap *) nil_chk(dispatchers_)) containsKeyWithId:dispatcherId]) {
      @throw [[JavaLangRuntimeException alloc] initWithNSString:JreStrcat("$$C", @"Unknown dispatcherId '", dispatcherId, '\'')];
    }
    mailboxesDispatcher = [dispatchers_ getWithId:dispatcherId];
  }
  
#line 119
  return [((DKActorDispatcher *) nil_chk(mailboxesDispatcher)) referenceActorWithNSString:path withDKProps:props];
}

- (id<ImActorModelDroidkitActorsDebugTraceInterface>)getTraceInterface {
  
#line 128
  return traceInterface_;
}


#line 136
- (void)setTraceInterfaceWithImActorModelDroidkitActorsDebugTraceInterface:(id<ImActorModelDroidkitActorsDebugTraceInterface>)traceInterface {
  
#line 137
  self->traceInterface_ = traceInterface;
}

- (void)copyAllFieldsTo:(DKActorSystem *)other {
  [super copyAllFieldsTo:other];
  other->dispatchers_ = dispatchers_;
  other->traceInterface_ = traceInterface_;
}

+ (void)initialize {
  if (self == [DKActorSystem class]) {
    DKActorSystem_mainSystem_ =
#line 15
    [[DKActorSystem alloc] init];
    J2OBJC_SET_INITIALIZED(DKActorSystem)
  }
}

@end

DKActorSystem *DKActorSystem_system() {
  DKActorSystem_init();
  
#line 23
  return DKActorSystem_mainSystem_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKActorSystem)
