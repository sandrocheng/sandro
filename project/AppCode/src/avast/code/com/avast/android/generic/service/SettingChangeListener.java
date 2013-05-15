package com.avast.android.generic.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.avast.android.generic.a.a;
import com.avast.android.generic.ad;
import com.avast.android.generic.ag;
import com.avast.android.generic.ah;
import com.avast.android.generic.util.t;
import com.avast.android.generic.util.z;
import java.util.Iterator;
import java.util.Set;

public class SettingChangeListener extends BroadcastReceiver
{
  private void a(com.avast.android.generic.ae paramae, String paramString1, Object paramObject, String paramString2)
  {
    if (paramObject.equals("-DEL-"))
    {
      t.b(paramae.O(), paramString2, paramString1 + " -> deleted");
      paramae.a(paramString1);
    }
    while (true)
    {
      return;
      if (paramObject.equals("-NULL-"))
      {
        t.b(paramae.O(), paramString2, paramString1 + " -> NULL");
        paramae.a(paramString1, null);
      }
      else
      {
        t.b(paramae.O(), paramString2, paramString1 + " -> " + paramObject);
        if ((paramObject instanceof String))
          paramae.a(paramString1, (String)paramObject);
        else if ((paramObject instanceof Boolean))
          paramae.a(paramString1, ((Boolean)paramObject).booleanValue());
        else if ((paramObject instanceof Integer))
          paramae.a(paramString1, ((Integer)paramObject).intValue());
        else if ((paramObject instanceof Long))
          paramae.a(paramString1, ((Long)paramObject).longValue());
        else if ((paramObject instanceof byte[]))
          paramae.a(paramString1, (byte[])paramObject);
      }
    }
  }

  protected void a(Context paramContext, com.avast.android.generic.ae paramae1, com.avast.android.generic.ae paramae2, Bundle paramBundle, Set paramSet, String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.avast.android.generic.action.ACTION_SUITE_SETTINGS_COMMIT");
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
      localIntent.putExtra((String)localIterator.next(), true);
    z.a(paramContext, paramContext.getPackageName(), localIntent);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Context localContext = paramContext.getApplicationContext();
    t.a(localContext, "Received key change event from other component");
    String str1;
    Bundle localBundle;
    Set localSet;
    if (paramIntent.getAction().equals("com.avast.android.generic.action.PROPERTY_CHANGED"))
    {
      str1 = paramIntent.getStringExtra("sourcePackage");
      if ((str1 != null) && (!str1.equals(localContext.getPackageName())))
      {
        localBundle = paramIntent.getExtras();
        localSet = localBundle.keySet();
        boolean bool1 = localBundle.getBoolean("com.avast.android.generic.action.SHARE_SETTINGS", false);
        localSet.remove("com.avast.android.generic.action.SHARE_SETTINGS");
        localSet.remove("sourcePackage");
        if (bool1)
          ((a)ad.a(localContext, a.class)).a(false);
        if (localSet.size() != 0)
          break label122;
      }
    }
    while (true)
    {
      return;
      label122: com.avast.android.generic.ae localae1 = (com.avast.android.generic.ae)ad.a(localContext, ag.class);
      com.avast.android.generic.ae localae2 = (com.avast.android.generic.ae)ad.a(localContext, ah.class);
      boolean bool2 = localae1.u();
      t.b(localContext, str1, "KEY CHANGE START");
      Iterator localIterator = localSet.iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        if ((str2.equals("c2dmowner")) || (str2.equals("c2dmri")))
          a(localae2, str2, localBundle.get(str2), str1);
        else
          a(localae1, str2, localBundle.get(str2), str1);
      }
      t.b(localContext, str1, "KEY CHANGE END");
      localae2.b();
      localae1.b();
      boolean bool3 = localae1.u();
      if ((!bool2) && (bool3))
      {
        Intent localIntent = new Intent();
        localIntent.setAction("com.avast.android.mobilesecurity.app.account.ACCOUNT_CONNECTED");
        com.avast.android.generic.util.ae.a(localContext, localIntent, localContext.getPackageName());
      }
      a(localContext, localae1, localae2, localBundle, localSet, str1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.SettingChangeListener
 * JD-Core Version:    0.6.2
 */