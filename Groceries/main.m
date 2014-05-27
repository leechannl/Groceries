//
//  main.m
//  Groceries
//
//  Created by mm on 5/27/14.
//  Copyright (c) 2014 mm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];

        NSArray *names = [nameString componentsSeparatedByString:@"\n"];

        for (NSString *n in names) {
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];

            if (r.location != NSNotFound) {
                NSLog(@"%@", n);
            }
        }
    }
    return 0;
}

