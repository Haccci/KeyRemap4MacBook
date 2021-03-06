/* -*- Mode: objc; Coding: utf-8; indent-tabs-mode: nil; -*- */

#import "OtherInformationStore.h"

@implementation OtherInformationStore

- (IBAction) copy:(id)sender
{
  NSPasteboard* pboard = [NSPasteboard generalPasteboard];
  NSMutableString* string = [[NSMutableString new] autorelease];

  [string appendFormat:@"version: %@\n", version_];
  [string appendFormat:@"applicationName: %@\n", applicationname_];
  [string appendFormat:@"inputsourceName: %@\n", inputsourcename_];

  [pboard clearContents];
  [pboard writeObjects:[NSArray arrayWithObject:string]];
}

- (void) setVersion
{
  version_ = [[client_ proxy] preferencepane_version];
  if (! version_) {
    version_ = @"-.-.-";
  }
  [label_version_ setStringValue:version_];
}

- (void) setApplicationName:(NSString*)name
{
  if (! name) {
    name = @"---";
  }

  if ([name isEqualToString:@"org.pqrs.KeyRemap4MacBook.KeyDump"]) {
    return;
  }

  applicationname_ = name;
  [label_applicationname_ setStringValue:name];
}

- (void) setInputSourceName:(NSString*)name
{
  if (! name) {
    name = @"---";
  }

  inputsourcename_ = name;
  [label_inputsourcename_ setStringValue:name];
}

@end
