package com.avast.android.mobilesecurity.app.trafficinfo;

import com.avast.android.mobilesecurity.app.manager.a.a.g;
import java.util.Comparator;

class i
  implements Comparator
{
  g a;
  int b;

  public i(int paramInt)
  {
    this.b = paramInt;
    this.a = new g();
  }

  public int a(h paramh1, h paramh2)
  {
    int i;
    switch (this.b)
    {
    default:
      i = 0;
      if (i != 0)
        break;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    for (int j = this.a.a(paramh1, paramh2); ; j = i * -1)
    {
      return j;
      i = (int)(paramh1.a + paramh1.b - paramh2.a - paramh2.b);
      break;
      i = (int)(paramh1.c + paramh1.o - paramh2.c - paramh2.o);
      break;
      i = (int)(paramh1.p + paramh1.q - paramh2.p - paramh2.q);
      break;
      i = (int)(paramh1.r + paramh1.s - paramh2.r - paramh2.s);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.i
 * JD-Core Version:    0.6.2
 */