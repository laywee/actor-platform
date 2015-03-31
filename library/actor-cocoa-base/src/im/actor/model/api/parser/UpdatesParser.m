//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/parser/UpdatesParser.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/parser/UpdatesParser.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/parser/UpdatesParser.h"
#include "im/actor/model/api/updates/UpdateChatClear.h"
#include "im/actor/model/api/updates/UpdateChatDelete.h"
#include "im/actor/model/api/updates/UpdateConfig.h"
#include "im/actor/model/api/updates/UpdateContactRegistered.h"
#include "im/actor/model/api/updates/UpdateContactsAdded.h"
#include "im/actor/model/api/updates/UpdateContactsRemoved.h"
#include "im/actor/model/api/updates/UpdateEmailContactRegistered.h"
#include "im/actor/model/api/updates/UpdateEmailMoved.h"
#include "im/actor/model/api/updates/UpdateEmailTitleChanged.h"
#include "im/actor/model/api/updates/UpdateEncryptedMessage.h"
#include "im/actor/model/api/updates/UpdateEncryptedRead.h"
#include "im/actor/model/api/updates/UpdateEncryptedReadByMe.h"
#include "im/actor/model/api/updates/UpdateEncryptedReceived.h"
#include "im/actor/model/api/updates/UpdateGroupAvatarChanged.h"
#include "im/actor/model/api/updates/UpdateGroupInvite.h"
#include "im/actor/model/api/updates/UpdateGroupMembersUpdate.h"
#include "im/actor/model/api/updates/UpdateGroupOnline.h"
#include "im/actor/model/api/updates/UpdateGroupTitleChanged.h"
#include "im/actor/model/api/updates/UpdateGroupUserAdded.h"
#include "im/actor/model/api/updates/UpdateGroupUserKick.h"
#include "im/actor/model/api/updates/UpdateGroupUserLeave.h"
#include "im/actor/model/api/updates/UpdateMessage.h"
#include "im/actor/model/api/updates/UpdateMessageDelete.h"
#include "im/actor/model/api/updates/UpdateMessageRead.h"
#include "im/actor/model/api/updates/UpdateMessageReadByMe.h"
#include "im/actor/model/api/updates/UpdateMessageReceived.h"
#include "im/actor/model/api/updates/UpdateMessageSent.h"
#include "im/actor/model/api/updates/UpdateNewDevice.h"
#include "im/actor/model/api/updates/UpdatePhoneMoved.h"
#include "im/actor/model/api/updates/UpdatePhoneTitleChanged.h"
#include "im/actor/model/api/updates/UpdateRemovedDevice.h"
#include "im/actor/model/api/updates/UpdateTyping.h"
#include "im/actor/model/api/updates/UpdateUserAvatarChanged.h"
#include "im/actor/model/api/updates/UpdateUserContactsChanged.h"
#include "im/actor/model/api/updates/UpdateUserEmailAdded.h"
#include "im/actor/model/api/updates/UpdateUserEmailRemoved.h"
#include "im/actor/model/api/updates/UpdateUserLastSeen.h"
#include "im/actor/model/api/updates/UpdateUserLocalNameChanged.h"
#include "im/actor/model/api/updates/UpdateUserNameChanged.h"
#include "im/actor/model/api/updates/UpdateUserOffline.h"
#include "im/actor/model/api/updates/UpdateUserOnline.h"
#include "im/actor/model/api/updates/UpdateUserPhoneAdded.h"
#include "im/actor/model/api/updates/UpdateUserPhoneRemoved.h"
#include "im/actor/model/api/updates/UpdateUserStateChanged.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"


#line 20
@implementation ImActorModelApiParserUpdatesParser

