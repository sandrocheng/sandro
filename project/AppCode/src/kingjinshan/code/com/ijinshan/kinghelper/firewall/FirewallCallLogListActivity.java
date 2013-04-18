package com.ijinshan.kinghelper.firewall;

import android.app.Dialog;
import android.app.ListActivity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kinghelper.common.PickListActivity;
import com.keniu.security.b.r;
import com.keniu.security.main.MainActivity;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.util.ArrayList;

public class FirewallCallLogListActivity extends ListActivity
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  protected static final boolean a = true;
  private static final String e = "FirewallCallLogListActivity";
  private static final String f = "FirewallCallLogListActivity_editmode";
  private q b;
  private boolean c = false;
  private CheckBox d;
  private TextView g;
  private PopupWindow h = null;
  private long i = 0L;

  private void a(int paramInt, long paramLong)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
    }
    com.ijinshan.kinghelper.firewall.a.a.a(this);
    if (com.ijinshan.kinghelper.firewall.a.a.b((int)paramLong) > 0);
    for (int j = 2131427621; ; j = 2131427623)
    {
      Toast.makeText(this, j, 0).show();
      this.b.getCursor().requery();
      this.b.notifyDataSetChanged();
      break;
    }
  }

  private void a(int paramInt, long paramLong, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    switch (paramInt)
    {
    default:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 1:
      while (true)
      {
        return;
        com.ijinshan.kinghelper.firewall.core.i.b(getApplicationContext(), paramString, null, 4, null);
        if (com.ijinshan.kinghelper.a.j.c(this))
        {
          Toast.makeText(this, 2131427632, 1).show();
        }
        else
        {
          Toast.makeText(this, 2131427633, 1).show();
          continue;
          Intent localIntent2 = new Intent("android.intent.action.CALL", Uri.parse("tel:" + paramString));
          try
          {
            startActivity(localIntent2);
          }
          catch (Exception localException)
          {
            Toast.makeText(this, getString(2131427403), 0).show();
          }
          continue;
          if (com.keniu.security.b.e.e(this).a(paramString) != null)
          {
            Toast.makeText(this, 2131427622, 1).show();
          }
          else
          {
            Intent localIntent1 = new Intent("android.intent.action.INSERT");
            localIntent1.setType("vnd.android.cursor.dir/person");
            localIntent1.setType("vnd.android.cursor.dir/contact");
            localIntent1.setType("vnd.android.cursor.dir/raw_contact");
            localIntent1.putExtra("phone", paramString);
            startActivity(localIntent1);
            continue;
            PickListActivity.a(this, localArrayList, 1, 1, "PickListActivity1_white_action");
            continue;
            PickListActivity.a(this, localArrayList, 2, 1, "_PickListActivity1_black_action");
            continue;
            dd.a(this);
            aq localaq = new aq(this, (byte)0);
            View localView = LayoutInflater.from(this).inflate(2130903097, null);
            ((TextView)localView.findViewById(2131231003)).setText(2131427712);
            localaq.a(localView);
            localaq.a(2131427865);
            localaq.b(2131427654, new j(this));
            localaq.a(2131427653, new k(this, paramLong));
            ap localap = localaq.c();
            localap.setOnDismissListener(new l(this, paramLong, paramString));
            localap.show();
          }
        }
      }
    case 0:
    }
    com.ijinshan.kinghelper.firewall.a.a.a(this);
    if (com.ijinshan.kinghelper.firewall.a.a.b((int)paramLong) > 0);
    for (int j = 2131427621; ; j = 2131427623)
    {
      Toast.makeText(this, j, 0).show();
      this.b.getCursor().requery();
      this.b.notifyDataSetChanged();
      break;
    }
  }

  private void a(long paramLong, String paramString)
  {
    dd.a(this);
    aq localaq = new aq(this, (byte)0);
    View localView = LayoutInflater.from(this).inflate(2130903097, null);
    ((TextView)localView.findViewById(2131231003)).setText(2131427712);
    localaq.a(localView);
    localaq.a(2131427865);
    localaq.b(2131427654, new j(this));
    localaq.a(2131427653, new k(this, paramLong));
    ap localap = localaq.c();
    localap.setOnDismissListener(new l(this, paramLong, paramString));
    localap.show();
  }

  private void b()
  {
    LinearLayout localLinearLayout1 = (LinearLayout)findViewById(2131230822);
    LinearLayout localLinearLayout2 = (LinearLayout)findViewById(2131230876);
    localLinearLayout1.setVisibility(8);
    localLinearLayout2.setVisibility(8);
  }

  private void b(long paramLong, String paramString)
  {
    com.ijinshan.kinghelper.firewall.a.a.a(getApplicationContext());
    String str = com.ijinshan.kinghelper.a.i.a(paramString);
    if (TextUtils.isEmpty(str))
      return;
    int j = com.ijinshan.kinghelper.firewall.a.a.e((int)paramLong);
    com.ijinshan.kinghelper.firewall.a.e.a(getApplicationContext());
    if ((!com.ijinshan.kinghelper.firewall.a.e.a(str, 1)) && (!com.ijinshan.kinghelper.firewall.a.e.a(str, 2)))
      com.ijinshan.kinghelper.firewall.a.e.a(1, str, "", 1);
    if (j > 0);
    for (int k = 2131427625; ; k = 2131427626)
    {
      Toast.makeText(this, k, 0).show();
      this.b.getCursor().requery();
      this.b.notifyDataSetChanged();
      break;
    }
  }

  private String c()
  {
    int[] arrayOfInt = this.b.c();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("_id in (");
    int j = 0;
    if (j < arrayOfInt.length)
    {
      if (j == arrayOfInt.length - 1)
        localStringBuilder.append(arrayOfInt[j] + " ");
      while (true)
      {
        j++;
        break;
        localStringBuilder.append(arrayOfInt[j] + ",");
      }
    }
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }

  private void d()
  {
    if (this.b.getCursor().getCount() > 0)
    {
      aq localaq = new aq(this, (byte)0);
      localaq.a(2131427519);
      localaq.b(getString(2131427613));
      localaq.b(2131427542, null);
      localaq.a(2131427541, new o(this));
      localaq.c().show();
    }
    while (true)
    {
      return;
      Toast.makeText(this, 2131427505, 0).show();
    }
  }

  public final void a()
  {
    if (this.c)
    {
      this.c = false;
      b();
    }
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.h != null) && (this.h.isShowing()))
    {
      this.h.dismiss();
      this.h = null;
      this.i = System.currentTimeMillis();
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131230878)
      if (this.b.getCount() <= 0)
        Toast.makeText(this, 2131427655, 0).show();
    while (true)
    {
      return;
      if (this.b.a().size() <= 0)
      {
        Toast.makeText(this, 2131427830, 0).show();
      }
      else
      {
        aq localaq = new aq(this, (byte)0);
        localaq.a(2131427519);
        localaq.b(getString(2131427611, new Object[] { "" }));
        localaq.b(17039360, null);
        localaq.a(17039370, new m(this));
        localaq.c().show();
        continue;
        if (paramView.getId() == 2131230756)
        {
          if (this.b.getCount() <= 0)
          {
            Toast.makeText(this, 2131427655, 0).show();
          }
          else if (this.b.a().size() <= 0)
          {
            Toast.makeText(this, 2131427829, 0).show();
          }
          else
          {
            String str2 = c();
            Log.e("FirewallCallLogListActivity", "restore=" + str2);
            com.ijinshan.kinghelper.firewall.a.a.a(str2);
            this.b.getCursor().requery();
            setListAdapter(this.b);
            this.b.b();
            if (this.b.getCount() <= 0)
            {
              this.c = false;
              b();
            }
            this.b.notifyDataSetChanged();
            Toast.makeText(this, 2131427624, 0).show();
          }
        }
        else if (paramView.getId() == 2131230874)
        {
          if (200L + this.i <= System.currentTimeMillis())
            if (this.h != null)
            {
              this.h.dismiss();
              this.h = null;
            }
            else
            {
              View localView = ((LayoutInflater)getApplicationContext().getSystemService("layout_inflater")).inflate(2130903252, null);
              this.h = new PopupWindow(localView, -2, -2);
              this.h.setTouchable(true);
              this.h.showAsDropDown(paramView, 0, 5);
              localView.findViewById(2131231506).setOnClickListener(new n(this));
              localView.findViewById(2131231507).setVisibility(8);
              localView.findViewById(2131231509).setVisibility(8);
              localView.findViewById(2131231508).setVisibility(8);
              localView.findViewById(2131231510).setVisibility(8);
              this.i = 0L;
            }
        }
        else if ((paramView.getId() == 2131230873) && (!dd.d()))
        {
          dd.a(true);
          String str1 = getString(2131427413);
          this.g.setText(str1 + dd.g().a());
          Toast.makeText(this, getString(2131427415), 0).show();
          this.g.setTextColor(-10175726);
        }
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    dd.a(this);
    requestWindowFeature(1);
    setContentView(2130903061);
    com.ijinshan.kinghelper.firewall.a.a.a(getApplicationContext());
    Cursor localCursor = com.ijinshan.kinghelper.firewall.a.a.b(null, null, "date DESC");
    startManagingCursor(localCursor);
    this.b = new q(this, this, localCursor);
    setListAdapter(this.b);
    getListView().setOnItemLongClickListener(new h(this));
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("new", Integer.valueOf(0));
    com.ijinshan.kinghelper.firewall.a.a.c(localContentValues);
    getListView().setOnItemClickListener(this);
    TextView localTextView = (TextView)findViewById(2131230797);
    localTextView.setVisibility(0);
    localTextView.setText(2131427505);
    findViewById(2131230756).setOnClickListener(this);
    findViewById(2131230878).setOnClickListener(this);
    findViewById(2131230874).setOnClickListener(this);
    if (getIntent().getIntExtra("FirewallCallLogListActivity_editmode", 0) != 1)
      if (paramBundle == null)
        com.jxphone.mosecurity.a.a.i(this, "telman_log");
    for (this.c = false; ; this.c = true)
    {
      b();
      return;
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    Cursor localCursor = this.b.getCursor();
    stopManagingCursor(localCursor);
    localCursor.close();
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (this.c)
      this.b.a(paramInt);
    while (true)
    {
      return;
      Intent localIntent = new Intent(this, FirewallLogDetailActivity.class);
      localIntent.putExtra("FirewallLogDetailActivity_LOG_TYPE", "FirewallLogDetailActivity_LOG_TYPE_CALL");
      Cursor localCursor = (Cursor)this.b.getItem(paramInt);
      localIntent.putExtra("FirewallLogDetailActivity_LOG_ID", localCursor.getInt(localCursor.getColumnIndex("_id")));
      startActivity(localIntent);
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool;
    if (paramInt == 4)
      if (this.c)
      {
        this.c = false;
        b();
        bool = true;
      }
    while (true)
    {
      return bool;
      if (this.h != null)
      {
        this.h.dismiss();
        this.h = null;
        bool = true;
      }
      else
      {
        finish();
        startActivity(new Intent(this, MainActivity.class));
        bool = super.onKeyDown(paramInt, paramKeyEvent);
      }
    }
  }

  protected void onPause()
  {
    super.onPause();
    if ((this.h != null) && (this.h.isShowing()))
    {
      this.h.dismiss();
      this.h = null;
    }
    com.ijinshan.kinghelper.firewall.core.h.a(this);
  }

  protected void onResume()
  {
    super.onResume();
    dd.a(this);
    this.g = ((TextView)findViewById(2131230873));
    if (dd.d())
    {
      String str2 = getString(2131427413);
      this.g.setText(str2 + dd.g().a());
      this.g.setTextColor(-10175726);
    }
    while (true)
    {
      this.b.getCursor().requery();
      b();
      return;
      String str1 = getString(2131427414);
      this.g.setText(str1);
      this.g.setTextColor(-1857494);
      this.g.setOnClickListener(this);
    }
  }

  protected void onStart()
  {
    super.onStart();
    com.ijinshan.kinghelper.firewall.core.h.a(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallCallLogListActivity
 * JD-Core Version:    0.6.2
 */