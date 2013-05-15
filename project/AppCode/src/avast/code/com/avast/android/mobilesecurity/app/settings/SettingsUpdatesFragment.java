package com.avast.android.mobilesecurity.app.settings;

import android.os.Bundle;
import android.os.Handler.Callback;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.NextRow;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.util.s;
import com.avast.android.mobilesecurity.service.UpdateService;
import com.avast.android.mobilesecurity.t;
import com.avast.android.mobilesecurity.ui.widget.ConnectionTypeButtons;

public class SettingsUpdatesFragment extends TrackedFragment
  implements Handler.Callback
{
  private CheckBoxRow a;
  private ConnectionTypeButtons b;
  private boolean c = false;
  private ProgressBar d;

  private void d()
  {
    b.a(new aa(this, getActivity(), null), new Void[0]);
  }

  public String a()
  {
    return "/ms/settings/updates";
  }

  public int a_()
  {
    return 2131493364;
  }

  public void c()
  {
    ((s)ad.a(getActivity(), s.class)).a(2131165223, this);
    if (!this.c)
    {
      UpdateService.a(getActivity());
      this.c = true;
      this.d.setVisibility(0);
    }
  }

  public boolean handleMessage(Message paramMessage)
  {
    boolean bool1 = isAdded();
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = isDetached();
      bool2 = false;
      if (!bool3);
    }
    else
    {
      return bool2;
    }
    switch (paramMessage.what)
    {
    default:
    case 2131165223:
    }
    while (true)
    {
      bool2 = true;
      break;
      d();
      this.d.setVisibility(4);
      this.c = false;
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903142, paramViewGroup, false);
  }

  public void onResume()
  {
    super.onResume();
    this.a.b();
    this.b.b();
    this.b.setEnabled(this.a.c());
    d();
    if ((getArguments() != null) && ("true".equals(getArguments().getString("forceRunManualUpdate"))))
      c();
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    t localt = (t)ad.a(getActivity(), t.class);
    this.d = ((ProgressBar)paramView.findViewById(2131165549));
    this.d.setVisibility(4);
    this.a = ((CheckBoxRow)paramView.findViewById(2131165550));
    this.b = ((ConnectionTypeButtons)paramView.findViewById(2131165551));
    this.a.a(localt.aC());
    this.a.a(new x(this));
    CheckBoxRow localCheckBoxRow = this.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = getString(2131493802);
    localCheckBoxRow.d(getString(2131493801, arrayOfObject));
    ((NextRow)paramView.findViewById(2131165552)).setOnClickListener(new y(this));
    this.b.a(new z(this));
    this.b.a(true, true, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.SettingsUpdatesFragment
 * JD-Core Version:    0.6.2
 */