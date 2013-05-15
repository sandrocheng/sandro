package com.avast.android.mobilesecurity.app.manager.a.a;

import java.text.Collator;
import java.util.Comparator;

public class g
  implements Comparator
{
  private Collator a = Collator.getInstance();

  private int a(String paramString1, String paramString2)
  {
    boolean bool1 = paramString1.startsWith("*** END ***");
    boolean bool2 = paramString2.startsWith("*** END ***");
    int i;
    if (((bool1) && (bool2)) || ((!bool1) && (!bool2)))
      i = this.a.compare(paramString1, paramString2);
    while (true)
    {
      return i;
      if ((bool1) && (!bool2))
        i = 1;
      else if ((!bool1) && (bool2))
        i = -1;
      else
        i = this.a.compare(paramString1, paramString2);
    }
  }

  public int a(d paramd1, d paramd2)
  {
    int i = 1;
    int j;
    label19: int k;
    if (paramd1.l != null)
    {
      j = i;
      if (paramd2.l == null)
        break label51;
      if ((j == 0) || (i == 0))
        break label56;
      k = a(paramd1.l, paramd2.l);
    }
    while (true)
    {
      return k;
      j = 0;
      break;
      label51: i = 0;
      break label19;
      label56: if ((j != 0) && (i == 0))
        k = a(paramd1.l, paramd2.i);
      else if ((j == 0) && (i != 0))
        k = a(paramd1.i, paramd2.l);
      else
        k = this.a.compare(paramd1.i, paramd2.i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.a.g
 * JD-Core Version:    0.6.2
 */