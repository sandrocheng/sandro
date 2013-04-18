package com.keniu.security.software;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.PopupWindow;

final class ak
  implements View.OnClickListener
{
  ak(aj paramaj, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    if (SoftwareManager2.C(this.b.c) != null)
    {
      SoftwareManager2.C(this.b.c).dismiss();
      SoftwareManager2.a(this.b.c, null);
    }
    while (true)
    {
      return;
      View localView = SoftwareManager2.B(this.b.c).inflate(2130903291, null);
      Button localButton1 = (Button)localView.findViewById(2131231612);
      Button localButton2 = (Button)localView.findViewById(2131231614);
      Button localButton3 = (Button)localView.findViewById(2131231615);
      Button localButton4 = (Button)localView.findViewById(2131231617);
      localButton1.setOnClickListener(new al(this));
      localButton2.setOnClickListener(new am(this));
      localButton3.setOnClickListener(new an(this));
      localButton4.setOnClickListener(new ao(this));
      if (this.a.equalsIgnoreCase("appCate"))
      {
        localView.findViewById(2131231613).setVisibility(0);
        localView.findViewById(2131231616).setVisibility(0);
        localButton1.setVisibility(0);
        localButton4.setVisibility(0);
      }
      SoftwareManager2.a(this.b.c, new PopupWindow(localView, -2, -2));
      SoftwareManager2.C(this.b.c).setTouchable(true);
      SoftwareManager2.C(this.b.c).showAsDropDown(paramView, 0, 5);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.ak
 * JD-Core Version:    0.6.2
 */