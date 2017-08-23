//
//  XXClass.h
//  ProjectObjectC09
//
//  Created by lingdian on 17/8/22.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"
@interface XXClass : NSObject
{
    int index;
    People* peoples[100];

}

-(void)addPeople:(People*)pPeople;
-(void)printAllPeople;
-(People*)findPeopleByName:(char*)pName;
@end
