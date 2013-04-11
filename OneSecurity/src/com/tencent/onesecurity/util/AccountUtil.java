
package com.tencent.onesecurity.util;

import android.accounts.Account;
import android.accounts.AccountManager;

import com.tencent.onesecurity.MainApplication;

/**
 * 手机保存的账号信息 工具类
 * 
 * @version
 * @author LionLiu
 */
public class AccountUtil {

    private final static String GOOLE_TYPE = "com.google";

    /**
     * 获取用户绑定的google账号, 如多个，返回第一个
     * 
     * @return 绑定的google账号,如未绑定，返回null
     */
    public static String getGoogleAccount() {
        AccountManager manager = AccountManager.get(MainApplication.getContext());
        Account[] accounts = manager.getAccountsByType(GOOLE_TYPE);
        if (null == accounts || 0 >= accounts.length) {
            return null;
        }
        
        return accounts[0].name;
    }
}
