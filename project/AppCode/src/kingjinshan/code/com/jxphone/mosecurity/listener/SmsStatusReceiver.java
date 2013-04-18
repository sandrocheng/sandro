package com.jxphone.mosecurity.listener;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.widget.Toast;
import com.jxphone.mosecurity.logic.a.j;
import com.jxphone.mosecurity.logic.h;

public class SmsStatusReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    int i = paramIntent.getIntExtra("_id", 0);
    boolean bool = paramIntent.getBooleanExtra("isDummy", false);
    Uri localUri = (Uri)paramIntent.getParcelableExtra("uri");
    if (str.equals("sms_send_action"))
      if (i > 0)
        h.a(paramContext, bool).a(i, getResultCode(), 1);
    label252: 
    while (true)
    {
      Log.d(getClass().getSimpleName(), "SEND " + getResultCode());
      while (true)
      {
        return;
        if (localUri == null)
          break label252;
        ContentValues localContentValues = new ContentValues();
        if (getResultCode() == -1)
          localContentValues.put("status", Integer.valueOf(-1));
        for (int j = 2131429610; ; j = 2131429611)
        {
          paramContext.getContentResolver().update(localUri, localContentValues, null, null);
          Toast.makeText(paramContext, j, 1).show();
          break;
          localContentValues.put("status", Integer.valueOf(128));
        }
        if (str.equals("sms_delivered_action"))
        {
          if (i > 0)
            h.a(paramContext, bool).a(i, getResultCode(), 2);
          Log.d(getClass().getSimpleName(), "DELIVERED " + getResultCode());
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.listener.SmsStatusReceiver
 * JD-Core Version:    0.6.2
 */