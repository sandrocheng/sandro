package com.antivirus.wipe;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.antivirus.m;

public class ab extends com.antivirus.ui.a.a.a
{
  private EditText a;
  private AlertDialog b;
  private Button c = null;
  private boolean d;
  private View e = null;
  private boolean f = true;

  private void a()
  {
    ProgressDialog localProgressDialog = ProgressDialog.show(this.ag, "", m.a(this.ag, 2131296779), true, true);
    localProgressDialog.setCancelable(false);
    new Thread(new ag(this, localProgressDialog)).start();
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.e = paramLayoutInflater.inflate(2130903115, paramViewGroup, false);
    if (this.ag.o())
      a(m.a(this.ag, 2131296606), this.e);
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      this.f = false;
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
      localBuilder.setTitle(m.a(this.ag, 2131296620));
      localBuilder.setIcon(2130837609);
      localBuilder.setMessage(m.a(this.ag, 2131296563));
      localBuilder.setPositiveButton(m.a(this.ag, 2131296269), new ac(this));
      if (!this.ag.o())
        localBuilder.setOnCancelListener(new ad(this));
      this.b = localBuilder.create();
      this.b.setCanceledOnTouchOutside(false);
      this.b.show();
      this.ag.getWindow().setSoftInputMode(2);
      return this.e;
    }
    this.f = true;
    ((TextView)this.e.findViewById(2131231097)).setText(m.a(this.ag, 2131296612));
    ((TextView)this.e.findViewById(2131231098)).setText(m.a(this.ag, 2131296613));
    this.c = ((Button)this.e.findViewById(2131231100));
    this.c.setText(m.a(this.ag, 2131296269));
    Button localButton = (Button)this.e.findViewById(2131231101);
    if (this.ag.o())
      localButton.setVisibility(8);
    while (true)
    {
      this.a = ((EditText)this.e.findViewById(2131231099));
      this.c.setOnClickListener(new af(this));
      this.a.setSelected(false);
      break;
      localButton.setText(m.a(this.ag, 2131296270));
      localButton.setOnClickListener(new ae(this));
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
  }

  public void e()
  {
    super.e();
    a(this.e);
    System.gc();
  }

  public void r()
  {
    super.r();
    this.d = true;
  }

  public void s()
  {
    try
    {
      ((InputMethodManager)this.ag.getSystemService("input_method")).hideSoftInputFromWindow(this.a.getWindowToken(), 0);
      if (this.b != null)
        this.b.dismiss();
      super.s();
      if (!this.f)
        this.ag.finish();
      this.d = false;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.ab
 * JD-Core Version:    0.6.2
 */