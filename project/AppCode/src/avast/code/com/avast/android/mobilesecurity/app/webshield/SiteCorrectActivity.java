package com.avast.android.mobilesecurity.app.webshield;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.mobilesecurity.engine.ah;
import com.avast.android.mobilesecurity.t;

public class SiteCorrectActivity extends Activity
{
  private Uri a;
  private ah b;
  private n c;
  private String d;
  private CheckBox e;

  private void a()
  {
    new f(this).execute(new Void[0]);
  }

  private void a(String paramString)
  {
    Intent localIntent = new Intent(this, WebshieldService.class);
    localIntent.putExtra("redirect_browser", true);
    localIntent.putExtra("browser_type", this.c.a());
    if (this.d != null)
      localIntent.putExtra("tab_id", this.d);
    localIntent.setData(Uri.parse(this.b.c));
    startService(localIntent);
    WebshieldService.b(paramString);
  }

  private void b()
  {
    if (this.e.isChecked())
      ((t)ad.a(this, t.class)).f(true);
  }

  public static void call(Context paramContext, Uri paramUri, String paramString1, n paramn, int paramInt, String paramString2)
  {
    Intent localIntent = new Intent(paramContext, SiteCorrectActivity.class);
    localIntent.setData(paramUri);
    localIntent.putExtra("redirect_id", paramString1);
    localIntent.putExtra("browser_type", paramn.a());
    if (paramString2 != null)
      localIntent.putExtra("tab", paramString2);
    localIntent.setFlags(paramInt);
    paramContext.startActivity(localIntent);
  }

  public void onBackPressed()
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    this.a = localIntent.getData();
    this.c = n.a(localIntent.getStringExtra("browser_type"));
    this.d = localIntent.getStringExtra("tab");
    String str = localIntent.getStringExtra("redirect_id");
    if (!TextUtils.isEmpty(str))
    {
      this.b = WebshieldService.a(str);
      if (this.b != null)
        break label71;
    }
    while (true)
    {
      return;
      label71: requestWindowFeature(1);
      setContentView(2130903072);
      this.e = ((CheckBox)findViewById(2131165295));
      findViewById(2131165296).setOnClickListener(new d(this, str));
      TextView localTextView1 = (TextView)findViewById(2131165297);
      StringBuilder localStringBuilder = new StringBuilder().append("<u>");
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = ("<br/>" + this.a.toString());
      localTextView1.setText(Html.fromHtml(getString(2131493893, arrayOfObject1) + "</u>"));
      localTextView1.setOnClickListener(new e(this, str));
      TextView localTextView2 = (TextView)findViewById(2131165275);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = ("<b>" + this.b.d + "</b>");
      localTextView2.setText(Html.fromHtml(getString(2131493890, arrayOfObject2)));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.SiteCorrectActivity
 * JD-Core Version:    0.6.2
 */