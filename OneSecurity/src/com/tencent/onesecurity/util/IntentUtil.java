
package com.tencent.onesecurity.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/**
 * Intent公共类
 * 
 * @version 1.0
 * @author LionLiu
 */
public class IntentUtil {

    /**
     * 跳转网页(打开浏览器)
     * 
     * @param jumpUrl
     * @version 1.0
     * @author LionLiu
     */
    public static void jumpToUrl(Context context, String jumpUrl) {
        //TODO 当目标浏览器Crash的时候，One Security可能会ANR
        if (null != jumpUrl) {
            Intent intent = new Intent();
            intent.setAction(Intent.ACTION_VIEW);
            intent.addCategory(Intent.CATEGORY_BROWSABLE);
            intent.setData(Uri.parse(jumpUrl));
            context.startActivity(intent);
        }
    }
}
