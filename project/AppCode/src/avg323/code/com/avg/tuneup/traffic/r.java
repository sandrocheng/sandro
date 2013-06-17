package com.avg.tuneup.traffic;

import android.text.InputFilter;
import android.text.Spanned;

public class r
  implements InputFilter
{
  private double b;
  private double c;

  public r(a parama, double paramDouble1, double paramDouble2)
  {
    this.b = paramDouble1;
    this.c = paramDouble2;
  }

  private boolean a(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    boolean bool = true;
    if (paramDouble2 > paramDouble1)
      if ((paramDouble3 < paramDouble1) || (paramDouble3 > paramDouble2));
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if ((paramDouble3 < paramDouble2) || (paramDouble3 > paramDouble1))
        bool = false;
    }
  }

  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    try
    {
      double d = Double.parseDouble(paramSpanned.toString() + paramCharSequence.toString());
      boolean bool = a(this.b, this.c, d);
      if (bool)
      {
        localObject = null;
        return localObject;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localNumberFormatException);
        Object localObject = "";
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.r
 * JD-Core Version:    0.6.2
 */