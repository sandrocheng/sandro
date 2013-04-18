package com.keniu.security.process;

import android.view.View;
import android.view.View.OnClickListener;
import com.keniu.security.a;
import com.keniu.security.d.e;
import java.util.Iterator;
import java.util.List;

final class x
  implements View.OnClickListener
{
  x(ProcessWhiteSettingActivity paramProcessWhiteSettingActivity)
  {
  }

  public final void onClick(View paramView)
  {
    StringBuilder localStringBuilder = new StringBuilder("");
    String str1 = this.a.f.G();
    str1.length();
    if (str1.length() > 0)
      str1 = str1 + "#";
    Iterator localIterator = this.a.a.iterator();
    String str2 = str1;
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      if (locale.a())
        localStringBuilder.append("#" + locale.b());
      int j;
      do
      {
        j = str2.length();
        str2 = str2.replaceAll("#" + locale.b() + "#", "#");
      }
      while (j != str2.length());
    }
    int i = str2.length() - 1;
    if (i > 0)
      localStringBuilder.append(str2.substring(0, i).toString());
    this.a.f.a(localStringBuilder.toString());
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.x
 * JD-Core Version:    0.6.2
 */