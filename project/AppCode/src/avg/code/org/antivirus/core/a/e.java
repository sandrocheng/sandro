package org.antivirus.core.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import org.antivirus.core.EngineSettings;

abstract class e extends v
{
  private LinkedList b = new LinkedList();

  private e(c paramc)
  {
  }

  public boolean a()
  {
    return false;
  }

  public boolean a(Context paramContext)
  {
    Iterator localIterator = this.b.iterator();
    boolean bool1 = true;
    m localm;
    int i;
    boolean bool2;
    if (localIterator.hasNext())
    {
      localm = (m)localIterator.next();
      i = c.a(paramContext, this.i, this.h, e().a(), localm.b);
      bool2 = false;
      if (i != 1);
    }
    while (true)
    {
      return bool2;
      if (i == 2)
      {
        localm.a = (1 + localm.a);
        if (localm.a < 3)
        {
          bool1 = false;
          break;
        }
      }
      localIterator.remove();
      break;
      bool2 = bool1;
    }
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    String str = ((Bundle)paramMessage.obj).getString("desc");
    return a(e(), str);
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    return true;
  }

  public boolean a(d paramd, String paramString)
  {
    if (paramd == d.b)
      if (this.i.getReferrerReceived())
      {
        paramString = null;
        if (paramString != null)
          break label362;
      }
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      this.i.setReferrerReceived(true);
      if ((paramString == null) || (paramString.length() > 200))
      {
        paramString = "";
        break;
      }
      String[] arrayOfString1 = paramString.split("&");
      HashMap localHashMap = new HashMap();
      int i = arrayOfString1.length;
      for (int j = 0; j < i; j++)
      {
        String[] arrayOfString2 = arrayOfString1[j].split("=");
        if (arrayOfString2.length == 2)
          localHashMap.put(arrayOfString2[0], arrayOfString2[1]);
      }
      StringBuilder localStringBuilder = new StringBuilder();
      String str1 = (String)localHashMap.get("utm_source");
      if (TextUtils.isEmpty(str1))
      {
        paramString = "";
        break;
      }
      localStringBuilder.append(str1);
      String str2 = (String)localHashMap.get("utm_medium");
      if (TextUtils.isEmpty(str2))
      {
        paramString = "";
        break;
      }
      localStringBuilder.append("&");
      localStringBuilder.append(str2);
      String str3 = (String)localHashMap.get("utm_campaign");
      if (TextUtils.isEmpty(str3))
      {
        paramString = "";
        break;
      }
      localStringBuilder.append("&");
      localStringBuilder.append(str3);
      localStringBuilder.append("&");
      String str4 = (String)localHashMap.get("utm_term");
      if ((str4 != null) && (!str4.equals("")))
        localStringBuilder.append(str4);
      localStringBuilder.append("&");
      String str5 = (String)localHashMap.get("utm_content");
      if ((str5 != null) && (!str5.equals("")))
        localStringBuilder.append(str5);
      paramString = localStringBuilder.toString();
      break;
      label362: m localm = new m(paramString);
      this.b.addLast(localm);
    }
  }

  public q b()
  {
    return q.c;
  }

  public String d()
  {
    return null;
  }

  protected abstract d e();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.e
 * JD-Core Version:    0.6.2
 */