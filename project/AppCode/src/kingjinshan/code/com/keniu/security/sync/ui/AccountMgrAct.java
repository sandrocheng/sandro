package com.keniu.security.sync.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.keniu.security.main.BaseTitleActivity;
import com.keniu.security.sync.i;
import com.keniu.security.sync.k;
import com.keniu.security.sync.l;
import com.keniu.security.util.aq;

public class AccountMgrAct extends BaseTitleActivity
  implements View.OnClickListener
{
  private RelativeLayout a;
  private RelativeLayout b;
  private k c = k.a();
  private TextView d;

  private void b()
  {
    if (this.c.b("session_id"))
    {
      this.a.setVisibility(8);
      this.b.setVisibility(0);
      TextView localTextView = this.d;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.c.c("user_name");
      localTextView.setText(getString(2131429473, arrayOfObject));
    }
    while (true)
    {
      return;
      this.a.setVisibility(0);
      this.b.setVisibility(8);
    }
  }

  public final void a()
  {
    if (this.c.c("session_id").equals("null"))
    {
      b();
      l.b(this, 2131429474);
    }
    this.c.a("session_id");
    b();
    Toast.makeText(this, 2131429474, 1).show();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131231289:
    default:
    case 2131231287:
    case 2131231290:
    case 2131231291:
    case 2131231288:
    }
    while (true)
    {
      return;
      startActivity(new Intent(this, LoginAct.class));
      continue;
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse("http://i.ijinshan.com/jump.php?act=modify&source=mosecurity"));
      startActivity(localIntent);
      continue;
      startActivity(new Intent(this, WebViewAct.class).putExtra("type", 3));
      continue;
      aq localaq = new aq(this, (byte)0).a(2131427865);
      String str = getString(2131429479);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = k.a().c("user_name");
      localaq.b(String.format(str, arrayOfObject)).a(2131427864, new b(this)).b(2131427866, new a(this)).d();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    i.a(this, ">>>> on create");
    super.a(paramBundle, 2130903171, 2131429439);
    this.a = ((RelativeLayout)findViewById(2131231287));
    this.b = ((RelativeLayout)findViewById(2131231288));
    this.d = ((TextView)findViewById(2131231289));
    this.c.a(this);
    this.a.setOnClickListener(this);
    this.b.setOnClickListener(this);
    findViewById(2131231290).setOnClickListener(this);
    findViewById(2131231291).setOnClickListener(this);
  }

  protected void onResume()
  {
    b();
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.AccountMgrAct
 * JD-Core Version:    0.6.2
 */