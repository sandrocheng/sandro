package com.tencent.qqpimsecure.ui.activity;

import acj;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import hs;
import java.util.ArrayList;
import kf;
import ms;
import ok;
import on;

public class AppStartupScanDialog extends Activity
  implements View.OnClickListener
{
  private static a f;
  private TextView a;
  private TextView b;
  private CheckBoxView c;
  private ButtonView d;
  private ButtonView e;

  public static void a(Context paramContext, String paramString, a parama)
  {
    if (f == null)
      f = parama;
    Intent localIntent = new Intent(paramContext, AppStartupScanDialog.class);
    Bundle localBundle = new Bundle();
    localBundle.putString("AppName", paramString);
    localIntent.putExtras(localBundle);
    localIntent.setFlags(1342177280);
    paramContext.startActivity(localIntent);
  }

  public void onClick(View paramView)
  {
    a locala2;
    if (paramView == this.d)
    {
      if (this.c.getChecked())
        f.a();
      locala2 = f;
      if (locala2.a.i == null)
      {
        ok localok = locala2.a;
        if (localok.d != null)
        {
          localok.d.a();
          localok.d = null;
        }
        localok.e = null;
        finish();
      }
    }
    label275: 
    do
      while (true)
      {
        return;
        if (locala2.a.d == null)
          locala2.a.d = new acj(locala2.a.b);
        if (locala2.a.e == null)
        {
          locala2.a.e = new on(locala2);
          locala2.a.d.a(locala2.a.e);
        }
        ArrayList localArrayList = new ArrayList();
        ms localms = new ms();
        localms.e = locala2.a.i;
        localArrayList.add(localms);
        locala2.a.d.b(localArrayList);
        locala2.a.i = null;
        break;
        if (paramView != this.e)
          break label275;
        if (this.c.getChecked())
          f.a();
        a locala1 = f;
        locala1.a.i = null;
        ok.a(locala1.a);
        finish();
      }
    while (paramView != this.c);
    if (!this.c.getChecked());
    for (boolean bool = true; ; bool = false)
    {
      this.c.setChecked(bool);
      break;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903047);
    Bundle localBundle = getIntent().getExtras();
    this.a = ((TextView)findViewById(2131230771));
    this.a.setText(2131428335);
    this.c = ((CheckBoxView)findViewById(2131230752));
    this.c.setOnClickListener(this);
    this.b = ((TextView)findViewById(2131230750));
    this.d = ((ButtonView)findViewById(2131230768));
    this.d.setText(getString(2131428069));
    this.d.setOnClickListener(this);
    this.e = ((ButtonView)findViewById(2131230769));
    this.e.setOnClickListener(this);
    String str1 = localBundle.getString("AppName");
    String str2 = getString(2131428044);
    String str3 = String.format(getString(2131428068), new Object[] { str1, str2 });
    int i = getResources().getColor(2131296256);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str3);
    if (str2.trim().length() > 0)
    {
      int j = str3.indexOf(str2);
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(i), j, j + str2.length(), 34);
    }
    this.b.setText(localSpannableStringBuilder);
  }

  public static final class a
  {
    public a(ok paramok)
    {
    }

    public final void a()
    {
      if (this.a.i != null)
      {
        kf localkf = this.a.f;
        String str = this.a.i.packageName;
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("pkg_name", str);
        localContentValues.put("setting_flag", Integer.valueOf(localkf.b));
        localkf.a.a("startup_app_scan", localContentValues);
        localkf.a.b();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.AppStartupScanDialog
 * JD-Core Version:    0.6.2
 */