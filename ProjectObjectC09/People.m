//
//  People.m
//  ProjectObjectC09
//
//  Created by lingdian on 17/8/22.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "People.h"

@implementation People


//获取字符串长度  ＊＊＊如果方法不在h头文件中 声明  那么就是私有函数＊＊＊
-(int)getStrLength:(char*)str{
    int length=0;
    for (; str[length]!=0; length++) {
        ;
    }
    return length;
}
//内存拷贝  ＊＊＊如果方法不在h头文件中 声明  那么就是私有函数＊＊＊
-(void)copyCharArrayFrom:(char*) from to:(char*)to{
    int strFromLength=[self getStrLength:from];
    for (int i=0; i<strFromLength; i++) {
        to[i]=from[i];
    }
    
}
//设置名称
-(void)setName:(char*)pName{
    int length =[self getStrLength:pName];
    int maxStrLen=sizeof(name)/sizeof(char);
    if(length>=maxStrLen){//如果输入的字符长度超过了 数组最大长度 那么就断言了
        assert(0);//断言是c语言中的函数 如果要用尖括号
    }

    [self copyCharArrayFrom:pName to:self->name];
    
}

-(void)setAge:(int)pAge andSex:(BOOL)pSex andName:(char*)pName{
    sex=pSex;
    age=pAge;
    [self setName:pName];

}
-(void)saySelfInfo{
    printf("age:%d,sex:%d,name:%s\n",age,sex,name);
}


@end
