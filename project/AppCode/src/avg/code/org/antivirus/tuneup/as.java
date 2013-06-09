package org.antivirus.tuneup;

import android.text.InputFilter;
import android.text.Spanned;

public final class as
  implements InputFilter
{
  private int b = 1;
  private int c;

  public as(DataPlanSettingsActivity paramDataPlanSettingsActivity, int paramInt)
  {
    this.c = paramInt;
  }

  public final CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    int i = 1;
    try
    {
      int j = Integer.parseInt(paramSpanned.toString() + paramCharSequence.toString());
      int k = this.b;
      int m = this.c;
      if (m > k)
        if ((j < k) || (j > m));
      while (i != 0)
      {
        localObject = null;
        return localObject;
        i = 0;
        continue;
        if ((j < m) || (j > k))
          i = 0;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        Object localObject = "";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.as
 * JD-Core Version:    0.6.2
 */