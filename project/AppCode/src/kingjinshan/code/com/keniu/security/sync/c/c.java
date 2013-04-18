package com.keniu.security.sync.c;

import android.content.Context;
import android.os.Handler;
import com.keniu.security.sync.a.a;
import com.keniu.security.sync.d.d.a.jn;
import com.keniu.security.sync.l;
import com.keniu.security.sync.r;

public final class c extends g
{
  private String a;
  private int d;

  public c(Handler paramHandler, Context paramContext, String paramString, int paramInt)
  {
    super(paramContext, paramContext.getString(2131429579), paramHandler);
    this.a = paramString;
    this.d = paramInt;
  }

  protected final Integer a(String[] paramArrayOfString)
  {
    super.a(paramArrayOfString);
    String str1 = paramArrayOfString[0];
    Integer localInteger;
    if (str1.startsWith("login"))
      try
      {
        new a();
        str1 = a.a(str1.substring(1 + str1.indexOf("#"), str1.lastIndexOf("#")), str1.substring(1 + str1.lastIndexOf("#")), l.c(this.b), "0.0.0.001").n();
        this.c.sendMessage(this.c.obtainMessage(7, str1));
        if ((str1.equals("")) || (str1.startsWith("login")))
        {
          localInteger = Integer.valueOf(10001);
          return localInteger;
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          localInteger = Integer.valueOf(-1);
        }
      }
    String str2 = this.a;
    if (r.a(str2, str1, this.d));
    for (int i = 0; ; i = -1)
    {
      localInteger = Integer.valueOf(i);
      break;
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
      if (paramInteger.intValue() == 0)
        this.c.sendEmptyMessage(0);
    }
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.c
 * JD-Core Version:    0.6.2
 */