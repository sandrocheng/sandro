package com.jxphone.a.a;

import android.text.TextUtils;

public final class e
{
  public long a = 0L;
  public int b = 0;

  static e a(String paramString)
  {
    Object localObject;
    if (TextUtils.isEmpty(paramString))
      localObject = null;
    while (true)
    {
      return localObject;
      String[] arrayOfString = paramString.split("\r\n");
      e locale = new e();
      if ((arrayOfString != null) && (arrayOfString.length >= 3))
      {
        if (!arrayOfString[0].equals("[common]"))
        {
          localObject = null;
        }
        else if (arrayOfString[1].startsWith("result="))
        {
          locale.b = Integer.parseInt(arrayOfString[1].substring("result=".length()));
          if (!arrayOfString[2].startsWith("time="))
            break label121;
          locale.a = Integer.parseInt(arrayOfString[2].substring("time=".length()));
        }
      }
      else
      {
        localObject = locale;
        continue;
        localObject = null;
        continue;
        label121: localObject = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.a.a.e
 * JD-Core Version:    0.6.2
 */