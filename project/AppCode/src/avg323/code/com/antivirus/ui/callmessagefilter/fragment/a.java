package com.antivirus.ui.callmessagefilter.fragment;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Bundle;
import android.support.v4.app.ad;
import android.support.v4.app.ae;
import android.support.v4.app.i;
import android.text.format.DateUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.TextView;
import com.antivirus.m;
import com.antivirus.ui.callmessagefilter.contacts.ContactsViewActivity;
import com.antivirus.ui.callmessagefilter.j;
import com.antivirus.ui.callmessagefilter.v;
import com.antivirus.ui.callmessagefilter.w;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public abstract class a extends s
  implements ae
{
  protected static final String[] a = { "_id", "display_name", "photo_id" };
  protected w b;
  protected com.antivirus.ui.callmessagefilter.a c;
  protected int d;
  protected v e;
  protected TextView f;
  protected boolean g;
  protected boolean h;
  protected long i = -1L;

  protected abstract v F();

  protected void G()
  {
    this.g = false;
  }

  public w H()
  {
    return this.b;
  }

  protected void I()
  {
    i locali = h();
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(locali);
    View localView = LayoutInflater.from(locali).inflate(2130903071, null);
    localBuilder.setTitle(a(2131296439));
    localBuilder.setView(localView);
    localBuilder.setMessage(a(2131296770));
    localView.findViewById(2131230904).setVisibility(8);
    localBuilder.setPositiveButton(2131296269, new d(this));
    localBuilder.create().show();
  }

  protected abstract j J();

  protected abstract void K();

  protected abstract void L();

  public android.support.v4.a.c a(int paramInt, Bundle paramBundle)
  {
    b localb = new b(this, h());
    localb.i();
    return localb;
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    this.f = ((TextView)localView.findViewById(2131230937));
    this.f.setClickable(false);
    a();
    this.f.setText(e(this.b.a()));
    return localView;
  }

  protected com.antivirus.ui.callmessagefilter.contacts.a a(com.antivirus.ui.callmessagefilter.d paramd, Context paramContext)
  {
    return new com.antivirus.ui.callmessagefilter.contacts.a(com.antivirus.core.b.a.b.a(paramContext).a(paramd.f()));
  }

  protected String a(long paramLong)
  {
    Date localDate = new Date(paramLong);
    String str;
    if (DateUtils.isToday(paramLong))
      str = android.text.format.DateFormat.getTimeFormat(h()).format(localDate);
    while (true)
    {
      return str;
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.setTime(localDate);
      localCalendar.add(6, 1);
      if (DateUtils.isToday(localCalendar.getTimeInMillis()))
        str = a(2131296773);
      else
        str = java.text.DateFormat.getDateInstance(2, Locale.getDefault()).format(localDate);
    }
  }

  protected abstract void a();

  protected void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
      c(paramInt);
    this.c.a(this.b.b());
  }

  protected void a(Context paramContext, com.antivirus.ui.callmessagefilter.d paramd)
  {
    Intent localIntent = new Intent(paramContext, ContactsViewActivity.class);
    localIntent.putExtra("display_name", paramd.a());
    localIntent.putExtra("phone_number", paramd.f());
    localIntent.putExtra("use_named_filter", true);
    paramContext.startActivity(localIntent);
  }

  public void a(android.support.v4.a.c paramc)
  {
  }

  public void a(android.support.v4.a.c paramc, Void paramVoid)
  {
    this.h = true;
    if (!N().isShown())
    {
      a(true);
      c(this.b.a());
    }
  }

  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if (paramLong < 0L);
    while (true)
    {
      return;
      super.a(paramListView, paramView, paramInt, paramLong);
      b(this.c.a((int)paramLong));
    }
  }

  protected void a(com.antivirus.ui.callmessagefilter.d paramd)
  {
    a(paramd, -1);
  }

  protected void a(com.antivirus.ui.callmessagefilter.d paramd, int paramInt)
  {
    i locali = h();
    if (locali != null)
      locali.runOnUiThread(new c(this, paramInt, paramd));
  }

  protected boolean a(String paramString)
  {
    boolean bool = true;
    if ((paramString == null) || (paramString.equals("")));
    while (true)
    {
      return bool;
      if (paramString.matches("-?\\d+(\\.\\d+)?"));
      try
      {
        long l = Long.parseLong(paramString);
        if (l > 0L)
          bool = false;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        bool = false;
      }
    }
  }

  // ERROR //
  protected android.util.Pair b(String paramString)
  {
    // Byte code:
    //   0: getstatic 339	android/provider/ContactsContract$PhoneLookup:CONTENT_FILTER_URI	Landroid/net/Uri;
    //   3: aload_1
    //   4: invokestatic 345	android/net/Uri:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   7: invokestatic 349	android/net/Uri:withAppendedPath	(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    //   10: astore_2
    //   11: aload_0
    //   12: invokevirtual 54	com/antivirus/ui/callmessagefilter/fragment/a:h	()Landroid/support/v4/app/i;
    //   15: invokevirtual 355	android/support/v4/app/i:getContentResolver	()Landroid/content/ContentResolver;
    //   18: aload_2
    //   19: getstatic 35	com/antivirus/ui/callmessagefilter/fragment/a:a	[Ljava/lang/String;
    //   22: aconst_null
    //   23: aconst_null
    //   24: aconst_null
    //   25: invokevirtual 361	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   28: astore 9
    //   30: aload 9
    //   32: astore 4
    //   34: aload 4
    //   36: invokeinterface 366 1 0
    //   41: ifeq +69 -> 110
    //   44: aload 4
    //   46: aload 4
    //   48: ldc 31
    //   50: invokeinterface 370 2 0
    //   55: invokeinterface 373 2 0
    //   60: astore 11
    //   62: aload 4
    //   64: aload 4
    //   66: ldc 33
    //   68: invokeinterface 370 2 0
    //   73: invokeinterface 373 2 0
    //   78: astore 12
    //   80: aload 12
    //   82: astore 8
    //   84: aload 11
    //   86: astore_1
    //   87: aload 4
    //   89: ifnull +10 -> 99
    //   92: aload 4
    //   94: invokeinterface 376 1 0
    //   99: new 378	android/util/Pair
    //   102: dup
    //   103: aload_1
    //   104: aload 8
    //   106: invokespecial 381	android/util/Pair:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   109: areturn
    //   110: aconst_null
    //   111: astore 8
    //   113: goto -26 -> 87
    //   116: astore 5
    //   118: aconst_null
    //   119: astore 6
    //   121: invokestatic 384	com/avg/toolkit/f/a:a	()V
    //   124: aload 6
    //   126: ifnull +59 -> 185
    //   129: aload 6
    //   131: invokeinterface 376 1 0
    //   136: aconst_null
    //   137: astore 8
    //   139: goto -40 -> 99
    //   142: astore_3
    //   143: aconst_null
    //   144: astore 4
    //   146: aload 4
    //   148: ifnull +10 -> 158
    //   151: aload 4
    //   153: invokeinterface 376 1 0
    //   158: aload_3
    //   159: athrow
    //   160: astore_3
    //   161: goto -15 -> 146
    //   164: astore 7
    //   166: aload 6
    //   168: astore 4
    //   170: aload 7
    //   172: astore_3
    //   173: goto -27 -> 146
    //   176: astore 10
    //   178: aload 4
    //   180: astore 6
    //   182: goto -61 -> 121
    //   185: aconst_null
    //   186: astore 8
    //   188: goto -89 -> 99
    //
    // Exception table:
    //   from	to	target	type
    //   11	30	116	java/lang/Exception
    //   11	30	142	finally
    //   34	80	160	finally
    //   121	124	164	finally
    //   34	80	176	java/lang/Exception
  }

  public void b(int paramInt)
  {
    a(paramInt, true);
  }

  protected void b(com.antivirus.ui.callmessagefilter.d paramd)
  {
    i locali = h();
    com.antivirus.ui.callmessagefilter.contacts.a locala = a(paramd, locali);
    J().a(locali, paramd, locala, this.e);
  }

  protected void b(com.antivirus.ui.callmessagefilter.d paramd, int paramInt)
  {
    this.c.a(paramd, paramInt);
    if (Arrays.asList(this.b.b()).contains(paramd.d()))
      a(paramd, paramInt);
  }

  protected void c(int paramInt)
  {
    this.b = d(paramInt);
    this.f.setText(e(paramInt));
    this.c.notifyDataSetChanged();
  }

  protected void c(com.antivirus.ui.callmessagefilter.d paramd)
  {
    com.avg.toolkit.c.a.a(this.ag, "call_message_blocker", "call_message_blocker_show_redirect_dialog", null, 0);
    i locali = h();
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(locali);
    View localView = LayoutInflater.from(locali).inflate(2130903071, null);
    localBuilder.setTitle(a(2131296766));
    localBuilder.setView(localView);
    localBuilder.setMessage(a(2131296767));
    localBuilder.setPositiveButton(2131296269, new e(this, (CheckBox)localView.findViewById(2131230904), locali, paramd));
    localBuilder.setNegativeButton(2131296270, new f(this));
    localBuilder.create().show();
  }

  protected abstract w d(int paramInt);

  public void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    i locali = h();
    L();
    N().setAdapter(this.c);
    N().setHeaderDividersEnabled(true);
    int j = locali.getWindowManager().getDefaultDisplay().getHeight();
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inTargetDensity = locali.getResources().getDisplayMetrics().densityDpi;
    this.d = (j / BitmapFactory.decodeResource(locali.getResources(), 2130837704, localOptions).getHeight());
    this.g = true;
    p().a(0, null, this);
    this.e = F();
    a(m.a(locali, 2131296778));
  }

  protected abstract String e(int paramInt);

  public void e()
  {
    super.e();
    ((android.support.v4.a.a)p().a(0)).b();
    G();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.a
 * JD-Core Version:    0.6.2
 */