package com.keniu.security.main;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import com.keniu.security.util.aq;
import java.util.ArrayList;
import java.util.List;

public final class cd
{
  private Context a;
  private LayoutInflater b;
  private Dialog c;
  private PackageManager d;

  public cd(Context paramContext)
  {
    this.a = paramContext;
    this.b = ((LayoutInflater)this.a.getSystemService("layout_inflater"));
    this.d = this.a.getPackageManager();
    View localView = this.b.inflate(2130903229, null);
    ListView localListView = (ListView)localView.findViewById(2131231444);
    ArrayList localArrayList = new ArrayList();
    Intent localIntent1 = new Intent("android.intent.action.VIEW", Uri.parse("tel:100861"));
    localIntent1.setType("vnd.android-dir/mms-sms");
    List localList1 = this.d.queryIntentActivities(localIntent1, 65536);
    if (localList1.size() > 0)
      localArrayList.add(localList1.get(0));
    Intent localIntent2 = new Intent("android.intent.action.SEND");
    localIntent2.setType("message/rfc822");
    List localList2 = this.d.queryIntentActivities(localIntent2, 65536);
    if (localList2.size() > 0)
      localArrayList.add(localList2.get(0));
    localListView.setAdapter(new cf(this, localArrayList));
    localListView.setOnItemClickListener(new ce(this, localArrayList));
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(2131428341);
    localaq.a(localView);
    this.c = localaq.c();
  }

  public final void a()
  {
    this.c.show();
  }

  public final void b()
  {
    this.c.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.cd
 * JD-Core Version:    0.6.2
 */