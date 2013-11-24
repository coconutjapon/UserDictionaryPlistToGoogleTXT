//
//  Mavericksで書きだしたユーザー辞書（plist）を、Google日本語入力でImportできる形式に変換するためのアプリ
//  AppDelegate.h
//  kotoeriPlistToGoogleJapaneseIMEForm
//
//  Created by ryuichi on 2013/11/23.
//  Copyright (c) 2013年 heidlr.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *baseTextField;
//@property (weak) IBOutlet NSTextField *convertedTextField;
@property (weak) IBOutlet NSTextField *convertedTextField;


@end
