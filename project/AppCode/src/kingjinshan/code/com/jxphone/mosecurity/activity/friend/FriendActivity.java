package com.jxphone.mosecurity.activity.friend;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.jxphone.mosecurity.activity.BaseContactActivity;
import com.keniu.security.util.af;
import com.keniu.security.util.aq;
import com.keniu.security.util.av;
import com.keniu.security.util.i;
import java.util.ArrayList;
import java.util.Iterator;

public final class FriendActivity extends BaseContactActivity
{
  public static final String l = "com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE";
  public static final String m = "com.conew.mosecurity.ACTION_CHECK_PWD_END";
  public static final String n = "friend_dummy_space";
  private static final int p = -1;
  View.OnClickListener o = new d(this);
  private com.keniu.security.a q;
  private com.jxphone.mosecurity.activity.a.a r;
  private com.jxphone.mosecurity.c.b[] s;
  private ListView t;
  private final Handler u = new c(this);
  private final com.keniu.security.e.b v = new com.keniu.security.e.b(this.u);
  private ArrayList w = new ArrayList(10);

  private void I()
  {
    this.t = ((ListView)findViewById(2131231095));
    this.t.setOnItemClickListener(new e(this));
    this.t.setOnItemLongClickListener(new f(this));
  }

  private void J()
  {
    this.s = com.jxphone.mosecurity.logic.h.c(this, this.i).b(com.jxphone.mosecurity.c.c.b);
    if (this.s.length == 0)
    {
      a(getString(2131429017));
      FriendTabActivity.a = 2;
    }
    while (true)
    {
      return;
      if (l())
        I();
      this.r = new com.jxphone.mosecurity.activity.a.a(this, this.s, this.i);
      this.t.setAdapter(this.r);
      this.t.setNextFocusDownId(2131230728);
      int i = this.r.getCount();
      if (com.keniu.security.a.a(this).aH())
      {
        String[][] arrayOfString; = new String[5][];
        arrayOfString;[0] = { "s", "0401000301" };
        String[] arrayOfString1 = new String[2];
        arrayOfString1[0] = "uuid";
        arrayOfString1[1] = av.a(this);
        arrayOfString;[1] = arrayOfString1;
        String[] arrayOfString2 = new String[2];
        arrayOfString2[0] = "dt";
        arrayOfString2[1] = i.c(System.currentTimeMillis());
        arrayOfString;[2] = arrayOfString2;
        arrayOfString;[3] = { "actionname", "fd" };
        String[] arrayOfString3 = new String[2];
        arrayOfString3[0] = "res";
        arrayOfString3[1] = Integer.toString(i);
        arrayOfString;[4] = arrayOfString3;
        a(arrayOfString;);
      }
    }
  }

  private static void K()
  {
  }

