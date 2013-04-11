package com.tencent.onesecurity.ui.observer;

import android.database.ContentObserver;
import android.os.Handler;

/**
 * 通讯录观察者
 *
 * @author LionLiu
 */
public class ContactsObserver extends ContentObserver{

    // 用于更新UI线程
    private Handler _handler;
    private final static int MESSAGE_CONTACT_CHANGE = 1;
    
    public ContactsObserver(Handler handler) {
        super(handler);
        _handler = handler;
    }

    @Override
    public void onChange(boolean selfChange) {
        _handler.obtainMessage(MESSAGE_CONTACT_CHANGE).sendToTarget();
    }
}
