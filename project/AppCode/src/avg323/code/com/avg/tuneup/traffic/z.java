package com.avg.tuneup.traffic;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.ArrayList;

class z
  implements AdapterView.OnItemClickListener
{
  z(y paramy)
  {
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((y.a(this.a) != null) && (y.b(this.a) != null) && (paramLong < y.a(this.a).size()))
    {
      com.avg.ui.general.c.b localb = (com.avg.ui.general.c.b)y.a(this.a).get((int)paramLong);
      if (localb != null)
        y.b(this.a).a(localb.c);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.z
 * JD-Core Version:    0.6.2
 */