package com.keniu.security.i;

import android.os.FileObserver;

final class e extends FileObserver
{
  public String a;

  public e(c paramc, String paramString)
  {
    super(paramString, 904);
    this.a = paramString;
  }

  public final void onEvent(int paramInt, String paramString)
  {
    switch (paramInt & 0xFFF)
    {
    default:
    case 512:
    case 256:
    case 128:
    case 8:
    }
    while (true)
    {
      return;
      StringBuilder localStringBuilder4 = c.a(this.a, paramString);
      c.a(this.b).b(localStringBuilder4.toString());
      continue;
      StringBuilder localStringBuilder3 = c.a(this.a, paramString);
      c.a(this.b).a(localStringBuilder3.toString());
      continue;
      if (paramString.toLowerCase().endsWith(".apk"))
      {
        StringBuilder localStringBuilder2 = c.a(this.a, paramString);
        this.b.e.a(this.b, 1, localStringBuilder2.toString());
        continue;
        if (paramString.toLowerCase().endsWith(".apk"))
        {
          StringBuilder localStringBuilder1 = c.a(this.a, paramString);
          this.b.e.a(this.b, 2, localStringBuilder1.toString());
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.e
 * JD-Core Version:    0.6.2
 */