  private Bundle L()
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putBoolean("isDummy", this.i);
    return localBundle;
  }

  private void M()
  {
    this.t.setOnItemClickListener(new e(this));
    this.t.setOnItemLongClickListener(new f(this));
  }

  private Dialog N()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427865);
    localaq.b(2131428858);
    localaq.b(2131428995, null);
    localaq.a(2131428994, new g(this));
    return localaq.c();
  }

  private Dialog O()
  {
    aq localaq = new aq(this, (byte)0);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = g.b();
    localaq.a(getString(2131428998, arrayOfObject));
    if (this.i)
      localaq.d(2131165205, new h(this));
    while (true)
    {
      return localaq.c();
      localaq.d(2131165204, new j(this));
    }
  }

  private void a(int paramInt)
  {
    if (!com.keniu.security.a.a(this).aH());
    while (true)
    {
      return;
      String[][] arrayOfString; = new String[5][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "uuid";
      arrayOfString1[1] = av.a(this);
      arrayOfString;[1] = arrayOfString1;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "dt";
      arrayOfString2[1] = i.c(System.currentTimeMillis());
      arrayOfString;[2] = arrayOfString2;
      arrayOfString;[3] = { "actionname", "fd" };
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "res";
      arrayOfString3[1] = Integer.toString(paramInt);
      arrayOfString;[4] = arrayOfString3;
      a(arrayOfString;);
    }
  }

  private void a(int paramInt, com.jxphone.mosecurity.c.b paramb)
  {
    g = paramb;
    showDialog(paramInt);
  }

  public static boolean a(Context paramContext)
  {
    com.jxphone.mosecurity.c.b[] arrayOfb = com.jxphone.mosecurity.logic.h.c(paramContext, false).b(com.jxphone.mosecurity.c.c.b);
    boolean bool;
    if (arrayOfb == null)
      bool = false;
    while (true)
    {
      return bool;
      if (arrayOfb.length > 0)
        bool = true;
      else
        bool = false;
    }
  }

  protected final int b()
  {
    return 2131492867;
  }

  protected final void f()
  {
    super.f();
    com.jxphone.mosecurity.logic.h.c(this, this.i).a(this.v);
    I();
    J();
    Intent localIntent = new Intent("com.conew.mosecurity.ACTION_CHECK_PWD_END");
    localIntent.putExtra("isDummy", this.i);
    sendBroadcast(localIntent);
  }

  protected final int i()
  {
    return 2130903128;
  }

  protected final int j()
  {
    return 2130903129;
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ((TextView)findViewById(2131230727)).setText(2131428999);
    Button localButton = (Button)findViewById(2131230728);
    localButton.setVisibility(0);
    localButton.setOnClickListener(this.o);
    localButton.setText(2131428848);
    this.q = com.keniu.security.a.a(this);
    this.i = this.q.ai();
    this.h = com.jxphone.mosecurity.c.c.b;
    f();
  }

  protected final Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    default:
    case -1:
      aq localaq2;
      for (localObject = super.onCreateDialog(paramInt); ; localObject = localaq2.c())
      {
        return localObject;
        localaq2 = new aq(this, (byte)0);
        localaq2.a(2131427865);
        localaq2.b(2131428858);
        localaq2.b(2131428995, null);
        localaq2.a(2131428994, new g(this));
      }
    case 2131165204:
    }
    aq localaq1 = new aq(this, (byte)0);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = g.b();
    localaq1.a(getString(2131428998, arrayOfObject));
    if (this.i)
      localaq1.d(2131165205, new h(this));
    while (true)
    {
      localObject = localaq1.c();
      break;
      localaq1.d(2131165204, new j(this));
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return super.onCreateOptionsMenu(paramMenu);
  }

  protected final void onDestroy()
  {
    super.onDestroy();
    com.jxphone.mosecurity.logic.h.c(this, this.i).b(this.v);
    com.jxphone.mosecurity.c.b.a(this.s);
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool;
    if (paramInt == 5)
    {
      int i = this.t.getSelectedItemPosition();
      if (i != -1)
        af.b(this, this.r.a(i).c());
      bool = true;
    }
    while (true)
    {
      return bool;
      if (paramInt == 4)
      {
        finish();
        bool = true;
      }
      else
      {
        bool = super.onKeyDown(paramInt, paramKeyEvent);
      }
    }
  }

  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool;
    switch (paramMenuItem.getItemId())
    {
    case 2131231767:
    default:
      bool = false;
      return bool;
    case 2131231768:
      showDialog(0);
    case 2131231766:
    }
    while (true)
    {
      bool = true;
      break;
      if (this.s.length > 0)
        showDialog(-1);
      else
        Toast.makeText(this, 2131429017, 0).show();
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    int i;
    MenuItem localMenuItem;
    if ((this.s == null) || ((this.s != null) && (this.s.length <= 0)))
    {
      i = 1;
      localMenuItem = paramMenu.findItem(2131231766);
      if (i != 0)
        break label61;
    }
    label61: for (boolean bool = true; ; bool = false)
    {
      localMenuItem.setEnabled(bool);
      return super.onPrepareOptionsMenu(paramMenu);
      i = 0;
      break;
    }
  }

  protected final void onStart()
  {
    super.onStart();
    setTitle(this.q.aF());
  }

  protected final void onStop()
  {
    Iterator localIterator = this.w.iterator();
    while (localIterator.hasNext())
      ((Dialog)localIterator.next()).dismiss();
    this.w.clear();
    super.onStop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.FriendActivity
 * JD-Core Version:    0.6.2
 */