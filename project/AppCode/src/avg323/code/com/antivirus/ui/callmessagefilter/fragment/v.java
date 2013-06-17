package com.antivirus.ui.callmessagefilter.fragment;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.i;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import com.antivirus.m;
import com.antivirus.ui.callmessagefilter.b.d;
import com.antivirus.ui.callmessagefilter.j;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class v extends a
{
  private static final String[] ah = { "address", "date", "_id", "body" };
  private static Handler aj;
  private ContentObserver ai;
  private BroadcastReceiver ak;
  private List al = new ArrayList();

  public v()
  {
    this.b = ah.a;
  }

  private com.antivirus.ui.callmessagefilter.b.b a(Cursor paramCursor, String paramString1, String paramString2, String paramString3, String paramString4, d paramd)
  {
    String str1 = paramCursor.getString(paramCursor.getColumnIndex(paramString1));
    String str2 = com.antivirus.c.B();
    if (str2.equals(""))
    {
      str2 = ((TelephonyManager)h().getSystemService("phone")).getNetworkCountryIso().toUpperCase();
      com.antivirus.c.j(str2);
    }
    String str3 = str2;
    String str4 = com.antivirus.core.b.a.b(str1, str3);
    long l1 = paramCursor.getLong(paramCursor.getColumnIndex(paramString2));
    long l2 = paramCursor.getLong(paramCursor.getColumnIndex(paramString3));
    Date localDate = new Date(l1);
    String str5 = a(l1);
    boolean bool;
    String str7;
    if (a(str1))
    {
      str6 = a(2131296742);
      bool = true;
      str7 = null;
      com.antivirus.ui.callmessagefilter.b.b localb = new com.antivirus.ui.callmessagefilter.b.b(str6, str5, str7, paramd, l2, str4, localDate);
      localb.b(bool);
      a(localb, paramCursor, paramString4);
      return localb;
    }
    Pair localPair = b(str1);
    if (PhoneNumberUtils.isGlobalPhoneNumber((String)localPair.first));
    for (String str6 = com.antivirus.core.b.a.b((String)localPair.first, str3); ; str6 = (String)localPair.first)
    {
      str7 = (String)localPair.second;
      bool = false;
      break;
    }
  }

  private void a(com.antivirus.ui.callmessagefilter.b.b paramb, boolean paramBoolean)
  {
    new Thread(new ab(this, h(), paramb, paramBoolean)).start();
  }

  private void a(d paramd, Activity paramActivity, com.antivirus.ui.callmessagefilter.b.b paramb, com.antivirus.core.b.a.b paramb1)
  {
    Iterator localIterator = this.c.a().iterator();
    while (localIterator.hasNext())
    {
      com.antivirus.ui.callmessagefilter.b.b localb = (com.antivirus.ui.callmessagefilter.b.b)localIterator.next();
      if ((localb.f().equals(paramb.f())) && (localb.e() != paramb.e()) && (a(paramd, (d)localb.d())))
      {
        paramActivity.runOnUiThread(new ad(this, localb, paramd));
        if (paramd.equals(d.d))
        {
          String str = com.antivirus.core.scanners.ad.a(h(), localb.e(), m.a(h(), 2131296603), m.a(h(), 2131296604));
          if (str != null)
            localb.a(str.substring(0, 50));
        }
        paramb1.a(localb.e(), paramd.b(), localb.k(), localb.f(), localb.i().getTime());
      }
    }
  }

  private void a(d paramd1, d paramd2, String paramString)
  {
    int i = -1;
    if ((paramd1.equals(d.b)) && (paramd2.equals(d.e)))
      i = 0;
    label69: 
    while (true)
    {
      if (i < 0);
      while (true)
      {
        return;
        if ((!paramd1.equals(d.a)) || (!paramd2.equals(d.d)))
          break label69;
        i = 1;
        break;
        com.antivirus.callmessagefilter.smsblocker.a.a(h(), paramString, i);
      }
    }
  }

  // ERROR //
  private void a(String paramString1, String paramString2, String paramString3, int paramInt, boolean paramBoolean, android.content.Context paramContext)
  {
    // Byte code:
    //   0: aload 6
    //   2: invokevirtual 284	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   5: getstatic 289	com/antivirus/callmessagefilter/callblocker/a:a	Landroid/net/Uri;
    //   8: getstatic 28	com/antivirus/ui/callmessagefilter/fragment/v:ah	[Ljava/lang/String;
    //   11: aload_2
    //   12: aconst_null
    //   13: new 291	java/lang/StringBuilder
    //   16: dup
    //   17: invokespecial 292	java/lang/StringBuilder:<init>	()V
    //   20: ldc_w 294
    //   23: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: aload_1
    //   27: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc_w 300
    //   33: invokevirtual 298	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokevirtual 309	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   42: astore 11
    //   44: aload 11
    //   46: astore 8
    //   48: aload 6
    //   50: invokestatic 312	com/antivirus/core/b/a/b:a	(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;
    //   53: iconst_0
    //   54: aload_1
    //   55: aload_3
    //   56: invokevirtual 315	com/antivirus/core/b/a/b:a	(ILjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   59: astore 13
    //   61: aload 13
    //   63: astore 9
    //   65: new 317	com/antivirus/callmessagefilter/a/a
    //   68: dup
    //   69: aload 8
    //   71: iconst_1
    //   72: anewarray 18	java/lang/String
    //   75: dup
    //   76: iconst_0
    //   77: ldc 22
    //   79: aastore
    //   80: aload 9
    //   82: iconst_1
    //   83: anewarray 18	java/lang/String
    //   86: dup
    //   87: iconst_0
    //   88: ldc 22
    //   90: aastore
    //   91: iload 5
    //   93: invokespecial 320	com/antivirus/callmessagefilter/a/a:<init>	(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;Z)V
    //   96: astore 14
    //   98: aload_0
    //   99: getfield 324	com/antivirus/ui/callmessagefilter/fragment/v:g	Z
    //   102: ifeq +296 -> 398
    //   105: aload 14
    //   107: invokevirtual 325	com/antivirus/callmessagefilter/a/a:hasNext	()Z
    //   110: ifeq +288 -> 398
    //   113: aload 14
    //   115: invokevirtual 328	com/antivirus/callmessagefilter/a/a:a	()Landroid/database/CursorJoiner$Result;
    //   118: astore 16
    //   120: getstatic 333	com/antivirus/ui/callmessagefilter/fragment/ae:a	[I
    //   123: aload 16
    //   125: invokevirtual 338	android/database/CursorJoiner$Result:ordinal	()I
    //   128: iaload
    //   129: tableswitch	default:+27 -> 156, 1:+63->192, 2:+154->283, 3:+186->315
    //   157: aconst_null
    //   158: sastore
    //   159: goto -61 -> 98
    //   162: astore 15
    //   164: invokestatic 342	com/avg/toolkit/f/a:a	()V
    //   167: aload 8
    //   169: ifnull +10 -> 179
    //   172: aload 8
    //   174: invokeinterface 345 1 0
    //   179: aload 9
    //   181: ifnull +10 -> 191
    //   184: aload 9
    //   186: invokeinterface 345 1 0
    //   191: return
    //   192: getstatic 258	com/antivirus/ui/callmessagefilter/b/d:a	Lcom/antivirus/ui/callmessagefilter/b/d;
    //   195: astore 22
    //   197: aload_0
    //   198: aload 8
    //   200: ldc 20
    //   202: ldc 22
    //   204: ldc 24
    //   206: ldc 26
    //   208: aload 22
    //   210: invokespecial 347	com/antivirus/ui/callmessagefilter/fragment/v:a	(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/d;)Lcom/antivirus/ui/callmessagefilter/b/b;
    //   213: astore 19
    //   215: aload_0
    //   216: aload 19
    //   218: iload 4
    //   220: invokevirtual 350	com/antivirus/ui/callmessagefilter/fragment/v:b	(Lcom/antivirus/ui/callmessagefilter/d;I)V
    //   223: aload 19
    //   225: invokevirtual 243	com/antivirus/ui/callmessagefilter/b/b:i	()Ljava/util/Date;
    //   228: invokevirtual 246	java/util/Date:getTime	()J
    //   231: aload_0
    //   232: getfield 353	com/antivirus/ui/callmessagefilter/fragment/v:i	J
    //   235: lcmp
    //   236: ifle -138 -> 98
    //   239: aload_0
    //   240: aload 19
    //   242: invokevirtual 243	com/antivirus/ui/callmessagefilter/b/b:i	()Ljava/util/Date;
    //   245: invokevirtual 246	java/util/Date:getTime	()J
    //   248: putfield 353	com/antivirus/ui/callmessagefilter/fragment/v:i	J
    //   251: goto -153 -> 98
    //   254: astore 10
    //   256: aload 8
    //   258: ifnull +10 -> 268
    //   261: aload 8
    //   263: invokeinterface 345 1 0
    //   268: aload 9
    //   270: ifnull +10 -> 280
    //   273: aload 9
    //   275: invokeinterface 345 1 0
    //   280: aload 10
    //   282: athrow
    //   283: aload_0
    //   284: aload 9
    //   286: ldc_w 355
    //   289: invokevirtual 358	com/antivirus/ui/callmessagefilter/fragment/v:a	(Landroid/database/Cursor;Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/b/d;
    //   292: astore 21
    //   294: aload_0
    //   295: aload 8
    //   297: ldc 20
    //   299: ldc 22
    //   301: ldc 24
    //   303: ldc 26
    //   305: aload 21
    //   307: invokespecial 347	com/antivirus/ui/callmessagefilter/fragment/v:a	(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/d;)Lcom/antivirus/ui/callmessagefilter/b/b;
    //   310: astore 19
    //   312: goto -97 -> 215
    //   315: aload_0
    //   316: aload 9
    //   318: ldc_w 355
    //   321: invokevirtual 358	com/antivirus/ui/callmessagefilter/fragment/v:a	(Landroid/database/Cursor;Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/b/d;
    //   324: astore 17
    //   326: getstatic 360	com/antivirus/ui/callmessagefilter/b/d:c	Lcom/antivirus/ui/callmessagefilter/b/d;
    //   329: aload 17
    //   331: invokevirtual 215	com/antivirus/ui/callmessagefilter/b/d:equals	(Ljava/lang/Object;)Z
    //   334: ifne +36 -> 370
    //   337: aload_0
    //   338: getfield 36	com/antivirus/ui/callmessagefilter/fragment/v:al	Ljava/util/List;
    //   341: aload 9
    //   343: aload 9
    //   345: ldc_w 362
    //   348: invokeinterface 53 2 0
    //   353: invokeinterface 102 2 0
    //   358: invokestatic 365	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   361: invokeinterface 368 2 0
    //   366: pop
    //   367: goto -269 -> 98
    //   370: aload_0
    //   371: aload 9
    //   373: ldc_w 370
    //   376: ldc 22
    //   378: ldc_w 362
    //   381: ldc_w 372
    //   384: aload 17
    //   386: invokespecial 347	com/antivirus/ui/callmessagefilter/fragment/v:a	(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/ui/callmessagefilter/b/d;)Lcom/antivirus/ui/callmessagefilter/b/b;
    //   389: astore 18
    //   391: aload 18
    //   393: astore 19
    //   395: goto -180 -> 215
    //   398: aload 8
    //   400: ifnull +10 -> 410
    //   403: aload 8
    //   405: invokeinterface 345 1 0
    //   410: aload 9
    //   412: ifnull -221 -> 191
    //   415: aload 9
    //   417: invokeinterface 345 1 0
    //   422: goto -231 -> 191
    //   425: astore 10
    //   427: aconst_null
    //   428: astore 8
    //   430: aconst_null
    //   431: astore 9
    //   433: goto -177 -> 256
    //   436: astore 10
    //   438: aconst_null
    //   439: astore 9
    //   441: goto -185 -> 256
    //   444: astore 7
    //   446: aconst_null
    //   447: astore 8
    //   449: aconst_null
    //   450: astore 9
    //   452: goto -288 -> 164
    //   455: astore 12
    //   457: aconst_null
    //   458: astore 9
    //   460: goto -296 -> 164
    //
    // Exception table:
    //   from	to	target	type
    //   65	159	162	java/lang/Exception
    //   192	251	162	java/lang/Exception
    //   283	391	162	java/lang/Exception
    //   65	159	254	finally
    //   164	167	254	finally
    //   192	251	254	finally
    //   283	391	254	finally
    //   0	44	425	finally
    //   48	61	436	finally
    //   0	44	444	java/lang/Exception
    //   48	61	455	java/lang/Exception
  }

  private boolean a(d paramd1, d paramd2)
  {
    if (((paramd1.equals(d.e)) && (paramd2.equals(d.b))) || ((paramd1.equals(d.d)) && ((paramd2.equals(d.b)) || (paramd2.equals(d.a)))));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void b(com.antivirus.ui.callmessagefilter.b.b paramb)
  {
    com.avg.toolkit.c.a.a(this.ag, "call_message_blocker", "call_message_blocker_show_block_dialog", null, 0);
    i locali = h();
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(locali);
    View localView = LayoutInflater.from(locali).inflate(2130903071, null);
    localBuilder.setTitle(a(2131296768));
    localBuilder.setView(localView);
    localBuilder.setMessage(a(2131296769));
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230904);
    localCheckBox.setText(2131296771);
    localBuilder.setPositiveButton(2131296269, new z(this, localCheckBox, paramb));
    localBuilder.setNegativeButton(2131296270, new aa(this));
    localBuilder.create().show();
  }

  protected com.antivirus.ui.callmessagefilter.v F()
  {
    return new ag(this);
  }

  protected j J()
  {
    return new com.antivirus.ui.callmessagefilter.b.c();
  }

  protected void K()
  {
    i locali = h();
    Intent localIntent = locali.getIntent();
    int i = 0;
    if (localIntent == null);
    while (true)
    {
      this.b = ah.a(i);
      a("DESC", "", "", -1, true, locali);
      return;
      i = localIntent.getIntExtra("default_filter_option", 0);
    }
  }

  protected void L()
  {
    if (this.c == null)
      this.c = new com.antivirus.ui.callmessagefilter.b.a(h(), new ArrayList());
  }

  public ah M()
  {
    ah localah = (ah)super.H();
    if (localah == null)
      localah = ah.a;
    return localah;
  }

  protected d a(Cursor paramCursor, String paramString)
  {
    return d.a(paramCursor.getInt(paramCursor.getColumnIndex(paramString)));
  }

  protected void a()
  {
    this.b = ah.a;
  }

  protected void a(int paramInt, boolean paramBoolean)
  {
    super.a(paramInt, paramBoolean);
    switch (ae.c[((ah)this.b).ordinal()])
    {
    default:
      com.avg.toolkit.f.a.a();
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      com.avg.toolkit.c.a.a(this.ag, "call_message_blocker", "call_message_blocker_all_messages_filter", null, 0);
      continue;
      com.avg.toolkit.c.a.a(this.ag, "call_message_blocker", "call_message_blocker_blocked_message_filter", null, 0);
      continue;
      com.avg.toolkit.c.a.a(this.ag, "call_message_blocker", "all_message_blocker_suspicious_message_filter", null, 0);
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    aj = new w(this);
  }

  public void a(android.support.v4.a.c paramc, Void paramVoid)
  {
    super.a(paramc, paramVoid);
    new Thread(new y(this, h())).start();
  }

  protected void a(com.antivirus.ui.callmessagefilter.b.b paramb)
  {
    com.avg.toolkit.c.a.a(this.ag, "call_message_blocker", "call_message_blocker_setting_dialog_in_calls", null, 0);
    if (paramb.j())
      I();
    while (true)
    {
      return;
      com.antivirus.ui.callmessagefilter.contacts.a locala = a(paramb, h());
      switch (ae.b[locala.a().ordinal()])
      {
      default:
        super.b(paramb);
        break;
      case 1:
        if ((((d)paramb.d()).equals(d.b)) || (((d)paramb.d()).equals(d.a)))
          b(paramb);
        break;
      case 2:
        if (com.antivirus.c.v())
          c(paramb);
        else
          a(h(), paramb);
        break;
      }
    }
  }

  protected void a(com.antivirus.ui.callmessagefilter.b.b paramb, Cursor paramCursor, String paramString)
  {
    String str1 = paramCursor.getString(paramCursor.getColumnIndex(paramString));
    int i = str1.length();
    int j = Math.min(50, str1.length());
    String str2 = str1.substring(0, j);
    if (j < i)
      str2 = str2 + "...";
    paramb.a(str2);
    paramb.b(str1);
  }

  public void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    this.ai = new ai(this);
    this.ak = new af(this, aj);
    h().getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, this.ai);
    h().registerReceiver(this.ak, new IntentFilter("blocked_message_view_update_action"));
  }

  protected String e(int paramInt)
  {
    return a(ah.a(paramInt).c());
  }

  public void e()
  {
    super.e();
    if (this.ai != null)
    {
      h().getContentResolver().unregisterContentObserver(this.ai);
      this.ai = null;
    }
    if (this.ak != null)
    {
      h().unregisterReceiver(this.ak);
      this.ak = null;
    }
  }

  protected ah f(int paramInt)
  {
    return ah.a(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.v
 * JD-Core Version:    0.6.2
 */