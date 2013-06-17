package a.a;

public final class j
{
  public static boolean a(c paramc)
  {
    int i = paramc.a();
    int j = 0;
    while (true)
    {
      int k;
      int m;
      boolean bool;
      if (j < i)
      {
        k = j + 1;
        m = 0xFF & paramc.a(j);
        if (m < 128)
          break label303;
        if ((m < 194) || (m > 244))
          bool = false;
      }
      int n;
      while (true)
      {
        return bool;
        if (k >= i)
        {
          bool = false;
        }
        else
        {
          n = k + 1;
          int i1 = 0xFF & paramc.a(k);
          if ((i1 < 128) || (i1 > 191))
          {
            bool = false;
          }
          else
          {
            if (m <= 223)
              break label297;
            if (n >= i)
            {
              bool = false;
            }
            else
            {
              j = n + 1;
              int i2 = 0xFF & paramc.a(n);
              if ((i2 < 128) || (i2 > 191))
              {
                bool = false;
              }
              else
              {
                if (m <= 239)
                {
                  if (((m != 224) || (i1 >= 160)) && ((m != 237) || (i1 <= 159)))
                    break;
                  bool = false;
                  continue;
                }
                if (j >= i)
                {
                  bool = false;
                }
                else
                {
                  n = j + 1;
                  int i3 = 0xFF & paramc.a(j);
                  if ((i3 < 128) || (i3 > 191))
                  {
                    bool = false;
                  }
                  else
                  {
                    if (((m != 240) || (i1 >= 144)) && ((m != 244) || (i1 <= 143)))
                      break label297;
                    bool = false;
                    continue;
                    bool = true;
                  }
                }
              }
            }
          }
        }
      }
      label297: j = n;
      continue;
      label303: j = k;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.j
 * JD-Core Version:    0.6.2
 */