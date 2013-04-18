package com.keniu.security.traffic;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ListView;
import android.widget.Toast;
import com.keniu.security.malware.bz;

final class ai
  implements CompoundButton.OnCheckedChangeListener
{
  ai(TrafficFireWallMainActivity paramTrafficFireWallMainActivity)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (!e.j.e())
    {
      Toast.makeText(this.a, this.a.getString(2131428221), 1000).show();
      paramCompoundButton.setChecked(false);
    }
    while (true)
    {
      return;
      q.c(true);
      q.d(false);
      switch (paramCompoundButton.getId())
      {
      default:
        break;
      case 2131231659:
        paramCompoundButton.setClickable(false);
        if (q.k() != paramBoolean)
        {
          TrafficFireWallMainActivity.c(this.a).setChecked(paramBoolean);
          q.b(paramBoolean);
          f[] arrayOff = e.c(this.a.getApplicationContext(), false);
          if (TrafficFireWallMainActivity.c(this.a).isChecked())
            for (int j = 0; j < arrayOff.length; j++)
              arrayOff[j].c = true;
          for (int i = 0; i < arrayOff.length; i++)
          {
            arrayOff[i].c = false;
            q.a("");
          }
        }
        TrafficFireWallMainActivity.b(this.a).invalidateViews();
        paramCompoundButton.setClickable(true);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ai
 * JD-Core Version:    0.6.2
 */