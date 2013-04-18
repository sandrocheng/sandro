package com.keniu.security.protection.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import com.ijinshan.kpref.CheckBoxPreference;
import com.ijinshan.kpref.PreferenceScreen;
import com.keniu.security.util.BasePreferenceActivity;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.lang.reflect.Field;

public class PreventTheftSettingActivity extends BasePreferenceActivity
{
  private static final String a = "PreventTheftSettingActivity";
  private static final int b = 1;
  private static final int c = 2;
  private static final int d = 3;
  private PreferenceScreen e;
  private EditText f = null;

  private static void b(DialogInterface paramDialogInterface, boolean paramBoolean)
  {
    try
    {
      Field localField = paramDialogInterface.getClass().getSuperclass().getDeclaredField("mShowing");
      localField.setAccessible(true);
      localField.set(paramDialogInterface, Boolean.valueOf(paramBoolean));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Log.e("PreventTheftSettingActivity", localException.getMessage());
    }
  }

  private void c()
  {
    PreferenceScreen localPreferenceScreen1 = (PreferenceScreen)a(getString(2131429237));
    localPreferenceScreen1.f(2131429308);
    localPreferenceScreen1.a(new q(this));
    this.e = ((PreferenceScreen)a(getString(2131429238)));
    this.e.a(new v(this));
    if (!ag.b())
    {
      CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)a(getString(2131429242));
      ((PreferenceScreen)a("kn_protection_setting_preferences")).d(localCheckBoxPreference);
    }
    ((CheckBoxPreference)a(getString(2131429234))).a(new ad(this, getString(2131427865), getString(2131429363)));
    PreferenceScreen localPreferenceScreen2 = (PreferenceScreen)a(getString(2131429243));
    localPreferenceScreen2.f(2131429261);
    localPreferenceScreen2.a(new w(this));
  }

  private Dialog d()
  {
    View localView = LayoutInflater.from(this).inflate(2130903280, null);
    localView.findViewById(2131231573).setVisibility(8);
    localView.findViewById(2131231574).setVisibility(8);
    TextView localTextView1 = (TextView)localView.findViewById(2131231569);
    TextView localTextView2 = (TextView)localView.findViewById(2131231571);
    TextView localTextView3 = (TextView)localView.findViewById(2131231567);
    localTextView3.setText(2131428864);
    localTextView3.setTextColor(-16777216);
    localTextView1.setText(2131428865);
    localTextView1.setTextColor(-16777216);
    localTextView2.setText(2131428866);
    localTextView2.setTextColor(-16777216);
    aq localaq = new aq(this, (byte)0).a(2131429370).a(localView);
    localaq.a(false);
    localaq.a(2131428994, new x(this, localView));
    localaq.b(2131428995, new y(this));
    ap localap = localaq.c();
    localap.setOnDismissListener(new z(this));
    return localap;
  }

  private Dialog e()
  {
    View localView = LayoutInflater.from(this).inflate(2130903157, null);
    aq localaq = new aq(this, (byte)0).a(2131429311).a(localView);
    localaq.a(new aa(this));
    ((ImageButton)localView.findViewById(2131231224)).setOnClickListener(new ab(this));
    this.f = ((EditText)localView.findViewById(2131231223));
    this.f.setImeOptions(2);
    this.f.setInputType(146);
    localaq.a(2131428994, new ac(this));
    localaq.b(2131428995, new r(this));
    ap localap = localaq.c();
    localap.setOnDismissListener(new s(this));
    return localap;
  }

  private Dialog f()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427865);
    localaq.b(2131429297);
    localaq.a(getString(2131427864), new t(this));
    ap localap = localaq.c();
    localap.setOnDismissListener(new u(this));
    return localap;
  }

  protected void onCreate(Bundle paramBundle)
  {
    setTitle(2131429224);
    super.a(paramBundle, 2131034126);
    PreferenceScreen localPreferenceScreen1 = (PreferenceScreen)a(getString(2131429237));
    localPreferenceScreen1.f(2131429308);
    localPreferenceScreen1.a(new q(this));
    this.e = ((PreferenceScreen)a(getString(2131429238)));
    this.e.a(new v(this));
    if (!ag.b())
    {
      CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)a(getString(2131429242));
      ((PreferenceScreen)a("kn_protection_setting_preferences")).d(localCheckBoxPreference);
    }
    ((CheckBoxPreference)a(getString(2131429234))).a(new ad(this, getString(2131427865), getString(2131429363)));
    PreferenceScreen localPreferenceScreen2 = (PreferenceScreen)a(getString(2131429243));
    localPreferenceScreen2.f(2131429261);
    localPreferenceScreen2.a(new w(this));
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    default:
      localObject = super.onCreateDialog(paramInt);
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return localObject;
      View localView2 = LayoutInflater.from(this).inflate(2130903280, null);
      localView2.findViewById(2131231573).setVisibility(8);
      localView2.findViewById(2131231574).setVisibility(8);
      TextView localTextView1 = (TextView)localView2.findViewById(2131231569);
      TextView localTextView2 = (TextView)localView2.findViewById(2131231571);
      TextView localTextView3 = (TextView)localView2.findViewById(2131231567);
      localTextView3.setText(2131428864);
      localTextView3.setTextColor(-16777216);
      localTextView1.setText(2131428865);
      localTextView1.setTextColor(-16777216);
      localTextView2.setText(2131428866);
      localTextView2.setTextColor(-16777216);
      aq localaq3 = new aq(this, (byte)0).a(2131429370).a(localView2);
      localaq3.a(false);
      localaq3.a(2131428994, new x(this, localView2));
      localaq3.b(2131428995, new y(this));
      localObject = localaq3.c();
      ((ap)localObject).setOnDismissListener(new z(this));
      continue;
      View localView1 = LayoutInflater.from(this).inflate(2130903157, null);
      aq localaq2 = new aq(this, (byte)0).a(2131429311).a(localView1);
      localaq2.a(new aa(this));
      ((ImageButton)localView1.findViewById(2131231224)).setOnClickListener(new ab(this));
      this.f = ((EditText)localView1.findViewById(2131231223));
      this.f.setImeOptions(2);
      this.f.setInputType(146);
      localaq2.a(2131428994, new ac(this));
      localaq2.b(2131428995, new r(this));
      localObject = localaq2.c();
      ((Dialog)localObject).setOnDismissListener(new s(this));
      continue;
      aq localaq1 = new aq(this, (byte)0);
      localaq1.a(2131427865);
      localaq1.b(2131429297);
      localaq1.a(getString(2131427864), new t(this));
      localObject = localaq1.c();
      ((Dialog)localObject).setOnDismissListener(new u(this));
    }
  }

  protected void onStart()
  {
    super.onStart();
    this.e.a(ag.a(this));
    if (this.f != null)
    {
      String str = ag.b(getApplicationContext());
      if (str != null)
      {
        this.f.setText(str);
        ag.c(getApplicationContext(), null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.PreventTheftSettingActivity
 * JD-Core Version:    0.6.2
 */