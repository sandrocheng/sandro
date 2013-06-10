package org.antivirus.core.scanners;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

final class ab
{
  public ArrayList a = null;
  public ArrayList b = null;

  public ab(aa paramaa, ArrayList paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0));
    while (true)
    {
      return;
      Locale localLocale = Locale.US;
      this.a = new ArrayList();
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        if (!TextUtils.isEmpty(str1))
        {
          String str2 = str1.toLowerCase(localLocale);
          if (str2.contains("+"))
          {
            if (this.b == null)
              this.b = new ArrayList();
            List localList = Arrays.asList(str2.split("\\+"));
            this.b.add(localList);
          }
          else
          {
            this.a.add(str2);
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.ab
 * JD-Core Version:    0.6.2
 */