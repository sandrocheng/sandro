package com.ijinshan.kinghelper.firewall;

import android.a.w;
import android.app.Dialog;
import android.app.ListActivity;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kinghelper.firewall.a.e;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.util.ac;
import com.keniu.security.util.aq;
import java.util.Iterator;
import java.util.List;

public class ServicesSmsListActivity extends ListActivity
  implements DialogInterface.OnClickListener, View.OnClickListener, AdapterView.OnItemClickListener
{
  protected static final boolean a = true;
  public static final String b = "address = ? and type = 1";
  public static final String c = "_id = ? and type = 1";
  private static final String e = "address like ? or address like ? or address like ? or address like ?";
  private static final String[] f = { "10%", "12%", "9%", "4%" };
  private eg d;
  private Handler g;
  private Dialog h = null;
  private dq i = null;
  private ProgressDialog j;
  private View k = null;

  private void a()
  {
    this.i = new dq(this);
    this.g = new dy(this);
    this.j = new ProgressDialog(this);
    this.j.setMessage(getString(2131427656));
    this.j.setCancelable(false);
    this.j.show();
    this.d = new eg(this, this);
    new dz(this).start();
  }

  private void b()
  {
    TextView localTextView = (TextView)findViewById(2131230797);
    if (this.d.getCount() > 0)
    {
      setListAdapter(this.d);
      getListView().setOnItemClickListener(this);
      localTextView.setVisibility(8);
    }
    while (true)
    {
      b(false);
      this.d.a(false);
      return;
      localTextView.setVisibility(0);
      getListView().setVisibility(8);
    }
  }

  private void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ((TextView)findViewById(2131230756)).setText(2131427537);
      TextView localTextView2 = (TextView)findViewById(2131230757);
      localTextView2.setVisibility(0);
      localTextView2.setText(2131427543);
      ((TextView)findViewById(2131230878)).setVisibility(0);
    }
    while (true)
    {
      return;
      ((TextView)findViewById(2131230756)).setText(2131427817);
      ((TextView)findViewById(2131230878)).setVisibility(8);
      TextView localTextView1 = (TextView)findViewById(2131230757);
      localTextView1.setVisibility(0);
      localTextView1.setText(2131427539);
    }
  }

  private void c()
  {
    Cursor localCursor = getContentResolver().query(w.a, null, "address like ? or address like ? or address like ? or address like ?", f, "date DESC");
    if (localCursor == null);
    while (true)
    {
      return;
      this.d.a(localCursor);
      if (!localCursor.isClosed())
        localCursor.close();
    }
  }

  private void c(boolean paramBoolean)
  {
    if (!paramBoolean)
      a(paramBoolean);
    while (true)
    {
      return;
      List localList = this.d.b();
      ea localea = new ea(this);
      ProgressDialog localProgressDialog = new ProgressDialog(this);
      localProgressDialog.setMessage(getString(2131427805));
      localProgressDialog.setCancelable(false);
      localProgressDialog.setProgressStyle(1);
      localProgressDialog.setMax(localList.size());
      localProgressDialog.show();
      new eb(this, localProgressDialog, localea).start();
    }
  }

  private void d()
  {
    View localView = LayoutInflater.from(this).inflate(2130903089, null);
    this.h = new aq(this, (byte)0).a(2131427817).a(localView).a(2131427541, this).c(2131427542, this).c();
    this.h.show();
  }

  private void e()
  {
    aq localaq = new aq(this, (byte)0);
    this.k = LayoutInflater.from(this).inflate(2130903090, null);
    localaq.a(2131427865);
    localaq.a(this.k);
    localaq.a(2131427541, new ec(this));
    localaq.b(2131427542, null);
    localaq.d();
  }

  private void f()
  {
    if (this.d.c() == 0)
      Toast.makeText(this, 2131427808, 1).show();
    while (true)
    {
      return;
      aq localaq = new aq(this, (byte)0);
      this.k = LayoutInflater.from(this).inflate(2130903090, null);
      localaq.a(2131427865);
      localaq.a(this.k);
      localaq.a(2131427541, new ec(this));
      localaq.b(2131427542, null);
      localaq.d();
    }
  }

  private void g()
  {
    this.i.a();
    a();
  }

  public final void a(boolean paramBoolean)
  {
    Iterator localIterator = this.d.b().iterator();
    while (localIterator.hasNext())
    {
      ei localei = (ei)localIterator.next();
      if (localei.b >= dq.f)
        this.i.c(localei.b);
      else
        this.i.a(localei.b);
    }
    this.d.b(paramBoolean);
    this.d.notifyDataSetChanged();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1) && (paramInt2 == 1))
      this.d.notifyDataSetChanged();
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((paramDialogInterface == this.h) && (paramInt == -1))
    {
      String str = ((EditText)this.h.findViewById(2131230993)).getText().toString();
      if (str.length() > 0)
      {
        int m = this.i.a(str, str);
        if (m != 0)
        {
          this.d.a(m, str, str);
          this.d.notifyDataSetChanged();
        }
      }
    }
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131230756)
      if (this.d.a())
        if (this.d.c() == 0)
          Toast.makeText(this, 2131427808, 1).show();
    while (true)
    {
      return;
      aq localaq2 = new aq(this, (byte)0);
      this.k = LayoutInflater.from(this).inflate(2130903090, null);
      localaq2.a(2131427865);
      localaq2.a(this.k);
      localaq2.a(2131427541, new ec(this));
      localaq2.b(2131427542, null);
      localaq2.d();
      continue;
      View localView = LayoutInflater.from(this).inflate(2130903089, null);
      this.h = new aq(this, (byte)0).a(2131427817).a(localView).a(2131427541, this).c(2131427542, this).c();
      this.h.show();
      continue;
      if (paramView.getId() == 2131230878)
      {
        aq localaq1 = new aq(this, (byte)0);
        localaq1.a(2131427821);
        localaq1.b(2131427822);
        localaq1.a(2131427541, new ed(this));
        localaq1.c(2131427542, null);
        localaq1.c();
        localaq1.d();
      }
      else if (paramView.getId() == 2131230757)
      {
        if (!this.d.a())
        {
          b(true);
          this.d.a(true);
          this.d.notifyDataSetChanged();
        }
        else
        {
          b(false);
          this.d.a(false);
          this.d.notifyDataSetChanged();
        }
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903274);
    ((TextView)findViewById(2131230727)).setText(2131427343);
    if (paramBundle == null)
      a.i(this, "smsman_srv");
    e.a(this);
    findViewById(2131230862).setVisibility(8);
    TextView localTextView1 = (TextView)findViewById(2131230797);
    localTextView1.setVisibility(4);
    localTextView1.setText(2131427535);
    TextView localTextView2 = (TextView)findViewById(2131230756);
    localTextView2.setOnClickListener(this);
    localTextView2.setText(2131427817);
    TextView localTextView3 = (TextView)findViewById(2131230878);
    localTextView3.setOnClickListener(this);
    localTextView3.setVisibility(8);
    TextView localTextView4 = (TextView)findViewById(2131230757);
    localTextView4.setOnClickListener(this);
    localTextView4.setText(2131427539);
    getListView().setSelector(2130837790);
    a();
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (!this.d.a())
    {
      Intent localIntent = new Intent(this, ServiceSmsGroupActivity.class);
      ek localek = new ek(this);
      localek.a = this.d.d();
      localek.b = this.i;
      localIntent.putExtra("groupsmsparam", ac.a().a(localek));
      localIntent.putExtra("groupindex", paramInt);
      startActivityForResult(localIntent, 1);
    }
    while (true)
    {
      return;
      this.d.a(paramInt);
      this.d.notifyDataSetChanged();
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.d.a()))
    {
      b(false);
      this.d.a(false);
      this.d.notifyDataSetChanged();
    }
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }

  protected void onPause()
  {
    super.onPause();
    if (this.j != null)
      this.j.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ServicesSmsListActivity
 * JD-Core Version:    0.6.2
 */