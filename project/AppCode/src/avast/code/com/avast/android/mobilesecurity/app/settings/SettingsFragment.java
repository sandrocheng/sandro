package com.avast.android.mobilesecurity.app.settings;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler.Callback;
import android.os.Message;
import android.support.v4.a.p;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.app.settings.RecoveryNumberDescriptionDialog;
import com.avast.android.generic.app.settings.SetRecoveryNumberDialog;
import com.avast.android.generic.f.b.a;
import com.avast.android.generic.ui.ChangePasswordDialog;
import com.avast.android.generic.ui.PasswordDialog;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.NextRow;
import com.avast.android.generic.ui.widget.SelectorRow;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.mobilesecurity.app.locking.core.AppLockingService;
import com.avast.android.mobilesecurity.app.webshield.WebshieldService;
import com.avast.android.mobilesecurity.ui.widget.YesNoDialogFragment;
import com.avast.android.mobilesecurity.ui.widget.y;

public class SettingsFragment extends TrackedFragment
  implements Handler.Callback, y
{
  private com.avast.android.mobilesecurity.t a;
  private NextRow b;
  private NextRow c;
  private CheckBoxRow d;
  private CheckBoxRow e;
  private SelectorRow f;
  private CheckBoxRow g;
  private CheckBoxRow h;
  private CheckBoxRow i;
  private CheckBoxRow j;
  private SelectorRow k;
  private NextRow l;
  private NextRow m;
  private Object n;
  private Handler.Callback o;
  private BroadcastReceiver p;
  private Object q;
  private boolean r = false;
  private int s;
  private Bundle t;

  private void a(Bundle paramBundle)
  {
    this.t.putAll(paramBundle);
    this.m.setEnabled(true);
  }

  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (getFragmentManager() != null)
    {
      a("ms-Settings", "setRecoveryNumber", "", 0L);
      if (!paramBoolean1)
        break label64;
      RecoveryNumberDescriptionDialog localRecoveryNumberDescriptionDialog = new RecoveryNumberDescriptionDialog();
      Bundle localBundle1 = new Bundle();
      localBundle1.putBoolean("after_pin_setup", paramBoolean2);
      localRecoveryNumberDescriptionDialog.setArguments(localBundle1);
      localRecoveryNumberDescriptionDialog.show(getFragmentManager(), "dialog_recovery_description");
    }
    while (true)
    {
      return;
      label64: SetRecoveryNumberDialog localSetRecoveryNumberDialog = new SetRecoveryNumberDialog();
      Bundle localBundle2 = new Bundle();
      localBundle2.putBoolean("after_pin_setup", paramBoolean2);
      localSetRecoveryNumberDialog.setArguments(localBundle2);
      localSetRecoveryNumberDialog.show(getFragmentManager(), "dialog_recovery_number");
    }
  }

  private void c()
  {
    if (!TextUtils.isEmpty(this.a.k()))
    {
      NextRow localNextRow2 = this.l;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.a.k();
      localNextRow2.d(getString(2131492992, arrayOfObject2));
    }
    while (true)
    {
      return;
      NextRow localNextRow1 = this.l;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = getString(2131492993);
      localNextRow1.d(getString(2131492992, arrayOfObject1));
    }
  }

  private void d()
  {
    a("ms-Settings", "changePassword", "", 0L);
    if (getFragmentManager() != null)
      ChangePasswordDialog.a(getFragmentManager(), false);
  }

  public String a()
  {
    return "/ms/settings";
  }

  public void a(YesNoDialogFragment paramYesNoDialogFragment)
  {
    ((com.avast.android.mobilesecurity.t)ad.a(getActivity(), com.avast.android.mobilesecurity.t.class)).e(false);
    a("ms-Settings", "notificationAlwaysOn", "no", 0L);
    WebshieldService.a(getActivity());
    ((com.avast.android.generic.notification.j)ad.a(getActivity(), com.avast.android.generic.notification.j.class)).c();
    this.s = 0;
    this.f.c(0);
  }

  public int a_()
  {
    return 2131493364;
  }

  public void b(YesNoDialogFragment paramYesNoDialogFragment)
  {
    this.f.c(this.s);
  }

  public boolean handleMessage(Message paramMessage)
  {
    boolean bool;
    if ((!isAdded()) || (isDetached()))
    {
      bool = false;
      return bool;
    }
    switch (paramMessage.what)
    {
    default:
    case 2131165209:
    case 2131165210:
    }
    while (true)
    {
      bool = true;
      break;
      this.r = true;
      this.d.b(this.a.o());
      this.e.setEnabled(this.a.o());
      this.k.setEnabled(this.a.o());
      if ((this.a.o()) && (this.a.aY()))
        AppLockingService.a(getActivity());
      if ((paramMessage.what == 2131165210) && (this.a.o()) && (TextUtils.isEmpty(this.a.k())) && (a.g(getActivity())))
        a(true, true);
      com.avast.android.generic.util.s locals = (com.avast.android.generic.util.s)ad.a(getActivity(), com.avast.android.generic.util.s.class);
      locals.b(2131165209, this);
      locals.b(2131165210, this);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = ((com.avast.android.mobilesecurity.t)ad.a(getActivity(), com.avast.android.mobilesecurity.t.class));
    if (paramBundle != null);
    for (this.s = paramBundle.getInt("old_notification_type", -1); ; this.s = -1)
    {
      this.p = new d(this);
      p.a(getActivity()).a(this.p, new IntentFilter("com.avast.android.generic.app.settings.ACTION_NUMBER_ENTERED"));
      return;
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903139, paramViewGroup, false);
  }

  public void onDestroy()
  {
    super.onDestroy();
    p.a(getActivity()).a(this.p);
  }

  public void onResume()
  {
    super.onResume();
    ae localae = (ae)ad.a(getActivity(), ae.class);
    this.d.b(localae.o());
    this.h.b(localae.p());
    this.i.b();
    this.f.b(1);
    this.f.b();
    if (this.s == -1)
      this.s = this.f.c();
    c();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("old_notification_type", this.s);
  }

  public void onStart()
  {
    super.onStart();
    Fragment localFragment = getFragmentManager().findFragmentByTag("yesNoDialogFragment");
    if (localFragment != null)
      localFragment.setTargetFragment(this, 0);
  }

  public void onStop()
  {
    super.onStop();
    if ((this.a.o()) && (this.a.aY()))
      AppLockingService.a(getActivity());
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.c = ((NextRow)paramView.findViewById(2131165529));
    this.c.setOnClickListener(new k(this));
    this.b = ((NextRow)paramView.findViewById(2131165530));
    this.b.setOnClickListener(new l(this));
    this.d = ((CheckBoxRow)paramView.findViewById(2131165531));
    this.d.b(this.a.o());
    this.d.a(new m(this));
    this.n = PasswordDialog.a(getActivity(), 2131165213, new r(this));
    ((NextRow)paramView.findViewById(2131165532)).setOnClickListener(new s(this));
    this.o = PasswordDialog.a(getActivity(), 2131165214, new t(this));
    this.q = PasswordDialog.a(getActivity(), 2131165218, new u(this));
    this.k = ((SelectorRow)paramView.findViewById(2131165535));
    this.k.setEnabled(this.a.o());
    this.k.c(this.a.aZ());
    this.l = ((NextRow)paramView.findViewById(2131165534));
    this.l.setOnClickListener(new v(this));
    if (!a.g(getActivity()))
    {
      paramView.findViewById(2131165533).setVisibility(8);
      this.l.setVisibility(8);
    }
    this.e = ((CheckBoxRow)paramView.findViewById(2131165536));
    this.e.b(this.a.aY());
    this.e.setEnabled(this.a.o());
    this.e.a(new e(this));
    this.g = ((CheckBoxRow)paramView.findViewById(2131165538));
    this.g.b(this.a.aW());
    this.g.a(new f(this));
    ((NextRow)paramView.findViewById(2131165542)).setOnClickListener(new g(this));
    this.h = ((CheckBoxRow)paramView.findViewById(2131165459));
    this.h.b(this.a.p());
    this.h.a(new h(this));
    com.avast.android.mobilesecurity.t localt = (com.avast.android.mobilesecurity.t)ad.a(getActivity(), com.avast.android.mobilesecurity.t.class);
    this.f = ((SelectorRow)paramView.findViewById(2131165540));
    this.f.a(2131623942);
    this.f.a(new int[] { 1, 2, 0 });
    this.f.a(new i(this, localt));
    this.t = new Bundle();
    this.m = ((NextRow)paramView.findViewById(2131165543));
    this.m.setOnClickListener(new j(this));
    this.m.setEnabled(false);
    b.a(new w(this, getActivity(), null), new Void[0]);
    this.i = ((CheckBoxRow)paramView.findViewById(2131165537));
    this.i.a(true);
    this.j = ((CheckBoxRow)paramView.findViewById(2131165539));
    this.j.a(true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.SettingsFragment
 * JD-Core Version:    0.6.2
 */