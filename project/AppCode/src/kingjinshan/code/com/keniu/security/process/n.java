package com.keniu.security.process;

import com.keniu.security.d.e;
import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;

final class n
  implements Comparator
{
  private n(ProcessManagerActivity paramProcessManagerActivity, byte paramByte)
  {
  }

  private int a(e parame1, e parame2)
  {
    int i = parame1.c;
    int j = parame2.c;
    int k;
    if (i == j)
      if (ProcessManagerActivity.v(this.a) == 1)
        k = Collator.getInstance(Locale.CHINA).compare(parame1.c(), parame2.c());
    while (true)
    {
      return k;
      if (ProcessManagerActivity.v(this.a) == -1)
        k = Collator.getInstance(Locale.CHINA).compare(parame2.c(), parame1.c());
      else
        k = i - j;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.n
 * JD-Core Version:    0.6.2
 */