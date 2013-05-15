package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.TextView;

 enum ai
{
  ai(int arg3)
  {
    super(paramInt, i, j, null);
  }

  public String a(Resources paramResources, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramResources.getString(2131493946)).append("\t");
    Object[] arrayOfObject = new Object[1];
    if (paramLong2.longValue() == 1L);
    for (String str = paramResources.getString(2131493695); ; str = paramResources.getString(2131493694))
    {
      arrayOfObject[0] = str;
      return paramResources.getString(2131493947, arrayOfObject);
    }
  }

  public void a(Context paramContext, Resources paramResources, r paramr, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3)
  {
    paramr.a.setImageResource(2130837772);
    paramr.c.setVisibility(0);
    paramr.c.setText(paramResources.getString(2131493946));
    paramr.d.setVisibility(0);
    TextView localTextView = paramr.d;
    Object[] arrayOfObject = new Object[1];
    if (paramLong2.longValue() == 1L);
    for (String str = paramResources.getString(2131493695); ; str = paramResources.getString(2131493694))
    {
      arrayOfObject[0] = str;
      localTextView.setText(paramResources.getString(2131493947, arrayOfObject));
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.ai
 * JD-Core Version:    0.6.2
 */