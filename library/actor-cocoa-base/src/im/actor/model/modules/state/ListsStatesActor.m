//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/state/ListsStatesActor.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/state/ListsStatesActor.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/modules/AppStateModule.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/state/ListsStatesActor.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/viewmodel/AppStateVM.h"

@interface ImActorModelModulesStateListsStatesActor_OnContactsChanged () {
 @public
  jboolean isEmpty__;
}
@end

@interface ImActorModelModulesStateListsStatesActor_OnDialogsChanged () {
 @public
  jboolean isEmpty__;
}
@end


#line 9
@implementation ImActorModelModulesStateListsStatesActor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  return
#line 12
  [super initWithImActorModelModulesModules:modules];
}


#line 15
- (void)onDialogsChangedWithBoolean:(jboolean)isEmpty {
  
#line 16
  [((AMAppStateVM *) nil_chk([((ImActorModelModulesAppStateModule *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getAppStateModule])) getAppStateVM])) onDialogsChangedWithBoolean:isEmpty];
}


#line 19
- (void)onContactsChangedWithBoolean:(jboolean)isEmpty {
  
#line 20
  [((AMAppStateVM *) nil_chk([((ImActorModelModulesAppStateModule *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getAppStateModule])) getAppStateVM])) onContactsChangedWithBoolean:isEmpty];
}


#line 24
- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorModelModulesStateListsStatesActor_OnContactsChanged class]]) {
    [self onContactsChangedWithBoolean:[((ImActorModelModulesStateListsStatesActor_OnContactsChanged *) nil_chk(((ImActorModelModulesStateListsStatesActor_OnContactsChanged *) check_class_cast(message, [ImActorModelModulesStateListsStatesActor_OnContactsChanged class])))) isEmpty]];
  }
  else
#line 27
  if ([message isKindOfClass:[ImActorModelModulesStateListsStatesActor_OnDialogsChanged class]]) {
    [self onDialogsChangedWithBoolean:[((ImActorModelModulesStateListsStatesActor_OnDialogsChanged *) nil_chk(((ImActorModelModulesStateListsStatesActor_OnDialogsChanged *) check_class_cast(message, [ImActorModelModulesStateListsStatesActor_OnDialogsChanged class])))) isEmpty]];
  }
  else {
    
#line 30
    [self dropWithId:message];
  }
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesStateListsStatesActor)


#line 34
@implementation ImActorModelModulesStateListsStatesActor_OnContactsChanged


#line 37
- (instancetype)initWithBoolean:(jboolean)isEmpty {
  if (self = [super init]) {
    
#line 38
    self->isEmpty__ = isEmpty;
  }
  return self;
}


#line 41
- (jboolean)isEmpty {
  
#line 42
  return isEmpty__;
}

- (void)copyAllFieldsTo:(ImActorModelModulesStateListsStatesActor_OnContactsChanged *)other {
  [super copyAllFieldsTo:other];
  other->isEmpty__ = isEmpty__;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesStateListsStatesActor_OnContactsChanged)


#line 46
@implementation ImActorModelModulesStateListsStatesActor_OnDialogsChanged


#line 49
- (instancetype)initWithBoolean:(jboolean)isEmpty {
  if (self = [super init]) {
    
#line 50
    self->isEmpty__ = isEmpty;
  }
  return self;
}


#line 53
- (jboolean)isEmpty {
  
#line 54
  return isEmpty__;
}

- (void)copyAllFieldsTo:(ImActorModelModulesStateListsStatesActor_OnDialogsChanged *)other {
  [super copyAllFieldsTo:other];
  other->isEmpty__ = isEmpty__;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesStateListsStatesActor_OnDialogsChanged)
