package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.TextView;

 enum ay
{
  ay(int arg3)
  {
    super(paramInt, i, j, null);
  }

  public String a(Resources paramResources, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3)
  {
    return paramResources.getString(2131493969) + "\t" + paramResources.getString(2131493970, new Object[] { paramString2 });
  }

  public void a(Context paramContext, Resources paramResources, r paramr, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3)
  {
    paramr.a.setImageResource(2130837785);
    paramr.c.setVisibility(0);
    paramr.c.setText(paramResources.getString(2131493969));
    paramr.d.setVisibility(0);
    paramr.d.setText(paramResources.getString(2131493970, new Object[] { paramString2 }));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.ay
 * JD-Core Version:    0.6.2
 */