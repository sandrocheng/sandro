package com.avg.tuneup.taskkiller;

import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.support.v4.app.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import com.avg.tuneup.j;
import com.avg.ui.general.a.a;

class e
  implements View.OnClickListener
{
  e(d paramd, Button paramButton, LinearLayout paramLinearLayout, View paramView)
  {
  }

  public void onClick(View paramView)
  {
    ActivityManager localActivityManager;
    if (d.a(this.d).getString(com.avg.a.g.task_killer_close_all).equals(this.a.getText()))
    {
      i locali = this.d.h();
      localActivityManager = (ActivityManager)d.b(this.d).getSystemService("activity");
      if (!j.q())
        break label178;
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(locali);
      View localView = LayoutInflater.from(locali).inflate(com.avg.a.f.dont_show_again, null);
      localBuilder.setTitle(this.d.a(com.avg.a.g.task_killer_close_all));
      localBuilder.setView(localView);
      localBuilder.setMessage(this.d.a(com.avg.a.g.task_killer_are_you_sure_close_all));
      CheckBox localCheckBox = (CheckBox)localView.findViewById(com.avg.a.e.skipCheckbox);
      localBuilder.setPositiveButton(com.avg.a.g.ok, new f(this, localCheckBox, localActivityManager));
      localBuilder.setNegativeButton(com.avg.a.g.cancel, new g(this));
      localBuilder.create().show();
    }
    while (true)
    {
      return;
      label178: d.a(this.d, this.b, this.c, localActivityManager);
      d.c(this.d);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.e
 * JD-Core Version:    0.6.2
 */