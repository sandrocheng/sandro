package com.antivirus.widget;

import android.os.Parcelable;
import com.avg.widget.model.plugin.WidgetPlugin;
import java.util.Comparator;

class b
  implements Comparator
{
  b(a parama)
  {
  }

  public int a(Parcelable paramParcelable1, Parcelable paramParcelable2)
  {
    WidgetPlugin localWidgetPlugin1 = (WidgetPlugin)paramParcelable1;
    WidgetPlugin localWidgetPlugin2 = (WidgetPlugin)paramParcelable2;
    int i;
    if (localWidgetPlugin1.j() < localWidgetPlugin2.j())
      i = -1;
    while (true)
    {
      return i;
      if (localWidgetPlugin1.j() == localWidgetPlugin2.j())
        i = 0;
      else
        i = 1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.b
 * JD-Core Version:    0.6.2
 */