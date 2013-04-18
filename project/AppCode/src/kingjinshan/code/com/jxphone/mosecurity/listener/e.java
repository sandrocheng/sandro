package com.jxphone.mosecurity.listener;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.firewall.a.g;
import com.ijinshan.kinghelper.firewall.dd;
import java.util.HashMap;
import java.util.Map;

public final class e
{
  public static Map a = new HashMap();

  public static g a(Context paramContext, String paramString)
  {
    String str = i.a(paramString);
    Object localObject;
    if (TextUtils.isEmpty(str))
      localObject = null;
    while (true)
    {
      return localObject;
      if (a.containsKey(str))
      {
        localObject = null;
      }
      else
      {
        dd.a(paramContext);
        if (!dd.d())
        {
          localObject = null;
        }
        else
        {
          com.ijinshan.kinghelper.firewall.a.e.a(paramContext);
          Cursor localCursor = com.ijinshan.kinghelper.firewall.a.e.e(str);
          if (localCursor != null)
          {
            if (localCursor.moveToFirst())
            {
              g localg = g.a(localCursor);
              localCursor.close();
              localObject = localg;
            }
            else
            {
              localCursor.close();
            }
          }
          else
            localObject = null;
        }
      }
    }
  }

  public static void a(String paramString)
  {
    a.put(paramString, paramString);
  }

  private static boolean b(String paramString)
  {
    return a.containsKey(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.listener.e
 * JD-Core Version:    0.6.2
 */