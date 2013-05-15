package com.google.a;

public class u
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
          j = k;
        else if ((m < 194) || (m > 244))
          bool = false;
      }
      else
      {
        int i3;
        while (true)
        {
          return bool;
          if (k >= i)
          {
            bool = false;
          }
          else
          {
            int n = k + 1;
            int i1 = 0xFF & paramc.a(k);
            if ((i1 < 128) || (i1 > 191))
            {
              bool = false;
            }
            else
            {
              if (m <= 223)
              {
                j = n;
                break;
              }
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
                    i3 = j + 1;
                    int i4 = 0xFF & paramc.a(j);
                    if ((i4 < 128) || (i4 > 191))
                    {
                      bool = false;
                    }
                    else
                    {
                      if (((m != 240) || (i1 >= 144)) && ((m != 244) || (i1 <= 143)))
                        break label309;
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
        label309: j = i3;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.u
 * JD-Core Version:    0.6.2
 */