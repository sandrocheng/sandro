package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.content.Context;
import android.content.res.Resources;
import android.text.format.Time;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.generic.util.k;

 enum bk
{
  bk(int arg3)
  {
    super(paramInt, i, j, null);
  }

  public String a(Resources paramResources, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3)
  {
    Time localTime = new Time();
    localTime.set(paramLong2.longValue());
    StringBuilder localStringBuilder = new StringBuilder().append(paramResources.getString(2131493925)).append("\t");
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = localTime.format3339(false);
    return paramResources.getString(2131493926, arrayOfObject);
  }

  public void a(Context paramContext, Resources paramResources, r paramr, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3)
  {
    paramr.a.setImageResource(2130837777);
    paramr.c.setVisibility(0);
    paramr.c.setText(paramResources.getString(2131493925));
    paramr.d.setVisibility(0);
    TextView localTextView = paramr.d;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = k.a(paramContext, paramLong2.longValue(), 65553);
    localTextView.setText(paramResources.getString(2131493926, arrayOfObject));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.bk
 * JD-Core Version:    0.6.2
 */