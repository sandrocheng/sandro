package com.ijinshan.bootmanager.activity;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings.Secure;
import android.widget.Button;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.keniu.security.sync.l;
import java.util.List;

final class f extends Handler
{
  f(AutoBootMangerActivity paramAutoBootMangerActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    }
    while (true)
    {
      return;
      AutoBootMangerActivity.a(this.a, true);
      AutoBootMangerActivity.q(this.a).check(2131230924);
      AutoBootMangerActivity.d(this.a).setVisibility(0);
      AutoBootMangerActivity.r(this.a).setVisibility(8);
      AutoBootMangerActivity.s(this.a).setVisibility(8);
      AutoBootMangerActivity.a(this.a, new com.ijinshan.bootmanager.a.a(this.a, AutoBootMangerActivity.b(this.a)));
      this.a.getListView().setAdapter(AutoBootMangerActivity.a(this.a));
      this.a.getListView().setVisibility(0);
      if (!AutoBootMangerActivity.g(this.a))
        AutoBootMangerActivity.c(this.a).setText(this.a.getString(2131428755));
      for (this.a.c = i.b; ; this.a.c = i.a)
      {
        if (AutoBootMangerActivity.t(this.a) != null)
        {
          if (AutoBootMangerActivity.t(this.a).isShowing())
            AutoBootMangerActivity.t(this.a).dismiss();
          AutoBootMangerActivity.a(this.a, null);
        }
        AutoBootMangerActivity.a(this.a, AutoBootMangerActivity.b(this.a).size());
        AutoBootMangerActivity.b(this.a, AutoBootMangerActivity.i(this.a).size());
        RadioButton localRadioButton5 = AutoBootMangerActivity.v(this.a);
        AutoBootMangerActivity localAutoBootMangerActivity5 = this.a;
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = Integer.valueOf(AutoBootMangerActivity.u(this.a));
        localRadioButton5.setText(localAutoBootMangerActivity5.getString(2131428744, arrayOfObject5));
        RadioButton localRadioButton6 = AutoBootMangerActivity.x(this.a);
        AutoBootMangerActivity localAutoBootMangerActivity6 = this.a;
        Object[] arrayOfObject6 = new Object[1];
        arrayOfObject6[0] = Integer.valueOf(AutoBootMangerActivity.w(this.a));
        localRadioButton6.setText(localAutoBootMangerActivity6.getString(2131428745, arrayOfObject6));
        this.a.a();
        break;
        AutoBootMangerActivity.c(this.a).setText(this.a.getString(2131428754));
      }
      if (AutoBootMangerActivity.t(this.a) == null)
        AutoBootMangerActivity.a(this.a, new ProgressDialog(this.a));
      AutoBootMangerActivity.t(this.a).setCancelable(false);
      l.a(this.a, AutoBootMangerActivity.t(this.a), 2131428749);
      continue;
      if ((AutoBootMangerActivity.p(this.a).size() != 1) || (!AutoBootMangerActivity.i(this.a).containsAll(AutoBootMangerActivity.p(this.a))))
      {
        AutoBootMangerActivity.b(this.a).removeAll(AutoBootMangerActivity.p(this.a));
        AutoBootMangerActivity.i(this.a).addAll(AutoBootMangerActivity.p(this.a));
        AutoBootMangerActivity.a(this.a, AutoBootMangerActivity.b(this.a).size());
        AutoBootMangerActivity.b(this.a, AutoBootMangerActivity.i(this.a).size());
      }
      AutoBootMangerActivity.a(this.a).notifyDataSetChanged();
      if (!AutoBootMangerActivity.g(this.a))
      {
        AutoBootMangerActivity.c(this.a).setText(this.a.getString(2131428755));
        this.a.c = i.b;
      }
      if (AutoBootMangerActivity.b(this.a).size() == 0)
      {
        AutoBootMangerActivity.d(this.a).setText(this.a.getString(2131428746));
        AutoBootMangerActivity.e(this.a).setVisibility(4);
        AutoBootMangerActivity.f(this.a).setVisibility(4);
      }
      if (AutoBootMangerActivity.t(this.a) != null)
      {
        if (AutoBootMangerActivity.t(this.a).isShowing())
          AutoBootMangerActivity.t(this.a).dismiss();
        AutoBootMangerActivity.a(this.a, null);
      }
      if (AutoBootMangerActivity.p(this.a).size() == 1)
        Toast.makeText(this.a, this.a.getString(2131428759), 0).show();
      if (((AutoBootMangerActivity.p(this.a) == null) || (AutoBootMangerActivity.p(this.a).size() == 0)) && (!AutoBootMangerActivity.y(this.a)))
      {
        if (Settings.Secure.getInt(this.a.getContentResolver(), "adb_enabled", 0) <= 0)
          AutoBootMangerActivity.z(this.a);
        Toast.makeText(this.a, this.a.getString(2131428761), 0).show();
      }
      AutoBootMangerActivity.p(this.a).clear();
      RadioButton localRadioButton3 = AutoBootMangerActivity.v(this.a);
      AutoBootMangerActivity localAutoBootMangerActivity3 = this.a;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(AutoBootMangerActivity.u(this.a));
      localRadioButton3.setText(localAutoBootMangerActivity3.getString(2131428744, arrayOfObject3));
      RadioButton localRadioButton4 = AutoBootMangerActivity.x(this.a);
      AutoBootMangerActivity localAutoBootMangerActivity4 = this.a;
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(AutoBootMangerActivity.w(this.a));
      localRadioButton4.setText(localAutoBootMangerActivity4.getString(2131428745, arrayOfObject4));
      continue;
      if (AutoBootMangerActivity.t(this.a) == null)
        AutoBootMangerActivity.a(this.a, new ProgressDialog(this.a));
      l.a(this.a, AutoBootMangerActivity.t(this.a), 2131428750);
      AutoBootMangerActivity.t(this.a).setCancelable(false);
      continue;
      if (!AutoBootMangerActivity.b(this.a).containsAll(AutoBootMangerActivity.p(this.a)))
      {
        AutoBootMangerActivity.i(this.a).removeAll(AutoBootMangerActivity.p(this.a));
        AutoBootMangerActivity.b(this.a).addAll(AutoBootMangerActivity.p(this.a));
        AutoBootMangerActivity.a(this.a, AutoBootMangerActivity.b(this.a).size());
        AutoBootMangerActivity.b(this.a, AutoBootMangerActivity.i(this.a).size());
      }
      AutoBootMangerActivity.a(this.a).notifyDataSetChanged();
      if (AutoBootMangerActivity.t(this.a) != null)
      {
        if (AutoBootMangerActivity.t(this.a).isShowing())
          AutoBootMangerActivity.t(this.a).dismiss();
        AutoBootMangerActivity.a(this.a, null);
      }
      if (AutoBootMangerActivity.p(this.a).size() == 1)
        Toast.makeText(this.a, this.a.getString(2131428760), 0).show();
      if (((AutoBootMangerActivity.p(this.a) == null) || (AutoBootMangerActivity.p(this.a).size() == 0)) && (!AutoBootMangerActivity.y(this.a)))
      {
        if (Settings.Secure.getInt(this.a.getContentResolver(), "adb_enabled", 0) <= 0)
          AutoBootMangerActivity.z(this.a);
        Toast.makeText(this.a, this.a.getString(2131428762), 0).show();
      }
      AutoBootMangerActivity.p(this.a).clear();
      RadioButton localRadioButton1 = AutoBootMangerActivity.v(this.a);
      AutoBootMangerActivity localAutoBootMangerActivity1 = this.a;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(AutoBootMangerActivity.u(this.a));
      localRadioButton1.setText(localAutoBootMangerActivity1.getString(2131428744, arrayOfObject1));
      RadioButton localRadioButton2 = AutoBootMangerActivity.x(this.a);
      AutoBootMangerActivity localAutoBootMangerActivity2 = this.a;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(AutoBootMangerActivity.w(this.a));
      localRadioButton2.setText(localAutoBootMangerActivity2.getString(2131428745, arrayOfObject2));
      if (AutoBootMangerActivity.i(this.a).size() == 0)
      {
        AutoBootMangerActivity.d(this.a).setText(this.a.getString(2131428756));
        AutoBootMangerActivity.f(this.a).setVisibility(0);
        AutoBootMangerActivity.e(this.a).setVisibility(0);
        continue;
        Long localLong = Long.valueOf(paramMessage.getData().getLong("package_size"));
        ((com.ijinshan.bootmanager.b.a)paramMessage.obj).c(AutoBootMangerActivity.a(this.a, localLong.longValue()));
        AutoBootMangerActivity.a(this.a).notifyDataSetChanged();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.f
 * JD-Core Version:    0.6.2
 */