package com.keniu.security.protection.ui;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.ijinshan.kpref.t;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.util.av;

public class PreventTheftGuideCompleteActivity extends Activity
{
  Button a;
  Button b;
  View.OnClickListener c = new i(this);

  private void a()
  {
    ag.f(getApplicationContext());
    Context localContext1 = getApplicationContext();
    SharedPreferences.Editor localEditor1 = t.b(localContext1).edit();
    localEditor1.putBoolean(localContext1.getString(2131429236), true);
    localEditor1.commit();
    ag.k(getApplicationContext());
    Context localContext2 = getApplicationContext();
    SharedPreferences.Editor localEditor2 = t.b(localContext2).edit();
    localEditor2.putBoolean(localContext2.getString(2131429240), true);
    localEditor2.commit();
    String str = av.c(getApplicationContext());
    if ((str != null) && (!str.equals("-1")))
      ag.h(getApplicationContext(), str);
  }

  private void b()
  {
    ag.a(this, 2131429280);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903161);
    ((TextView)findViewById(2131230727)).setText(getString(2131429275));
    if (paramBundle == null)
      a.a(this, "pto", "9", "");
    this.a = ((Button)findViewById(2131231242));
    this.b = ((Button)findViewById(2131231245));
    this.a.setOnClickListener(this.c);
    this.b.setOnClickListener(this.c);
  }

  public void onStart()
  {
    super.onStart();
    ag.f(getApplicationContext());
    Context localContext1 = getApplicationContext();
    SharedPreferences.Editor localEditor1 = t.b(localContext1).edit();
    localEditor1.putBoolean(localContext1.getString(2131429236), true);
    localEditor1.commit();
    ag.k(getApplicationContext());
    Context localContext2 = getApplicationContext();
    SharedPreferences.Editor localEditor2 = t.b(localContext2).edit();
    localEditor2.putBoolean(localContext2.getString(2131429240), true);
    localEditor2.commit();
    String str = av.c(getApplicationContext());
    if ((str != null) && (!str.equals("-1")))
      ag.h(getApplicationContext(), str);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.PreventTheftGuideCompleteActivity
 * JD-Core Version:    0.6.2
 */