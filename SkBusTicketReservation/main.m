//
//  main.m
//  SkBusTicketReservation
//
//  Created by Student P_04 on 28/11/16.
//  Copyright © 2016 Siddharth. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *myArray = [[NSMutableArray alloc]init];
        [myArray addObject:@"SEAT1"];
        [myArray addObject:@"SEAT2"];
        [myArray addObject:@"SEAT3"];
        [myArray addObject:@"SEAT4"];
        [myArray addObject:@"SEAT5"];
        [myArray addObject:@"SEAT6"];
        [myArray addObject:@"SEAT7"];
        [myArray addObject:@"SEAT8"];
        [myArray addObject:@"SEAT9"];
        [myArray addObject:@"SEAT10"];
        
        
//        NSMutableArray *tempArrayOne = [[NSMutableArray alloc]init];
//        
        NSMutableArray *tempArray =[myArray mutableCopy];
//        
        
        NSUInteger number,seatNumber;
        
        for (NSArray *myObject in myArray)
        {
            NSLog(@"%@",myObject);
        }
        
        NSLog(@"Howmany Seats Would You Like to Book?");
        scanf("%ld",&number);
        NSLog(@"Enter the Seats Number: ");
        int j=1;
        for(int i=0;i<number;i++)
        {
            scanf("%ld",&seatNumber);
            NSMutableArray *myMutable =[myArray objectAtIndex:seatNumber-1];
            
            NSLog(@" Seats %@ is Booked",myMutable);
            if(j<=number)
            [tempArray removeObjectAtIndex:seatNumber-j];
            j++;
        }
        

        NSLog(@"Remainig seats Are....");
        NSLog(@"%@",tempArray);
        
        
        


        

        
    }
    return 0;
}
