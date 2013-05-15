package com.avast.android.mobilesecurity.engine.internal;

import android.content.Context;
import android.os.Bundle;
import com.avast.android.generic.g.e;
import com.avast.android.generic.g.g;
import com.avast.android.generic.internet.a.a;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.engine.ad;
import com.avast.android.mobilesecurity.engine.af;
import com.avast.android.mobilesecurity.engine.al;
import com.avast.android.mobilesecurity.engine.y;
import java.net.URI;

public class c
{
  public static Bundle a(Context paramContext, Integer paramInteger, Bundle paramBundle)
  {
    if (paramBundle == null)
      paramBundle = new Bundle();
    al localal = com.avast.android.mobilesecurity.engine.i.a(paramContext, null);
    if ((localal != null) && (localal.a != null))
      paramBundle.putString("vps_version", localal.a);
    y localy = n.d(paramContext, paramInteger);
    if (localy != null)
    {
      URI localURI = localy.a();
      if (localURI != null)
        paramBundle.putString("communityiq_server_uri", localURI.toString());
    }
    return paramBundle;
  }

  public static boolean a(Context paramContext, Integer paramInteger, ad paramad, Bundle paramBundle)
  {
    if (paramBundle == null)
      paramBundle = new Bundle();
    int i;
    switch (d.a[paramad.a.ordinal()])
    {
    default:
      i = -1;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    }
    while (true)
    {
      if (i != -1)
        paramBundle.putInt("update_check_result", i);
      return a(e.e, paramContext, paramInteger, paramBundle);
      i = g.a.a();
      continue;
      i = g.b.a();
      continue;
      i = g.c.a();
      continue;
      i = g.d.a();
      continue;
      i = g.e.a();
      continue;
      i = g.f.a();
      continue;
      i = g.g.a();
      continue;
      i = g.h.a();
    }
  }

  public static boolean a(Context paramContext, Integer paramInteger, af paramaf, Bundle paramBundle)
  {
    if (paramBundle == null)
      paramBundle = new Bundle();
    int i;
    switch (d.b[paramaf.a.ordinal()])
    {
    default:
      i = -1;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      if (i != -1)
        paramBundle.putInt("update_result", i);
      return a(e.f, paramContext, paramInteger, paramBundle);
      i = com.avast.android.generic.g.i.b.a();
      continue;
      i = com.avast.android.generic.g.i.a.a();
      continue;
      i = com.avast.android.generic.g.i.c.a();
      continue;
      i = com.avast.android.generic.g.i.d.a();
      continue;
      i = com.avast.android.generic.g.i.e.a();
      continue;
      i = com.avast.android.generic.g.i.f.a();
      continue;
      i = com.avast.android.generic.g.i.g.a();
    }
  }

  public static boolean a(e parame, Context paramContext, Integer paramInteger, Bundle paramBundle)
  {
    m.c("sendCommunityIqEvent");
    return a.b(parame, paramContext, a(paramContext, paramInteger, paramBundle));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.c
 * JD-Core Version:    0.6.2
 */