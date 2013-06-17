package com.antivirus.ui.callmessagefilter;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.o;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import com.antivirus.ui.callmessagefilter.fragment.CallMessageTabFragment;
import com.antivirus.ui.callmessagefilter.fragment.n;

public class CallMessageFilterActivity extends com.antivirus.ui.a
{
  private void k()
  {
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131230738);
    localLinearLayout.setVisibility(0);
    findViewById(2131230739).setVisibility(8);
    Button localButton1 = new Button(this, null, 2131099716);
    localButton1.setBackgroundResource(2130837701);
    localButton1.setOnClickListener(new e(this));
    Button localButton2 = new Button(this, null, 2131099716);
    localButton2.setBackgroundResource(2130837700);
    localButton2.setOnClickListener(new f(this));
    localLinearLayout.addView(localButton2);
    localLinearLayout.addView(localButton1);
  }

  private n l()
  {
    return ((CallMessageTabFragment)f().a(2131230871)).a();
  }

  private void m()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(getString(2131296752));
    localBuilder.setIcon(2130837716);
    String[] arrayOfString = u();
    CallMessageTabFragment localCallMessageTabFragment = (CallMessageTabFragment)f().a(2131230871);
    int i = localCallMessageTabFragment.H().H().a();
    localBuilder.setSingleChoiceItems(new com.avg.ui.general.b.e(this, i, arrayOfString), i, new g(this, localCallMessageTabFragment));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
    n localn = l();
    if (localn == null)
      localn = n.a;
    switch (h.a[localn.ordinal()])
    {
    default:
      com.avg.toolkit.f.a.a();
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      com.avg.toolkit.c.a.a(this, "call_message_blocker", "call_message_blocker_filter_on_calls_tab", null, 0);
      continue;
      com.avg.toolkit.c.a.a(this, "call_message_blocker", "call_message_blocker_filter_on_messages_tab", null, 0);
    }
  }

  private String[] u()
  {
    n localn = l();
    return getResources().getStringArray(localn.a());
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903065);
    a(true, 2130837538, 2130837539, getString(2131296733), false);
    k();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.CallMessageFilterActivity
 * JD-Core Version:    0.6.2
 */