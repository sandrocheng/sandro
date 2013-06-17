package com.antivirus.ui.antitheft;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import com.antivirus.m;
import com.antivirus.ui.tablet.DualPaneActivity;

public class z extends com.antivirus.ui.a.a.a
  implements x
{
  private AlertDialog a;
  private String b;
  private View c = null;
  private r d;

  private void a(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(h());
    localBuilder.setTitle(paramString2);
    localBuilder.setMessage(paramString1);
    localBuilder.setIcon(2130837719);
    localBuilder.setPositiveButton(m.a(this.ag, 2131296269), new ab(this));
    this.a = localBuilder.create();
    this.a.setCanceledOnTouchOutside(false);
    this.a.show();
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (paramViewGroup == null);
    for (View localView = null; ; localView = this.c)
    {
      return localView;
      this.c = paramLayoutInflater.inflate(2130903046, paramViewGroup, false);
      this.d = new r(this.ag, this);
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.ag.getWindow().setSoftInputMode(2);
  }

  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (!this.ag.o())
        break label74;
      ((DualPaneActivity)this.ag).m();
      Bundle localBundle = new Bundle();
      localBundle.putString("register", this.b);
      b localb = new b();
      localb.g(localBundle);
      this.ag.a(localb, 2131230908, "AntiTheftFragment");
    }
    while (true)
    {
      return;
      label74: Intent localIntent = new Intent(h(), AntiTheftActivity.class);
      localIntent.putExtra("register", this.b);
      a(localIntent, 5);
      h().finish();
    }
  }

  public void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    Button localButton = (Button)h().findViewById(2131230762);
    if (this.ag.o())
    {
      RelativeLayout.LayoutParams localLayoutParams1 = (RelativeLayout.LayoutParams)((ScrollView)h().findViewById(2131230761)).getLayoutParams();
      localLayoutParams1.setMargins(localLayoutParams1.leftMargin, com.avg.ui.general.c.i.a(this.ag, 10), localLayoutParams1.rightMargin, localLayoutParams1.bottomMargin);
      localLayoutParams1.addRule(2, -1);
      RelativeLayout.LayoutParams localLayoutParams2 = (RelativeLayout.LayoutParams)localButton.getLayoutParams();
      localLayoutParams2.addRule(3, 2131230761);
      localLayoutParams2.addRule(12, 0);
    }
    EditText localEditText = (EditText)h().findViewById(2131230768);
    localEditText.setText(this.d.b());
    localButton.setOnClickListener(new aa(this, localEditText));
  }

  public void e()
  {
    if (this.a != null)
    {
      this.a.dismiss();
      this.a = null;
    }
    super.e();
    a(this.c);
    System.gc();
  }

  public void e(boolean paramBoolean)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.z
 * JD-Core Version:    0.6.2
 */