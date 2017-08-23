//
//  People.h
//  ProjectObjectC09
//
//  Created by lingdian on 17/8/22.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject
{
@public
    int age;
    BOOL sex;
    char name[100];
}

-(void)setAge:(int)pAge andSex:(BOOL)pSex andName:(char*)name;
-(void)saySelfInfo;
@end
