package com.avast.android.mobilesecurity.filebrowser;

import com.avast.android.generic.filebrowser.f;
import java.util.Comparator;

class l
  implements Comparator
{
  l(k paramk)
  {
  }

  public int a(f paramf1, f paramf2)
  {
    int i;
    if (paramf1.e())
      if (!paramf2.e())
        i = -2147483648;
    while (true)
    {
      return i;
      i = paramf1.a().compareToIgnoreCase(paramf2.a());
      continue;
      if (paramf2.e())
        i = 2147483647;
      else
        i = paramf1.a().compareToIgnoreCase(paramf2.a());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.filebrowser.l
 * JD-Core Version:    0.6.2
 */