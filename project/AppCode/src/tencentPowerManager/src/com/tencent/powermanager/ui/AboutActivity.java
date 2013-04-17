package com.tencent.powermanager.ui;

import android.app.Activity;
import android.os.Bundle;
import android.text.Html;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import bt;

public class AboutActivity extends Activity
  implements View.OnClickListener
{
  private String a = "<font color=\"#047ecb\"><a href='http://fwd.3g.qq.com:8080/forward.jsp?bid=908'>%s</a></font>";
  private Button b = null;
  private TextView c = null;
  private TextView d = null;
  private TextView e = null;
  private bt f = null;

  public void onClick(View paramView)
  {
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903040);
    this.b = ((Button)findViewById(2131230720));
    this.b.setOnClickListener(this);
    this.c = ((TextView)findViewById(2131230724));
    this.d = ((TextView)findViewById(2131230722));
    this.e = ((TextView)findViewById(2131230723));
    this.f = bt.a();
    TextView localTextView1 = this.e;
    String str1 = getString(2131099798);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = this.f.b();
    localTextView1.setText(String.format(str1, arrayOfObject1));
    String str2 = this.a;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = getString(2131099799);
    this.a = String.format(str2, arrayOfObject2);
    String str3 = getString(2131099795);
    Object[] arrayOfObject3 = new Object[3];
    arrayOfObject3[0] = "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
    arrayOfObject3[1] = "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
    arrayOfObject3[2] = this.a;
    Spanned localSpanned = Html.fromHtml(String.format(str3, arrayOfObject3));
    TextView localTextView2 = this.d;
    String str4 = getString(2131099797);
    Object[] arrayOfObject4 = new Object[1];
    arrayOfObject4[0] = this.f.e();
    localTextView2.setText(String.format(str4, arrayOfObject4));
    this.c.setText(localSpanned);
    this.c.setMovementMethod(LinkMovementMethod.getInstance());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.ui.AboutActivity
 * JD-Core Version:    0.6.2
 */