package com.avast.android.generic.h;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.ah;
import com.avast.android.generic.util.g;
import com.avast.android.generic.util.t;

public class h extends l
{
  public void a(Context paramContext, String paramString, Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT < 8);
    while (true)
    {
      return;
      if ((((ae)ad.a(paramContext, ag.class)).u()) && (TextUtils.isEmpty(((ae)ad.a(paramContext, ah.class)).F())))
        try
        {
          g.a(paramContext, true);
        }
        catch (Exception localException)
        {
          t.a("AvastComms", "Can not refresh C2DM ID", localException);
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.h.h
 * JD-Core Version:    0.6.2
 */