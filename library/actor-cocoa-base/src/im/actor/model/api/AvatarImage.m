//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/AvatarImage.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/AvatarImage.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/AvatarImage.h"
#include "im/actor/model/api/FileLocation.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiAvatarImage () {
 @public
  ImActorModelApiFileLocation *fileLocation_;
  jint width_;
  jint height_;
  jint fileSize_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiAvatarImage, fileLocation_, ImActorModelApiFileLocation *)


#line 19
@implementation ImActorModelApiAvatarImage


#line 26
- (instancetype)initWithImActorModelApiFileLocation:(ImActorModelApiFileLocation *)fileLocation
                                            withInt:(jint)width
                                            withInt:(jint)height
                                            withInt:(jint)fileSize {
  if (self = [super init]) {
    
#line 27
    self->fileLocation_ = fileLocation;
    
#line 28
    self->width_ = width;
    
#line 29
    self->height_ = height;
    
#line 30
    self->fileSize_ = fileSize;
  }
  return self;
}


#line 33
- (instancetype)init {
  return [super init];
}

- (ImActorModelApiFileLocation *)getFileLocation {
  
#line 38
  return self->fileLocation_;
}


#line 41
- (jint)getWidth {
  
#line 42
  return self->width_;
}


#line 45
- (jint)getHeight {
  
#line 46
  return self->height_;
}


#line 49
- (jint)getFileSize {
  
#line 50
  return self->fileSize_;
}


#line 54
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->fileLocation_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:[[ImActorModelApiFileLocation alloc] init]];
  self->width_ = [values getIntWithInt:2];
  self->height_ = [values getIntWithInt:3];
  self->fileSize_ = [values getIntWithInt:4];
}


#line 62
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 63
  if (self->fileLocation_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->fileLocation_];
  [writer writeIntWithInt:2 withInt:self->width_];
  [writer writeIntWithInt:3 withInt:self->height_];
  [writer writeIntWithInt:4 withInt:self->fileSize_];
}

- (NSString *)description {
  NSString *res = @"struct AvatarImage{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"fileLocation=", self->fileLocation_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", width=", self->width_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", height=", self->height_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", fileSize=", self->fileSize_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (void)copyAllFieldsTo:(ImActorModelApiAvatarImage *)other {
  [super copyAllFieldsTo:other];
  other->fileLocation_ = fileLocation_;
  other->width_ = width_;
  other->height_ = height_;
  other->fileSize_ = fileSize_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiAvatarImage)
