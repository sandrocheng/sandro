package com.tencent.onesecurity.dao;

/**
 * 用户信息
 * @author AllanZhang
 *
 */
public final class UserInfoMode {
	
    /**
     * 普通用户（未开启试用，为开通过会员）
     * 
     */
    public static final int STANDARD_USER        = 0;
    
    /**
     * 会员用户（已经开通会员，而且没有过期）
     * 
     */
    public static final int MEMBER_USER          = 1;
    
    /**
     * 会员过期用户（已经开通会员，已经有过期）
     * 
     */
    public static final int MEMBER_OUT_OF_DATE_USER          = 2;
	
    
    /**
     * 试用用户（已经开启试用的普通用户）
     * 
     */
    public static final int TRIAL_USER     = 3;
    
    /**
     * 试用过期用户（已经开启试用，并且过期的普通用户）
     * 
     */
    public static final int TRIAL_OUT_OF_DATE_USER    = 4;

    /**
     * 预开通VIP用户（用于定制用户，暂未使用）
     * 
     */
    public static final int MEMBER_PREOPEN_USER    = 5;
    
   
}