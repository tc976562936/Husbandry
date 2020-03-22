//
//  MHost.h
//  MovieSchool
//
//  Created by EDZ on 2019/8/2.
//  Copyright © 2019 EDZ. All rights reserved.
//

#ifndef MHost_h
#define MHost_h


#define LJHOST @"http://123.56.206.138:8088/edu"

//登录接口
#define LOGIN_URL [NSString stringWithFormat:@"%@/user/userLogin",LJHOST]

//退出登录接口
#define LOGOUT_URL [NSString stringWithFormat:@"%@/user/outLogin",LJHOST]

//修改密码接口
#define UPDATE_PASSWORD_URL [NSString stringWithFormat:@"%@/user/updatePassword",LJHOST]

//课程
#define curse_teacher_html @"http://123.56.206.138:8088/edu/view/html/curse_teacher"

//作业
#define work_manage_html @"http://123.56.206.138:8088/edu/view/html/work_manage"

//日安排
#define machineroom_day_html @"http://123.56.206.138:8088/edu/view/html/machineroom_day"

//沟通
#define communicate_manage_html @"http://123.56.206.138:8088/edu/view/html/communicate_manage"

#endif /* MHost_h */
