package com.keniu.security.sync.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.keniu.security.sync.c.f;
import com.keniu.security.sync.j;
import com.keniu.security.sync.k;
import com.keniu.security.sync.l;
import com.keniu.security.sync.r;

public class LoginAct extends HelperBaseTitleAct
  implements View.OnClickListener
{
  private Button a;
  private AutoCompleteTextView b;
  private EditText c;
  private Handler d;
  private String e;
  private String f;
  private CheckBox g;
  private TextView h;
  private TextView i;

  private void a(String paramString1, String paramString2)
  {
    if (!r.b(this))
      return;
    f localf = new f(this, this.d);
    String[] arrayOfString = new String[3];
    arrayOfString[0] = paramString1;
    arrayOfString[1] = l.a(paramString2);
    if (this.g.isChecked());
    for (String str = "true"; ; str = "false")
    {
      arrayOfString[2] = str;
      localf.execute(arrayOfString);
      break;
    }
  }

  public final void a()
  {
    setResult(17);
    finish();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231283:
    case 2131231284:
    }
    while (true)
    {
      return;
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse("http://i.ijinshan.com/jump.php?act=forget_mobile&source=mosecurity&mobile="));
      startActivity(localIntent);
      continue;
      this.e = this.b.getText().toString().trim();
      this.f = this.c.getText().toString().trim();
      if (this.e.length() == 0)
      {
        l.a(this, 2131429490);
      }
      else
      {
        if ((this.f.length() >= 6) && (this.f.length() <= 32))
          break;
        l.a(this, 2131429491);
      }
    }
    while (true)
    {
      try
      {
        String str1 = this.e;
        String str2 = this.f;
        if (!r.b(this))
          break;
        f localf = new f(this, this.d);
        String[] arrayOfString = new String[3];
        arrayOfString[0] = str1;
        arrayOfString[1] = l.a(str2);
        if (!this.g.isChecked())
          break label243;
        str3 = "true";
        arrayOfString[2] = str3;
        localf.execute(arrayOfString);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        l.a(this, 2131429484);
      }
      break;
      label243: String str3 = "false";
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903170, 2131429440);
    this.d = new j(this, (byte)0);
    this.a = ((Button)findViewById(2131231284));
    this.b = ((AutoCompleteTextView)findViewById(2131231279));
    this.c = ((EditText)findViewById(2131231281));
    this.g = ((CheckBox)findViewById(2131231282));
    this.h = ((TextView)findViewById(2131231283));
    this.h.setOnClickListener(this);
    this.a.setOnClickListener(this);
    String[] arrayOfString = { "", "" };
    String str1 = l.b(this);
    if ((str1 != null) && (str1.length() > 0))
    {
      if (str1.startsWith("+86"))
        str1 = str1.substring(3);
      arrayOfString[0] = str1;
    }
    k localk = k.a();
    localk.a(this);
    String str2;
    if (localk.b("user_name"))
    {
      str2 = localk.c("user_name");
      if (!str2.equals(str1))
      {
        if (!arrayOfString[0].equals(""))
          break label328;
        arrayOfString[0] = str2;
      }
    }
    while (true)
    {
      this.b.setAdapter(new ArrayAdapter(this, 17367050, arrayOfString));
      getWindow().setSoftInputMode(3);
      this.i = ((TextView)findViewById(2131231285));
      SpannableString localSpannableString = new SpannableString(getString(2131429445));
      localSpannableString.setSpan(new g(this), 27, 33, 17);
      localSpannableString.setSpan(new ForegroundColorSpan(getResources().getColor(2131296283)), 27, 33, 34);
      this.i.setText(localSpannableString);
      this.i.setMovementMethod(LinkMovementMethod.getInstance());
      return;
      label328: arrayOfString[1] = str2;
    }
  }

  protected void onDestroy()
  {
    this.f = null;
    this.e = null;
    super.onDestroy();
  }

  protected void onPause()
  {
    this.e = this.b.getText().toString();
    this.f = this.c.getText().toString();
    super.onPause();
  }

  protected void onResume()
  {
    this.b.setText(this.e);
    this.c.setText(this.f);
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.LoginAct
 * JD-Core Version:    0.6.2
 */