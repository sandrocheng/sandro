package com.ijinshan.kinghelper.firewall;

import android.app.Dialog;
import android.app.ListActivity;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import com.keniu.security.util.aq;
import java.util.ArrayList;
import java.util.HashMap;

public class IpDialNoUseNumberListActivity extends ListActivity
  implements View.OnClickListener
{
  public static final String a = "";
  private static final int b = 8209;
  private static final int c = 8210;
  private static final int d = 1;
  private ArrayList e;
  private ce f;
  private Button g;
  private Button h;
  private ArrayList i = new ArrayList();
  private DialogInterface.OnClickListener j = new cd(this);

  private void a()
  {
    if (this.e.size() > 0)
    {
      getListView().setVisibility(0);
      findViewById(2131230797).setVisibility(8);
    }
    while (true)
    {
      return;
      getListView().setVisibility(8);
      findViewById(2131230797).setVisibility(0);
    }
  }

  private void b()
  {
    this.e.clear();
    this.i.clear();
    String str = dc.d();
    if (!TextUtils.isEmpty(str))
    {
      String[] arrayOfString = str.split(";");
      for (int k = 0; k < 2 * (arrayOfString.length / 2); k += 2)
        if ((!this.e.contains(arrayOfString[k])) && (!TextUtils.isEmpty(arrayOfString[k])))
        {
          this.e.add(arrayOfString[k]);
          this.e.add(arrayOfString[(k + 1)]);
          HashMap localHashMap = new HashMap();
          localHashMap.put("ip_dial_no_use_number_title", arrayOfString[k]);
          localHashMap.put("ip_dial_no_use_number_body", arrayOfString[(k + 1)]);
          this.i.add(localHashMap);
        }
    }
  }

  private static void b(String paramString1, String paramString2)
  {
    String str = dc.d();
    StringBuffer localStringBuffer = new StringBuffer(str);
    localStringBuffer.append(paramString1);
    if (TextUtils.isEmpty(paramString2))
      localStringBuffer.append(";").append(paramString1).append(";");
    while (true)
    {
      dc.a(str + localStringBuffer.toString());
      return;
      paramString2.replace(";", "");
      localStringBuffer.append(";").append(paramString2).append(";");
    }
  }

  private Dialog c()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131427480));
    localaq.d(2131165239, this.j);
    return localaq.c();
  }

  private Dialog d()
  {
    View localView = LayoutInflater.from(this).inflate(2130903121, null);
    aq localaq = new aq(this, (byte)0).a(2131427470).a(localView);
    localaq.a(2131428994, new cb(this, (EditText)localView.findViewById(2131231081), (EditText)localView.findViewById(2131231082)));
    localaq.b(2131428995, new cc(this));
    return localaq.c();
  }

  private void e()
  {
    StringBuffer localStringBuffer = new StringBuffer("");
    int k = this.e.size();
    for (int m = 0; m < k; m++)
      localStringBuffer.append((String)this.e.get(m)).append(";");
    dc.a(localStringBuffer.toString());
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == -1))
    {
      b();
      e();
      this.f.notifyDataSetChanged();
      a();
    }
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131230884)
      showDialog(8209);
    while (true)
    {
      return;
      if (paramView.getId() == 2131230885)
        finish();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903063);
    ((TextView)findViewById(2131230727)).setText(getTitle());
    this.e = new ArrayList();
    b();
    e();
    this.f = new ce(this, this);
    setListAdapter(this.f);
    this.g = ((Button)findViewById(2131230884));
    this.g.setOnClickListener(this);
    this.h = ((Button)findViewById(2131230885));
    this.h.setOnClickListener(this);
    setResult(-1);
    a();
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    if (paramInt == 8209)
    {
      aq localaq1 = new aq(this, (byte)0);
      localaq1.a(getString(2131427480));
      localaq1.d(2131165239, this.j);
      localObject = localaq1.c();
    }
    while (true)
    {
      return localObject;
      if (paramInt == 8210)
      {
        View localView = LayoutInflater.from(this).inflate(2130903121, null);
        aq localaq2 = new aq(this, (byte)0).a(2131427470).a(localView);
        localaq2.a(2131428994, new cb(this, (EditText)localView.findViewById(2131231081), (EditText)localView.findViewById(2131231082)));
        localaq2.b(2131428995, new cc(this));
        localObject = localaq2.c();
      }
      else
      {
        localObject = super.onCreateDialog(paramInt);
      }
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    e();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.IpDialNoUseNumberListActivity
 * JD-Core Version:    0.6.2
 */