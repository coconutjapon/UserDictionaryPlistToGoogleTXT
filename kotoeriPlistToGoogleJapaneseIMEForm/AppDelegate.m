//
//  AppDelegate.m
//  kotoeriPlistToGoogleJapaneseIMEForm
//
//  Created by ryuichi on 2013/11/23.
//  Copyright (c) 2013年 heidlr.com. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{

}

- (IBAction)convertButton:(id)sender {
    [self convertToPlainTextWithPlistFile:self.baseTextField.stringValue];
}

- (void)convertToPlainTextWithPlistFile:(NSString *)plistPath {
    
    // plistファイルを取得してArrayに変換
    NSArray *array = [NSArray arrayWithContentsOfFile:plistPath];
    NSLog(@"array : %@",array);
    
    // "よみ","変換言葉","説明"の順にテキストを作成
    NSMutableString *convertedText = [[NSMutableString alloc] init];
    
    for (NSDictionary *dic in array) {
        [convertedText appendFormat:@"\"%@\",\"%@\",\"無品詞\"",
         dic[@"shortcut"],
         dic[@"phrase"]];
        [convertedText appendString:@"\n"];
    }
    
    self.convertedTextField.stringValue = convertedText;
//    NSLog(@"\n\n%@",convertedText);
}

@end
