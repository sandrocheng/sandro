package com.keniu.security.commumgr;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.f.ab;
import com.keniu.security.f.k;
import com.keniu.security.main.BaseTitleActivity;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

public class NumLocateQueryActivity extends BaseTitleActivity
{
  private TextView a;
  private TextView b;
  private EditText c;
  private String d;
  private Button e;
  private String f;

  private void a()
  {
    this.a = ((TextView)findViewById(2131231399));
    this.b = ((TextView)findViewById(2131231400));
    this.c = ((EditText)findViewById(2131231398));
    this.d = getString(2131429006);
    this.e = ((Button)findViewById(2131231401));
    this.e.setOnClickListener(new g(this));
  }

  private void a(String paramString)
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131429007);
    View localView = LayoutInflater.from(this).inflate(2130903076, null);
    String str1 = ab.a().m();
    if (k.a(str1));
    String[] arrayOfString;
    for (String str2 = null; ; str2 = null)
    {
      if (str2 != null)
        String.format("%s(%s)", new Object[] { str2, str1 });
      TextView localTextView1 = (TextView)localView.findViewById(2131230940);
      TextView localTextView2 = (TextView)localView.findViewById(2131230941);
      TextView localTextView3 = (TextView)localView.findViewById(2131230942);
      localTextView1.setText(getString(2131429009, new Object[] { paramString }));
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.f;
      localTextView2.setText(getString(2131429010, arrayOfObject));
      localTextView3.setText(getString(2131429011));
      localaq.a(localView);
      localaq.a(2131427541, new i(this, paramString));
      localaq.b(2131427542, null);
      localaq.c().show();
      return;
      arrayOfString = str1.split("\\.");
      if ((arrayOfString != null) && (arrayOfString.length == 4))
        break;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(arrayOfString[0] + "." + arrayOfString[1]);
    if (arrayOfString[2].equals("0"))
    {
      localStringBuilder.append("alpha");
      localStringBuilder.append(arrayOfString[3]);
    }
    while (true)
    {
      str2 = localStringBuilder.toString();
      break;
      if (arrayOfString[2].equals("1"))
      {
        localStringBuilder.append("beta");
        localStringBuilder.append(arrayOfString[3]);
      }
      else if (arrayOfString[2].equals("2"))
      {
        localStringBuilder.append("rel");
      }
    }
  }

  private void b()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131429007);
    localaq.b(2131429008);
    localaq.a(2131427541, new h(this));
    localaq.c().show();
  }

  private void c()
  {
    this.c.addTextChangedListener(new j(this));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903224, 2131428412);
    if (paramBundle == null)
      a.i(this, "telman_numlocal");
    this.a = ((TextView)findViewById(2131231399));
    this.b = ((TextView)findViewById(2131231400));
    this.c = ((EditText)findViewById(2131231398));
    this.d = getString(2131429006);
    this.e = ((Button)findViewById(2131231401));
    this.e.setOnClickListener(new g(this));
    this.c.addTextChangedListener(new j(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.NumLocateQueryActivity
 * JD-Core Version:    0.6.2
 */