- (ImActorModelNetworkParserUpdate *)readWithInt:(jint)type
                                   withByteArray:(IOSByteArray *)payload {
  
#line 23
  switch (type) {
    case 16:
    
#line 24
    return ImActorModelApiUpdatesUpdateUserAvatarChanged_fromBytesWithByteArray_(payload);
    case 32:
    
#line 25
    return ImActorModelApiUpdatesUpdateUserNameChanged_fromBytesWithByteArray_(payload);
    case 51:
    
#line 26
    return ImActorModelApiUpdatesUpdateUserLocalNameChanged_fromBytesWithByteArray_(payload);
    case 87:
    
#line 27
    return ImActorModelApiUpdatesUpdateUserPhoneAdded_fromBytesWithByteArray_(payload);
    case 88:
    
#line 28
    return ImActorModelApiUpdatesUpdateUserPhoneRemoved_fromBytesWithByteArray_(payload);
    case 89:
    
#line 29
    return ImActorModelApiUpdatesUpdatePhoneTitleChanged_fromBytesWithByteArray_(payload);
    case 101:
    
#line 30
    return ImActorModelApiUpdatesUpdatePhoneMoved_fromBytesWithByteArray_(payload);
    case 96:
    
#line 31
    return ImActorModelApiUpdatesUpdateUserEmailAdded_fromBytesWithByteArray_(payload);
    case 97:
    
#line 32
    return ImActorModelApiUpdatesUpdateUserEmailRemoved_fromBytesWithByteArray_(payload);
    case 98:
    
#line 33
    return ImActorModelApiUpdatesUpdateEmailTitleChanged_fromBytesWithByteArray_(payload);
    case 102:
    
#line 34
    return ImActorModelApiUpdatesUpdateEmailMoved_fromBytesWithByteArray_(payload);
    case 86:
    
#line 35
    return ImActorModelApiUpdatesUpdateUserContactsChanged_fromBytesWithByteArray_(payload);
    case 100:
    
#line 36
    return ImActorModelApiUpdatesUpdateUserStateChanged_fromBytesWithByteArray_(payload);
    case 5:
    
#line 37
    return ImActorModelApiUpdatesUpdateContactRegistered_fromBytesWithByteArray_(payload);
    case 120:
    
#line 38
    return ImActorModelApiUpdatesUpdateEmailContactRegistered_fromBytesWithByteArray_(payload);
    case 40:
    
#line 39
    return ImActorModelApiUpdatesUpdateContactsAdded_fromBytesWithByteArray_(payload);
    case 41:
    
#line 40
    return ImActorModelApiUpdatesUpdateContactsRemoved_fromBytesWithByteArray_(payload);
    case 1:
    
#line 41
    return ImActorModelApiUpdatesUpdateEncryptedMessage_fromBytesWithByteArray_(payload);
    case 55:
    
#line 42
    return ImActorModelApiUpdatesUpdateMessage_fromBytesWithByteArray_(payload);
    case 4:
    
#line 43
    return ImActorModelApiUpdatesUpdateMessageSent_fromBytesWithByteArray_(payload);
    case 18:
    
#line 44
    return ImActorModelApiUpdatesUpdateEncryptedReceived_fromBytesWithByteArray_(payload);
    case 52:
    
#line 45
    return ImActorModelApiUpdatesUpdateEncryptedRead_fromBytesWithByteArray_(payload);
    case 53:
    
#line 46
    return ImActorModelApiUpdatesUpdateEncryptedReadByMe_fromBytesWithByteArray_(payload);
    case 54:
    
#line 47
    return ImActorModelApiUpdatesUpdateMessageReceived_fromBytesWithByteArray_(payload);
    case 19:
    
#line 48
    return ImActorModelApiUpdatesUpdateMessageRead_fromBytesWithByteArray_(payload);
    case 50:
    
#line 49
    return ImActorModelApiUpdatesUpdateMessageReadByMe_fromBytesWithByteArray_(payload);
    case 46:
    
#line 50
    return ImActorModelApiUpdatesUpdateMessageDelete_fromBytesWithByteArray_(payload);
    case 47:
    
#line 51
    return ImActorModelApiUpdatesUpdateChatClear_fromBytesWithByteArray_(payload);
    case 48:
    
#line 52
    return ImActorModelApiUpdatesUpdateChatDelete_fromBytesWithByteArray_(payload);
    case 36:
    
#line 53
    return ImActorModelApiUpdatesUpdateGroupInvite_fromBytesWithByteArray_(payload);
    case 21:
    
#line 54
    return ImActorModelApiUpdatesUpdateGroupUserAdded_fromBytesWithByteArray_(payload);
    case 23:
    
#line 55
    return ImActorModelApiUpdatesUpdateGroupUserLeave_fromBytesWithByteArray_(payload);
    case 24:
    
#line 56
    return ImActorModelApiUpdatesUpdateGroupUserKick_fromBytesWithByteArray_(payload);
    case 44:
    
#line 57
    return ImActorModelApiUpdatesUpdateGroupMembersUpdate_fromBytesWithByteArray_(payload);
    case 38:
    
#line 58
    return ImActorModelApiUpdatesUpdateGroupTitleChanged_fromBytesWithByteArray_(payload);
    case 39:
    
#line 59
    return ImActorModelApiUpdatesUpdateGroupAvatarChanged_fromBytesWithByteArray_(payload);
    case 2:
    
#line 60
    return ImActorModelApiUpdatesUpdateNewDevice_fromBytesWithByteArray_(payload);
    case 37:
    
#line 61
    return ImActorModelApiUpdatesUpdateRemovedDevice_fromBytesWithByteArray_(payload);
    case 6:
    
#line 62
    return ImActorModelApiUpdatesUpdateTyping_fromBytesWithByteArray_(payload);
    case 7:
    
#line 63
    return ImActorModelApiUpdatesUpdateUserOnline_fromBytesWithByteArray_(payload);
    case 8:
    
#line 64
    return ImActorModelApiUpdatesUpdateUserOffline_fromBytesWithByteArray_(payload);
    case 9:
    
#line 65
    return ImActorModelApiUpdatesUpdateUserLastSeen_fromBytesWithByteArray_(payload);
    case 33:
    
#line 66
    return ImActorModelApiUpdatesUpdateGroupOnline_fromBytesWithByteArray_(payload);
    case 42:
    
#line 67
    return ImActorModelApiUpdatesUpdateConfig_fromBytesWithByteArray_(payload);
  }
  @throw [[JavaIoIOException alloc] init];
}

- (instancetype)init {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiParserUpdatesParser)
