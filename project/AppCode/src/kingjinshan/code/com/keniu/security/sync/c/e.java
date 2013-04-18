package com.keniu.security.sync.c;

import android.content.Context;
import android.os.Handler;
import com.keniu.security.sync.a.a;
import com.keniu.security.sync.d.d.a.jn;
import com.keniu.security.sync.l;
import com.keniu.security.sync.r;
import com.keniu.security.sync.y;
import java.util.List;

public final class e extends g
{
  private List a;

  public e(Context paramContext, String paramString, Handler paramHandler)
  {
    super(paramContext, paramString, paramHandler);
  }

  protected final Integer a(String[] paramArrayOfString)
  {
    super.a(paramArrayOfString);
    String str1 = paramArrayOfString[0];
    String str2 = paramArrayOfString[1];
    if (str2.startsWith("login"));
    while (true)
    {
      Integer localInteger;
      try
      {
        new a();
        str2 = a.a(str2.substring(1 + str2.indexOf("#"), str2.lastIndexOf("#")), str2.substring(1 + str2.lastIndexOf("#")), l.c(this.b), "0.0.0.001").n();
        this.c.sendMessage(this.c.obtainMessage(7, str2));
        if ((str2.equals("")) || (str2.startsWith("login")))
        {
          localInteger = Integer.valueOf(10001);
          return localInteger;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        localInteger = Integer.valueOf(-1);
        continue;
      }
      int i;
      if ("contact".equals(str1))
      {
        i = 0;
        label163: if (!y.b(i))
          break label202;
        this.a = y.a(i);
      }
      while (true)
      {
        if (this.a != null)
          break label230;
        localInteger = Integer.valueOf(-1);
        break;
        i = 1;
        break label163;
        label202: this.a = r.a(str1, str2);
        y.a(this.a, i);
      }
      label230: if (this.a.size() == 0)
        localInteger = Integer.valueOf(-2);
      else
        localInteger = Integer.valueOf(0);
    }
  }

  protected final void a(Integer paramInteger)
  {
    super.a(paramInteger);
    if (paramInteger.intValue() == -1)
      this.c.sendEmptyMessage(-1);
    while (true)
    {
      return;
      if (paramInteger.intValue() == -2)
        this.c.sendEmptyMessage(-2);
      else if (paramInteger.intValue() == 0)
        this.c.sendMessage(this.c.obtainMessage(0, this.a));
    }
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.e
 * JD-Core Version:    0.6.2
 */