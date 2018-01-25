//
//  main.m
//  Debug
//
//  Created by NBCB on 2018/1/19.
//  Copyright © 2018年 NBCB. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /**
         结论：
         1、不可变对象：copy操作, 生成的对象是不可变的；mutableCopy, 生成的对象是可变的。
         2、可变对象：  copy操作, 生成的对象是不可变的，但是深拷贝；mutableCopy, 生成的对象是可变的，深拷贝。
         */
        
        NSString *string = [[NSString alloc] init];
        NSLog(@"\n string:%p\n string mutableCopy:%p\n string copy:%p",
              string,
              [string mutableCopy],
              [string copy]);
        NSLog(@"\n string class %@ \n string copy class %@ \n string mutableCopy class:%@",   NSStringFromClass([string class]),
              NSStringFromClass([[string copy] class]),
              NSStringFromClass([[string mutableCopy] class]));
        
        NSMutableString *mutableString = [[NSMutableString alloc] init];
        NSLog(@"\n mutableString:%p\n mutableString mutableCopy:%p\n mutableString copy:%p",
              mutableString,
              [mutableString mutableCopy],
              [mutableString copy]);
        NSLog(@"\n mutableString class: %@ \n mutableString copy class: %@ \n mutableString mutableCopy class:%@",   NSStringFromClass([mutableString class]),
              NSStringFromClass([[mutableString copy] class]),
              NSStringFromClass([[mutableString mutableCopy] class]));
        
        NSArray *array = [[NSArray alloc] init];
        NSLog(@"\n array:%p\n array mutableCopy:%p\n array copy:%p",
              array,
              [array mutableCopy],
              [array copy]);
        NSLog(@"\n array class: %@ \n array copy class: %@ \n array mutableCopy class:%@",   NSStringFromClass([array class]),
              NSStringFromClass([[array copy] class]),
              NSStringFromClass([[array mutableCopy] class]));
        
        NSMutableArray *mutableArr = [[NSMutableArray alloc] init];
        NSLog(@"\n mutableArr:%p\n mutableArr mutableCopy:%p\n mutableArr copy:%p",
              mutableArr,
              [mutableArr mutableCopy],
              [mutableArr copy]);
        NSLog(@"\n mutableArr class: %@ \n mutableArr copy class: %@ \n mutableArr mutableCopy class:%@",   NSStringFromClass([mutableArr class]),
              NSStringFromClass([[mutableArr copy] class]),
              NSStringFromClass([[mutableArr mutableCopy] class]));
        
        NSDictionary *dic = [[NSDictionary alloc] init];
        NSLog(@"\n dic:%p\n dic mutableCopy:%p\n dic copy:%p",
              dic,
              [dic mutableCopy],
              [dic copy]);
        NSLog(@"\n dic class: %@ \n dic copy class: %@ \n dic mutableCopy class:%@",   NSStringFromClass([dic class]),
              NSStringFromClass([[dic copy] class]),
              NSStringFromClass([[dic mutableCopy] class]));
        
        NSMutableDictionary *mutableDic = [[NSMutableDictionary alloc] init];
        NSLog(@"\n mutableDic:%p\n mutableDic mutableCopy:%p\n mutableDic copy:%p",
              mutableDic,
              [mutableDic mutableCopy],
              [mutableDic copy]);
        NSLog(@"\n dimutableDic class: %@ \n mutableDic copy class: %@ \n mutableDic mutableCopy class:%@",
              NSStringFromClass([mutableDic class]),
              NSStringFromClass([[mutableDic copy] class]),
              
              NSStringFromClass([[mutableDic mutableCopy] class]));
    }
    return 0;
}

