package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;

 enum au
{
  au(int arg3)
  {
    super(paramInt, i, j, null);
  }

  public String a(Resources paramResources, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3)
  {
    String str1 = paramResources.getString(2131493961);
    String str3;
    if (!TextUtils.isEmpty(paramString2))
      str3 = str1 + "\t" + paramResources.getString(2131493962, new Object[] { paramString2 });
    for (String str2 = str3 + "\t" + paramString3; ; str2 = str1 + "\t" + paramResources.getString(2131493963, new Object[] { paramLong2 }))
      return str2;
  }

  public void a(Context paramContext, Resources paramResources, r paramr, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3)
  {
    paramr.a.setImageResource(2130837775);
    paramr.c.setVisibility(0);
    paramr.c.setText(paramResources.getString(2131493961));
    paramr.d.setVisibility(0);
    if (!TextUtils.isEmpty(paramString2))
      paramr.d.setText(paramResources.getString(2131493962, new Object[] { paramString2 }));
    while (true)
    {
      return;
      paramr.d.setText(paramResources.getString(2131493963, new Object[] { paramLong2 }));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.au
 * JD-Core Version:    0.6.2
 */