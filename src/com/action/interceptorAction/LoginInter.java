package com.action.interceptorAction;

import com.action.EmployeeAction;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 拦截器动作
 * 1.只在action之前执行 return invocat.invoke();
 * 2.前后都执行
 * 3.只在action之后执行
 */
public class LoginInter extends AbstractInterceptor {
    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {

        if (EmployeeAction.class.equals(actionInvocation.getAction().getClass()))
        {
            return actionInvocation.invoke();

        }else {
            ActionContext ac = ActionContext.getContext();

            Object emp=actionInvocation.getInvocationContext().getSession().get("existEmployee");
            if (emp!=null){
                return actionInvocation.invoke();
            }
        }
        return "INPUT";

    }
}
