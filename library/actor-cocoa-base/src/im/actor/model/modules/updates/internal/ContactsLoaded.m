//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/internal/ContactsLoaded.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/internal/ContactsLoaded.java"

#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/ResponseGetContacts.h"
#include "im/actor/model/modules/updates/internal/ContactsLoaded.h"

@interface ImActorModelModulesUpdatesInternalContactsLoaded () {
 @public
  ImActorModelApiRpcResponseGetContacts *contacts_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesInternalContactsLoaded, contacts_, ImActorModelApiRpcResponseGetContacts *)


#line 8
@implementation ImActorModelModulesUpdatesInternalContactsLoaded


#line 11
- (instancetype)initWithImActorModelApiRpcResponseGetContacts:(ImActorModelApiRpcResponseGetContacts *)contacts {
  if (self = [super init]) {
    
#line 12
    self->contacts_ = contacts;
  }
  return self;
}


#line 15
- (ImActorModelApiRpcResponseGetContacts *)getContacts {
  
#line 16
  return contacts_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesUpdatesInternalContactsLoaded *)other {
  [super copyAllFieldsTo:other];
  other->contacts_ = contacts_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesInternalContactsLoaded)
