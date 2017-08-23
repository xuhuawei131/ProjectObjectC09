//
//  main.m
//  ProjectObjectC09
//
//  Created by lingdian on 17/8/22.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"
#import "XXClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        People* people=[People new];
        [people setAge:20 andSex:TRUE andName:"xiaoHong"];
        [people saySelfInfo];
        
        People* people2=[People new];
        [people2 setAge:23 andSex:FALSE andName:"xiaoQiang"];
        
        XXClass* xxClass=[XXClass new];
        [xxClass addPeople:people];
        [xxClass addPeople:people2];
        
        
        [xxClass printAllPeople];
        
        People* findPeople=[xxClass findPeopleByName:"xiaoHong"];
        if(findPeople==nil){//nil 其实是(void*)0 就是一个空的指针地址
            printf("查无此人\n");
        }else{
        printf("找到这个人了:%s\n",findPeople->name);
        }
    }
    return 0;
}
