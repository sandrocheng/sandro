package com.keniu.security.traffic;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ListView;
import android.widget.Toast;
import com.keniu.security.malware.bz;

final class ah
  implements CompoundButton.OnCheckedChangeListener
{
  ah(TrafficFireWallMainActivity paramTrafficFireWallMainActivity)
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
      q.d(true);
      q.c(false);
      switch (paramCompoundButton.getId())
      {
      default:
        break;
      case 2131231658:
        paramCompoundButton.setClickable(false);
        if (q.j() != paramBoolean)
        {
          TrafficFireWallMainActivity.a(this.a).setChecked(paramBoolean);
          q.a(paramBoolean);
          if (TrafficFireWallMainActivity.a(this.a).isChecked())
            for (int j = 0; j < this.a.a.length; j++)
            {
              f localf2 = this.a.a[j];
              localf2.d = true;
              q.a(localf2.a, false);
            }
          for (int i = 0; i < this.a.a.length; i++)
          {
            f localf1 = this.a.a[i];
            localf1.d = false;
            q.a(localf1.a, true);
            q.b("");
          }
        }
        TrafficFireWallMainActivity.b(this.a).invalidateViews();
        paramCompoundButton.setClickable(true);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ah
 * JD-Core Version:    0.6.2
 */