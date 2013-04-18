package com.ijinshan.kinghelper.firewall;

import android.app.ListActivity;
import android.app.ProgressDialog;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.keniu.security.util.ac;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.text.SimpleDateFormat;
import java.util.List;

public class ServiceSmsGroupActivity extends ListActivity
  implements View.OnClickListener, AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, CompoundButton.OnCheckedChangeListener
{
  public static final String a = "groupsmsparam";
  public static final String b = "groupindex";
  private static final SimpleDateFormat c = new SimpleDateFormat("HH:mm MM/dd");
  private do d = null;
  private boolean e = false;
  private int f = -1;
  private ek g = null;
  private boolean h = false;
  private int i = -1;
  private DialogInterface.OnClickListener j = new dk(this);
  private int k = -1;
  private View l = null;
  private DialogInterface.OnClickListener m = new dn(this);

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      findViewById(2131231550).setVisibility(8);
      findViewById(2131231551).setVisibility(0);
      a();
    }
    while (true)
    {
      this.e = paramBoolean;
      this.d.notifyDataSetChanged();
      return;
      findViewById(2131231550).setVisibility(0);
      findViewById(2131231551).setVisibility(8);
      a();
    }
  }

  private void c()
  {
    List localList = this.d.e();
    dh localdh = new dh(this);
    ProgressDialog localProgressDialog = new ProgressDialog(this);
    localProgressDialog.setMessage(getString(2131427805));
    localProgressDialog.setCancelable(false);
    localProgressDialog.setProgressStyle(1);
    localProgressDialog.setMax(localList.size());
    localProgressDialog.show();
    new di(this, localProgressDialog, localdh).start();
  }

  private void d()
  {
    if (this.d.d() == 0)
      Toast.makeText(this, 2131427807, 1).show();
    while (true)
    {
      return;
      aq localaq = new aq(this, (byte)0);
      localaq.b(2131427803);
      localaq.a(2131427865);
      localaq.a(2131427541, new dj(this));
      localaq.b(2131427542, null);
      localaq.d();
    }
  }

  private void e()
  {
    if (this.k == this.f);
    while (true)
    {
      return;
      ei localei1 = (ei)this.g.a.get(this.f);
      ei localei2 = (ei)this.g.a.get(this.k);
      ej localej = (ej)localei1.a.get(this.i);
      localei1.a.remove(this.i);
      localei2.a.add(localej);
      this.d.notifyDataSetChanged();
      this.g.b.a(localej.b, localei2.b);
      this.h = true;
    }
  }

  private void f()
  {
    int n = 0;
    aq localaq = new aq(this, (byte)0);
    String[] arrayOfString = new String[this.g.a.size()];
    while (n < this.g.a.size())
    {
      arrayOfString[n] = ((ei)this.g.a.get(n)).e;
      n++;
    }
    localaq.a(2131427816);
    this.k = this.f;
    localaq.a(arrayOfString, this.f, new dl(this));
    localaq.a(2131427541, new dm(this));
    localaq.d();
  }

  private void g()
  {
    ej localej = (ej)this.d.getItem(this.i);
    this.l = LayoutInflater.from(this).inflate(2130903278, null);
    new aq(this, (byte)0).a(localej.b).a(this.l).a(2131427541, this.m).c(2131427542, null).c().show();
    ((EditText)this.l.findViewById(2131230993)).setText(localej.d);
  }

  public final void a()
  {
    this.d.c();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1) && (paramInt2 == 1))
    {
      this.d.notifyDataSetChanged();
      this.h = true;
    }
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramCompoundButton.getId() == 2131231552)
    {
      if (!paramBoolean)
        break label29;
      this.d.a();
    }
    while (true)
    {
      this.d.notifyDataSetChanged();
      return;
      label29: this.d.b();
    }
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131231553)
      if (this.e)
      {
        if (this.d.d() != 0)
          break label38;
        Toast.makeText(this, 2131427807, 1).show();
      }
    while (true)
    {
      return;
      label38: aq localaq = new aq(this, (byte)0);
      localaq.b(2131427803);
      localaq.a(2131427865);
      localaq.a(2131427541, new dj(this));
      localaq.b(2131427542, null);
      localaq.d();
      continue;
      if (paramView.getId() == 2131230878)
      {
        if (!this.e)
          a(true);
      }
      else if (paramView.getId() == 2131231554)
        a(false);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      String str2 = localIntent.getStringExtra("groupsmsparam");
      if (str2 != null)
        this.g = ((ek)ac.a().a(str2));
    }
    for (int n = localIntent.getIntExtra("groupindex", -1); ; n = -1)
    {
      if ((this.g != null) && (this.g.a != null));
      for (this.d = new do(this, this, ((ei)this.g.a.get(n)).a); ; this.d = new do(this, this, null))
      {
        this.f = n;
        super.onCreate(paramBundle);
        setContentView(2130903271);
        TextView localTextView1 = (TextView)findViewById(2131230727);
        String str1 = ((ei)this.g.a.get(this.f)).e;
        localTextView1.setText(str1 + getString(2131427826));
        findViewById(2131230862).setVisibility(8);
        ((TextView)findViewById(2131230797)).setVisibility(4);
        ((TextView)findViewById(2131230756)).setVisibility(8);
        TextView localTextView2 = (TextView)findViewById(2131230878);
        localTextView2.setText(2131427537);
        localTextView2.setOnClickListener(this);
        localTextView2.setVisibility(0);
        ((TextView)findViewById(2131230757)).setVisibility(8);
        ((CheckBox)findViewById(2131231552)).setOnCheckedChangeListener(this);
        ((Button)findViewById(2131231553)).setOnClickListener(this);
        ((Button)findViewById(2131231554)).setOnClickListener(this);
        getListView().setAdapter(this.d);
        getListView().setOnItemClickListener(this);
        getListView().setLongClickable(true);
        getListView().setOnItemLongClickListener(this);
        getListView().setSelector(2130837790);
        return;
      }
    }
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (!this.e)
    {
      Intent localIntent = new Intent(this, ServicesSmsDetailActivity.class);
      ej localej = (ej)this.d.getItem(paramInt);
      String str1 = localej.b;
      String str2 = localej.d;
      String str3 = ac.a().a(this.g);
      localIntent.putExtra(ServicesSmsDetailActivity.b, str1);
      localIntent.putExtra(ServicesSmsDetailActivity.c, str2);
      localIntent.putExtra(ServicesSmsDetailActivity.a, str3);
      localIntent.putExtra(ServicesSmsDetailActivity.e, this.f);
      localIntent.putExtra(ServicesSmsDetailActivity.f, paramInt);
      startActivityForResult(localIntent, 1);
    }
    while (true)
    {
      return;
      this.d.a(paramInt);
      a();
      this.d.notifyDataSetChanged();
    }
  }

  public boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.i = paramInt;
    ej localej = (ej)this.d.getItem(paramInt);
    aq localaq = new aq(this, (byte)0);
    localaq.a(localej.b);
    localaq.d(2131165247, this.j);
    localaq.c();
    localaq.d();
    return true;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool;
    if (paramInt == 4)
    {
      if (this.e)
      {
        a(false);
        bool = true;
        return bool;
      }
      if (!this.h)
        break label43;
      setResult(1);
    }
    while (true)
    {
      bool = super.onKeyDown(paramInt, paramKeyEvent);
      break;
      label43: setResult(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ServiceSmsGroupActivity
 * JD-Core Version:    0.6.2
 */