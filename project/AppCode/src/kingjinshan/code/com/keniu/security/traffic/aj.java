package com.keniu.security.traffic;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.io.PrintStream;

final class aj
  implements AdapterView.OnItemClickListener
{
  aj(TrafficFireWallMainActivity paramTrafficFireWallMainActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    System.out.println(paramView + " " + paramInt + " " + paramLong);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.aj
 * JD-Core Version:    0.6.2
 */