package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.mobilesecurity.app.scanner.ScannerActivity;

 enum bm
{
  bm(int arg3)
  {
    super(paramInt, i, j, null);
  }

  public String a(Resources paramResources, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3)
  {
    return paramResources.getString(2131493929) + "\t" + paramResources.getString(2131493930, new Object[] { paramLong1 }) + "\t" + paramResources.getString(2131493931, new Object[] { paramLong2, paramLong3 });
  }

  public void a(Context paramContext)
  {
    ScannerActivity.call(paramContext);
  }

  public void a(Context paramContext, Resources paramResources, r paramr, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3)
  {
    paramr.a.setImageResource(2130837784);
    paramr.c.setVisibility(0);
    paramr.c.setText(paramResources.getString(2131493929));
    paramr.f.setVisibility(0);
    paramr.f.setText(paramResources.getString(2131493930, new Object[] { paramLong1 }));
    paramr.d.setVisibility(0);
    paramr.d.setText(paramResources.getString(2131493931, new Object[] { paramLong2, paramLong3 }));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.bm
 * JD-Core Version:    0.6.2
 */