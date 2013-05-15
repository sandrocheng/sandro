package com.avast.android.mobilesecurity.app.trafficinfo;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.e.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ListView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.generic.util.u;
import com.avast.android.generic.util.y;
import com.avast.android.mobilesecurity.app.manager.AppDetailActivity;
import com.avast.android.mobilesecurity.ui.widget.TrafficinfoTypeRow;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TrafficinfoFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks, View.OnClickListener, y
{
  private com.avast.android.mobilesecurity.t a;
  private int b;
  private int c = 11;
  private List d = new ArrayList();
  private boolean e;
  private boolean f = false;
  private TrafficinfoTypeRow g;
  private BroadcastReceiver h = new v(this);
  private int i;

  // ERROR //
  private void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 51	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:isAdded	()Z
    //   4: ifne +4 -> 8
    //   7: return
    //   8: new 53	java/util/HashMap
    //   11: dup
    //   12: invokespecial 54	java/util/HashMap:<init>	()V
    //   15: astore_1
    //   16: aload_0
    //   17: invokevirtual 58	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   20: invokevirtual 64	android/support/v4/app/FragmentActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   23: invokestatic 69	com/avast/android/mobilesecurity/r:a	()Landroid/net/Uri;
    //   26: getstatic 72	com/avast/android/mobilesecurity/r:a	[Ljava/lang/String;
    //   29: ldc 74
    //   31: aconst_null
    //   32: aconst_null
    //   33: invokevirtual 80	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   36: astore_3
    //   37: aload_3
    //   38: ifnull +45 -> 83
    //   41: aload_3
    //   42: invokeinterface 85 1 0
    //   47: istore 8
    //   49: iload 8
    //   51: ifeq +22 -> 73
    //   54: aload_3
    //   55: aload_1
    //   56: invokestatic 90	com/avast/android/mobilesecurity/app/trafficinfo/a:a	(Landroid/database/Cursor;Ljava/util/HashMap;)Lcom/avast/android/mobilesecurity/app/trafficinfo/a;
    //   59: pop
    //   60: aload_3
    //   61: invokeinterface 93 1 0
    //   66: istore 11
    //   68: iload 11
    //   70: ifne -16 -> 54
    //   73: aload_3
    //   74: ifnull +9 -> 83
    //   77: aload_3
    //   78: invokeinterface 96 1 0
    //   83: aload_1
    //   84: ldc2_w 97
    //   87: invokestatic 104	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   90: invokevirtual 108	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   93: ifeq +405 -> 498
    //   96: aload_1
    //   97: ldc2_w 97
    //   100: invokestatic 104	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   103: invokevirtual 112	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   106: checkcast 87	com/avast/android/mobilesecurity/app/trafficinfo/a
    //   109: astore 4
    //   111: aload 4
    //   113: ifnull +379 -> 492
    //   116: aload_0
    //   117: getfield 31	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:c	I
    //   120: bipush 11
    //   122: if_icmpne +136 -> 258
    //   125: aload 4
    //   127: getfield 115	com/avast/android/mobilesecurity/app/trafficinfo/a:d	Lcom/avast/android/mobilesecurity/app/trafficinfo/b;
    //   130: astore 5
    //   132: aload_0
    //   133: getfield 117	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:b	I
    //   136: tableswitch	default:+368 -> 504, 1:+32->168, 2:+163->299, 3:+224->360, 4:+285->421
    //   169: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   172: iconst_0
    //   173: invokevirtual 124	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:f	(Z)V
    //   176: aload_0
    //   177: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   180: iconst_0
    //   181: invokevirtual 126	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:e	(Z)V
    //   184: aload_0
    //   185: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   188: iconst_0
    //   189: invokevirtual 128	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:d	(Z)V
    //   192: aload 5
    //   194: ifnull +93 -> 287
    //   197: aload_0
    //   198: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   201: aload 5
    //   203: getfield 133	com/avast/android/mobilesecurity/app/trafficinfo/b:h	J
    //   206: aload 5
    //   208: getfield 135	com/avast/android/mobilesecurity/app/trafficinfo/b:i	J
    //   211: invokevirtual 138	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:a	(JJ)V
    //   214: goto -207 -> 7
    //   217: astore_2
    //   218: ldc 140
    //   220: ldc 142
    //   222: aload_2
    //   223: invokestatic 147	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   226: goto -219 -> 7
    //   229: astore 10
    //   231: ldc 149
    //   233: ldc 151
    //   235: aload 10
    //   237: invokestatic 147	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   240: goto -180 -> 60
    //   243: astore 6
    //   245: aload_3
    //   246: ifnull +9 -> 255
    //   249: aload_3
    //   250: invokeinterface 96 1 0
    //   255: aload 6
    //   257: athrow
    //   258: aload_0
    //   259: getfield 31	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:c	I
    //   262: bipush 12
    //   264: if_icmpne +13 -> 277
    //   267: aload 4
    //   269: getfield 153	com/avast/android/mobilesecurity/app/trafficinfo/a:e	Lcom/avast/android/mobilesecurity/app/trafficinfo/b;
    //   272: astore 5
    //   274: goto -142 -> 132
    //   277: aload 4
    //   279: getfield 155	com/avast/android/mobilesecurity/app/trafficinfo/a:f	Lcom/avast/android/mobilesecurity/app/trafficinfo/b;
    //   282: astore 5
    //   284: goto -152 -> 132
    //   287: aload_0
    //   288: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   291: lconst_0
    //   292: lconst_0
    //   293: invokevirtual 138	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:a	(JJ)V
    //   296: goto -289 -> 7
    //   299: aload_0
    //   300: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   303: iconst_0
    //   304: invokevirtual 157	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:c	(Z)V
    //   307: aload_0
    //   308: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   311: iconst_0
    //   312: invokevirtual 126	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:e	(Z)V
    //   315: aload_0
    //   316: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   319: iconst_0
    //   320: invokevirtual 128	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:d	(Z)V
    //   323: aload 5
    //   325: ifnull +23 -> 348
    //   328: aload_0
    //   329: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   332: aload 5
    //   334: getfield 159	com/avast/android/mobilesecurity/app/trafficinfo/b:b	J
    //   337: aload 5
    //   339: getfield 161	com/avast/android/mobilesecurity/app/trafficinfo/b:c	J
    //   342: invokevirtual 163	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:c	(JJ)V
    //   345: goto -338 -> 7
    //   348: aload_0
    //   349: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   352: lconst_0
    //   353: lconst_0
    //   354: invokevirtual 163	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:c	(JJ)V
    //   357: goto -350 -> 7
    //   360: aload_0
    //   361: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   364: iconst_0
    //   365: invokevirtual 157	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:c	(Z)V
    //   368: aload_0
    //   369: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   372: iconst_0
    //   373: invokevirtual 124	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:f	(Z)V
    //   376: aload_0
    //   377: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   380: iconst_0
    //   381: invokevirtual 128	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:d	(Z)V
    //   384: aload 5
    //   386: ifnull +23 -> 409
    //   389: aload_0
    //   390: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   393: aload 5
    //   395: getfield 165	com/avast/android/mobilesecurity/app/trafficinfo/b:d	J
    //   398: aload 5
    //   400: getfield 167	com/avast/android/mobilesecurity/app/trafficinfo/b:e	J
    //   403: invokevirtual 169	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:b	(JJ)V
    //   406: goto -399 -> 7
    //   409: aload_0
    //   410: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   413: lconst_0
    //   414: lconst_0
    //   415: invokevirtual 169	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:b	(JJ)V
    //   418: goto -411 -> 7
    //   421: aload_0
    //   422: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   425: iconst_0
    //   426: invokevirtual 157	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:c	(Z)V
    //   429: aload_0
    //   430: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   433: iconst_0
    //   434: invokevirtual 124	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:f	(Z)V
    //   437: aload_0
    //   438: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   441: iconst_0
    //   442: invokevirtual 126	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:e	(Z)V
    //   445: aload 5
    //   447: ifnull +23 -> 470
    //   450: aload_0
    //   451: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   454: aload 5
    //   456: getfield 171	com/avast/android/mobilesecurity/app/trafficinfo/b:f	J
    //   459: aload 5
    //   461: getfield 173	com/avast/android/mobilesecurity/app/trafficinfo/b:g	J
    //   464: invokevirtual 175	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:d	(JJ)V
    //   467: goto -460 -> 7
    //   470: aload_0
    //   471: getfield 119	com/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment:g	Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;
    //   474: lconst_0
    //   475: lconst_0
    //   476: invokevirtual 175	com/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow:d	(JJ)V
    //   479: goto -472 -> 7
    //   482: astore 9
    //   484: goto -401 -> 83
    //   487: astore 7
    //   489: goto -234 -> 255
    //   492: aconst_null
    //   493: astore 5
    //   495: goto -363 -> 132
    //   498: aconst_null
    //   499: astore 4
    //   501: goto -390 -> 111
    //   504: goto -497 -> 7
    //
    // Exception table:
    //   from	to	target	type
    //   8	37	217	java/lang/Exception
    //   83	214	217	java/lang/Exception
    //   255	479	217	java/lang/Exception
    //   54	60	229	java/lang/Exception
    //   41	49	243	finally
    //   54	60	243	finally
    //   60	68	243	finally
    //   231	240	243	finally
    //   77	83	482	java/lang/Exception
    //   249	255	487	java/lang/Exception
  }

  private void a(String paramString)
  {
    AppDetailActivity.call(getActivity(), paramString, 0, 2131165401);
  }

  private void a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    this.g = new TrafficinfoTypeRow(getActivity(), "");
    if (this.f)
      this.g.c();
    a();
    this.g.b(8);
    this.g.c(paramString1);
    this.g.d(paramString2);
    this.g.a(true);
    this.d.add(this.g);
    if (paramBoolean)
      getListView().addHeaderView(this.g);
    while (true)
    {
      return;
      getListView().addFooterView(this.g);
    }
  }

  private void c()
  {
    if ((getActivity() == null) || (getActivity().isFinishing()) || (!isAdded()))
      com.avast.android.generic.util.m.d("TrafficinfoFragment.refresh() - END");
    while (true)
    {
      return;
      com.avast.android.generic.util.m.d("TrafficinfoFragment.refresh()");
      LoaderManager localLoaderManager = getActivity().getSupportLoaderManager();
      Bundle localBundle = new Bundle();
      localBundle.putInt("order", this.b);
      localBundle.putInt("period", this.c);
      localLoaderManager.restartLoader(this.i, localBundle, this);
      a();
    }
  }

  private void d()
  {
    try
    {
      com.avast.android.generic.util.t.a("AvastMobileSecurity", "Registered stats receiver");
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("com.avast.android.mobilesecurity.trafficinfo.STATS_DB_UPDATED");
      getActivity().registerReceiver(this.h, localIntentFilter);
      label36: return;
    }
    catch (Exception localException)
    {
      break label36;
    }
  }

  private void e()
  {
    try
    {
      com.avast.android.generic.util.t.a("AvastMobileSecurity", "Unregistered stats receiver");
      getActivity().unregisterReceiver(this.h);
      label19: return;
    }
    catch (Exception localException)
    {
      break label19;
    }
  }

  public void a(int paramInt)
  {
    this.c = paramInt;
    c();
  }

  public void a(int paramInt1, Object paramObject, Cursor paramCursor, Uri paramUri, int paramInt2)
  {
  }

  public void a(android.support.v4.a.m paramm, Cursor paramCursor)
  {
    com.avast.android.generic.util.m.c("TrafficinfoFragment.onLoadFinished() - " + paramCursor.getCount());
    a locala = (a)getListAdapter();
    if (locala != null)
    {
      Cursor localCursor = locala.swapCursor(paramCursor);
      if (localCursor != null)
        localCursor.close();
    }
  }

  public int a_()
  {
    return 2131493723;
  }

  public String f()
  {
    return null;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    setListAdapter(new w(this, getActivity().getApplicationContext(), null));
    LoaderManager localLoaderManager = getActivity().getSupportLoaderManager();
    Bundle localBundle = new Bundle();
    localBundle.putInt("order", this.b);
    localBundle.putInt("period", this.c);
    this.i = (157000 + 100 * this.b);
    localLoaderManager.initLoader(this.i, localBundle, this);
    com.avast.android.generic.util.m.c("TrafficinfoFragment.onActivityCreated()");
    this.e = true;
  }

  public void onClick(View paramView)
  {
    a((String)paramView.getTag());
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    int j = getArguments().getInt("argument_order", -1);
    if (!u.a(getActivity()))
      if (j < 0)
        j = 3;
    for (this.b = j; ; this.b = j)
    {
      if (paramBundle != null)
      {
        this.b = paramBundle.getInt("order");
        this.c = paramBundle.getInt("period");
      }
      com.avast.android.generic.util.m.b("breadcrumbs", "Initial order mode: " + this.b);
      this.a = ((com.avast.android.mobilesecurity.t)ad.a(getActivity(), com.avast.android.mobilesecurity.t.class));
      if (getResources().getConfiguration().orientation == 2)
        this.f = true;
      setHasOptionsMenu(true);
      return;
      if (j < 0)
        j = 2;
    }
  }

  public android.support.v4.a.m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    com.avast.android.generic.util.m.c("TrafficinfoFragment.onCreateLoader() - " + paramBundle);
    return new g(getActivity(), paramBundle.getInt("order"), paramBundle.getInt("period"));
  }

  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755012, paramMenu);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903147, paramViewGroup, false);
  }

  public void onDestroyView()
  {
    super.onDestroyView();
    e();
  }

  public void onLoaderReset(android.support.v4.a.m paramm)
  {
    com.avast.android.generic.util.m.c("TrafficinfoFragment.onLoaderReset()");
    a locala = (a)getListAdapter();
    if (locala != null)
      locala.changeCursor(null);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131165757:
    }
    for (boolean bool = super.onOptionsItemSelected(paramMenuItem); ; bool = true)
    {
      return bool;
      TrafficInfoSettingsActivity.call(getActivity());
    }
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
    if (!this.e)
    {
      com.avast.android.generic.util.m.d("TrafficinfoFragment.onResume()");
      c();
      ((a)getListAdapter()).notifyDataSetChanged();
    }
    boolean bool = this.a.aK();
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
      ((TrafficinfoTypeRow)localIterator.next()).setEnabled(bool);
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("order", this.b);
    paramBundle.putInt("period", this.c);
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    a(getString(2131493744), getString(2131493745), "ALL", true);
    getListView().setItemsCanFocus(true);
    d();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.TrafficinfoFragment
 * JD-Core Version:    0.6.2
 */