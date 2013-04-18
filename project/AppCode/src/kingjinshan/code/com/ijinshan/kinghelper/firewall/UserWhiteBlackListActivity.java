package com.ijinshan.kinghelper.firewall;

import android.app.Dialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kinghelper.firewall.a.e;
import com.ijinshan.kinghelper.firewall.a.g;
import com.keniu.security.main.MainActivity;
import com.keniu.security.util.af;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

public class UserWhiteBlackListActivity extends ListActivity
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  private static final boolean a = true;
  private static final String b = "UserWhiteBlackListActivity";
  private static final int c = 16384;
  private static final int d = 1;
  private int e;
  private String f;
  private ff g;
  private RadioGroup h;
  private DataSetObserver i = new ex(this);
  private DialogInterface.OnClickListener j = new fc(this);

  private Context a()
  {
    return getParent();
  }

  private void a(int paramInt)
  {
    removeDialog(16384);
    this.e = paramInt;
    com.keniu.security.a.a(this);
    int k;
    String str;
    label45: int m;
    label142: label188: int n;
    label218: TextView localTextView2;
    if (this.e == 2)
    {
      k = 2131427329;
      setTitle(k);
      if (this.e != 2)
        break label262;
      str = "_PickListActivity1_black_action";
      this.f = str;
      ((RadioGroup)findViewById(2131230867)).setVisibility(0);
      e.a(getApplicationContext());
      Cursor localCursor = e.b(this.e);
      startManagingCursor(localCursor);
      this.g = new ff(this, this, localCursor);
      setListAdapter(this.g);
      this.g.registerDataSetObserver(this.i);
      getListView().setOnItemClickListener(this);
      if (this.e != 2)
        break label269;
      com.jxphone.mosecurity.a.a.i(this, "sao_blist");
      LinearLayout localLinearLayout = (LinearLayout)findViewById(2131230871);
      localLinearLayout.setVisibility(0);
      localLinearLayout.setOnClickListener(this);
      TextView localTextView1 = (TextView)findViewById(2131230873);
      if (2 != this.e)
        break label278;
      m = 2131427330;
      localTextView1.setText(m);
      ImageView localImageView = (ImageView)findViewById(2131230877);
      if (2 != this.e)
        break label285;
      n = 2130837608;
      localImageView.setImageResource(n);
      localTextView2 = (TextView)findViewById(2131230797);
      if (2 != this.e)
        break label292;
    }
    label262: label269: label278: label285: label292: for (int i1 = 2131427513; ; i1 = 2131427514)
    {
      localTextView2.setText(i1);
      return;
      k = 2131427334;
      break;
      str = "PickListActivity1_white_action";
      break label45;
      com.jxphone.mosecurity.a.a.i(this, "sao_wlist");
      break label142;
      m = 2131427335;
      break label188;
      n = 2130837609;
      break label218;
    }
  }

  private void a(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      g localg2 = g.a((Cursor)this.g.getItem(paramInt2));
      aq localaq = new aq(getParent(), (byte)0);
      localaq.a(2131427519);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = ("(" + localg2.f + ")");
      String str3 = getString(2131427520, arrayOfObject1);
      if (localg2.e == 5)
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = (getString(2131427735, new Object[] { "" }) + " " + localg2.f + " ");
        str3 = getString(2131427520, arrayOfObject3);
      }
      if (localg2.e == 6)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = (" " + localg2.f + " ");
        str3 = getString(2131427520, arrayOfObject2);
      }
      localaq.b(str3);
      localaq.b(2131427542, null);
      localaq.a(2131427541, new fd(this, localg2));
      localaq.c().show();
      continue;
      g localg1 = g.a((Cursor)this.g.getItem(paramInt2));
      if (localg1.e == 1)
      {
        Intent localIntent4 = getIntent();
        localIntent4.setClass(this, UserWhiteBlackAddActivity.class);
        localIntent4.putExtra("UserWhiteBlackAddActivity_rule", localg1);
        localIntent4.putExtra("rule_type", this.e);
        localIntent4.addFlags(268435456);
        startActivity(localIntent4);
      }
      else if (localg1.e == 6)
      {
        Intent localIntent3 = getIntent();
        localIntent3.setClass(this, UserBlackAddByAreasActivity.class);
        localIntent3.putExtra("UserWhiteBlackAddActivity_rule", localg1);
        localIntent3.addFlags(268435456);
        startActivity(localIntent3);
      }
      else if (localg1.e == 5)
      {
        Intent localIntent2 = getIntent();
        localIntent2.setClass(this, UserBlackAddByNumbersActivity.class);
        localIntent2.putExtra("UserWhiteBlackAddActivity_rule", localg1);
        localIntent2.addFlags(268435456);
        startActivity(localIntent2);
        continue;
        String str2 = g.a((Cursor)this.g.getItem(paramInt2)).f;
        if (!TextUtils.isEmpty(str2))
        {
          Intent localIntent1 = new Intent("android.intent.action.CALL", Uri.parse("tel:" + str2));
          try
          {
            startActivity(localIntent1);
          }
          catch (Exception localException)
          {
            Toast.makeText(this, getString(2131427403), 0).show();
          }
          continue;
          String str1 = g.a((Cursor)this.g.getItem(paramInt2)).f;
          if (!TextUtils.isEmpty(str1))
            af.e(this, str1);
        }
      }
    }
  }

  private void a(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131231777:
    case 2131231778:
    }
    while (true)
    {
      return;
      Intent localIntent = getIntent();
      localIntent.setClass(this, UserWhiteBlackAddActivity.class);
      localIntent.removeExtra("UserWhiteBlackAddActivity_rule");
      localIntent.addFlags(268435456);
      startActivityForResult(localIntent, 1);
      continue;
      AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
      if (localAdapterContextMenuInfo != null)
      {
        Cursor localCursor = (Cursor)this.g.getItem(localAdapterContextMenuInfo.position);
        e.a(localCursor.getLong(localCursor.getColumnIndex("_id")));
        localCursor.requery();
        setListAdapter(this.g);
      }
    }
  }

  private Dialog b()
  {
    aq localaq = new aq(getParent(), (byte)0);
    localaq.a(2131427647);
    if (this.e == 2)
      localaq.d(2131165241, this.j);
    while (true)
    {
      return localaq.c();
      localaq.d(2131165242, this.j);
    }
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.dispatchTouchEvent(paramMotionEvent);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Log.d("UserWhiteBlackListActivity", "onActivityResult requestCode=" + paramInt1 + ",resultCode=" + paramInt2);
    if ((paramInt1 == 1) && (paramInt2 == -1))
    {
      this.g.getCursor().requery();
      setListAdapter(this.g);
      Log.d("UserWhiteBlackListActivity", "reflash list");
    }
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131230871)
      showDialog(16384);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    dd.a(this);
    setContentView(2130903060);
    this.h = ((RadioGroup)findViewById(2131230867));
    this.h.setOnCheckedChangeListener(new ey(this));
    ((RadioButton)findViewById(2131230868)).setChecked(true);
    ((ImageView)findViewById(2131230872)).setVisibility(0);
    a(2);
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    aq localaq;
    if (paramInt == 16384)
    {
      localaq = new aq(getParent(), (byte)0);
      localaq.a(2131427647);
      if (this.e == 2)
        localaq.d(2131165241, this.j);
    }
    for (Object localObject = localaq.c(); ; localObject = super.onCreateDialog(paramInt))
    {
      return localObject;
      localaq.d(2131165242, this.j);
      break;
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  protected void onDestroy()
  {
    this.g.unregisterDataSetObserver(this.i);
    super.onDestroy();
    Cursor localCursor = this.g.getCursor();
    localCursor.close();
    stopManagingCursor(localCursor);
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    String[] arrayOfString1 = getResources().getStringArray(2131165186);
    String[] arrayOfString2 = getResources().getStringArray(2131165185);
    aq localaq = new aq(this, (byte)0);
    g localg = g.a((Cursor)this.g.getItem(paramInt));
    localaq.a(2131427933);
    if (this.e == 2)
      if (localg.e == 1)
      {
        localaq.a(arrayOfString1, new ez(this, paramInt));
        localaq.c().show();
      }
    while (true)
    {
      return;
      localaq.a(arrayOfString2, new fa(this, paramInt));
      localaq.c().show();
      continue;
      localaq.a(arrayOfString1, new fb(this, paramInt));
      localaq.c().show();
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      finish();
      startActivity(new Intent(this, MainActivity.class));
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131231777:
    case 2131231778:
    }
    while (true)
    {
      return true;
      Intent localIntent = getIntent();
      localIntent.setClass(this, UserWhiteBlackAddActivity.class);
      localIntent.removeExtra("UserWhiteBlackAddActivity_rule");
      localIntent.addFlags(268435456);
      startActivityForResult(localIntent, 1);
      continue;
      AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
      if (localAdapterContextMenuInfo != null)
      {
        Cursor localCursor = (Cursor)this.g.getItem(localAdapterContextMenuInfo.position);
        e.a(localCursor.getLong(localCursor.getColumnIndex("_id")));
        localCursor.requery();
        setListAdapter(this.g);
      }
    }
  }

  protected void onPause()
  {
    super.onPause();
  }

  protected void onStart()
  {
    super.onStart();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.UserWhiteBlackListActivity
 * JD-Core Version:    0.6.2
 */