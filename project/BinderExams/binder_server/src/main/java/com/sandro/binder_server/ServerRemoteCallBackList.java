package com.sandro.binder_server;

import android.os.IInterface;
import android.os.RemoteCallbackList;
import android.util.Log;

public class ServerRemoteCallBackList<T extends IInterface> extends RemoteCallbackList<T> {

    /**
     * 当客户端进程死掉的时候会收到这个回调
     * @param callback
     * @param cookie
     */
    @Override
    public void onCallbackDied(T callback, Object cookie) {
        super.onCallbackDied(callback, cookie);
        Log.e(MyService.TAG,"[ServerRemoteCallBackList] onCallbackDied callback : " + callback + " cookie : " + cookie);
    }
}
