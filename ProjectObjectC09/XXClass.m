//
//  XXClass.m
//  ProjectObjectC09
//
//  Created by lingdian on 17/8/22.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "XXClass.h"

//全局函数  这个是c语言的函数
int getStrLen(char* p){
    int length=0;
    for (;p[length]!=0; length++)
        ;
    return length;
}

@implementation XXClass

-(void)addPeople:(People*)pPeople{
    int length=sizeof(peoples)/sizeof(People*);
    if(index>=length){
        printf("the num of people arrval Max:%d",length);
        return;
    }
    peoples[index]=pPeople;
    index++;
}
-(void)printAllPeople{
    for (int i=0; i<index;i++) {
        [peoples[i] saySelfInfo];
    }
}


-(People*)findPeopleByName:(char*)pName{
    for (int i=0; i<index; i++) {
        BOOL isSame=[self compareStrFrom:peoples[i]->name toStr:pName];
        if(isSame){
            return peoples[i];
        }
    }
    return nil;//nil 就是0
}

-(BOOL) compareStrFrom:(char*)from toStr:(char*)to{
    int fromLen=getStrLen(from);
    int toLen=getStrLen(to);
    if(fromLen==toLen){
        for (int i=0; i<fromLen; i++) {
            if(from[i]!=to[i]){
                return FALSE;
            }
        }
        return TRUE;
    }else{
        return FALSE;
    }
}
@end
