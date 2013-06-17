package com.antivirus.ui.callmessagefilter.fragment;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.support.v4.app.i;
import android.telephony.TelephonyManager;
import android.view.View;
import com.antivirus.ui.callmessagefilter.contacts.f;
import com.antivirus.ui.callmessagefilter.contacts.g;
import com.antivirus.ui.callmessagefilter.j;
import com.antivirus.ui.callmessagefilter.v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ContactsFragment extends a
{
  private final String[] ah = { "_id", "display_name", "data1", "photo_id" };
  private String ai;

  public ContactsFragment()
  {
    this.b = r.a;
  }

  private g a(Cursor paramCursor, Map paramMap)
  {
    int i = paramCursor.getInt(paramCursor.getColumnIndex("_id"));
    String str1 = paramCursor.getString(paramCursor.getColumnIndex("display_name"));
    String str2 = com.antivirus.c.B();
    if (str2.equals(""))
    {
      str2 = ((TelephonyManager)h().getSystemService("phone")).getNetworkCountryIso().toUpperCase();
      com.antivirus.c.j(str2);
    }
    if ((str1.startsWith("+")) || (str1.startsWith("0")))
      str1 = com.antivirus.core.b.a.b(str1, str2);
    String str3 = paramCursor.getString(paramCursor.getColumnIndex("photo_id"));
    String str4 = paramCursor.getString(paramCursor.getColumnIndex("data1"));
    String str5 = com.antivirus.core.b.a.a(str4, str2);
    String str6 = com.antivirus.core.b.a.b(str4, str2);
    g localg = new g(str1, str3, i, str6);
    com.antivirus.ui.callmessagefilter.contacts.a locala2;
    if (paramMap.containsKey(str5))
    {
      locala2 = (com.antivirus.ui.callmessagefilter.contacts.a)paramMap.get(str5);
      locala2.a(true);
    }
    for (com.antivirus.ui.callmessagefilter.contacts.a locala1 = new com.antivirus.ui.callmessagefilter.contacts.a(locala2); ; locala1 = new com.antivirus.ui.callmessagefilter.contacts.a(com.antivirus.ui.callmessagefilter.b.d.a, com.antivirus.ui.callmessagefilter.a.d.a, null))
    {
      localg.a(locala1);
      return localg;
    }
  }

  // ERROR //
  private void a(Context paramContext, Intent paramIntent, Map paramMap)
  {
    // Byte code:
    //   0: aload_2
    //   1: ldc 18
    //   3: invokevirtual 146	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   6: astore 8
    //   8: aload_2
    //   9: ldc 148
    //   11: invokevirtual 146	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   14: astore 9
    //   16: aload_1
    //   17: invokevirtual 154	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   20: getstatic 160	android/provider/ContactsContract$CommonDataKinds$Phone:CONTENT_URI	Landroid/net/Uri;
    //   23: aload_0
    //   24: getfield 24	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:ah	[Ljava/lang/String;
    //   27: ldc 162
    //   29: iconst_1
    //   30: anewarray 14	java/lang/String
    //   33: dup
    //   34: iconst_0
    //   35: aload 8
    //   37: aastore
    //   38: ldc 164
    //   40: invokevirtual 170	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   43: astore 10
    //   45: aload 10
    //   47: astore 7
    //   49: aload 7
    //   51: ifnull +13 -> 64
    //   54: aload 7
    //   56: invokeinterface 174 1 0
    //   61: ifne +104 -> 165
    //   64: invokestatic 55	com/antivirus/c:B	()Ljava/lang/String;
    //   67: astore 11
    //   69: aload 11
    //   71: ldc 57
    //   73: invokevirtual 61	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   76: ifeq +28 -> 104
    //   79: aload_0
    //   80: invokevirtual 65	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:h	()Landroid/support/v4/app/i;
    //   83: ldc 67
    //   85: invokevirtual 73	android/support/v4/app/i:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   88: checkcast 75	android/telephony/TelephonyManager
    //   91: invokevirtual 78	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   94: invokevirtual 81	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   97: astore 11
    //   99: aload 11
    //   101: invokestatic 85	com/antivirus/c:j	(Ljava/lang/String;)V
    //   104: aload_3
    //   105: aload 9
    //   107: aload 11
    //   109: invokestatic 100	com/antivirus/core/b/a:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   112: invokeinterface 114 2 0
    //   117: checkcast 116	com/antivirus/ui/callmessagefilter/contacts/a
    //   120: astore 12
    //   122: new 102	com/antivirus/ui/callmessagefilter/contacts/g
    //   125: dup
    //   126: aload 9
    //   128: aconst_null
    //   129: ldc2_w 175
    //   132: aload 9
    //   134: invokespecial 105	com/antivirus/ui/callmessagefilter/contacts/g:<init>	(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    //   137: astore 13
    //   139: aload 13
    //   141: aload 12
    //   143: invokevirtual 124	com/antivirus/ui/callmessagefilter/contacts/g:a	(Lcom/antivirus/ui/callmessagefilter/contacts/a;)V
    //   146: aload_0
    //   147: aload 13
    //   149: invokevirtual 179	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:a	(Lcom/antivirus/ui/callmessagefilter/d;)V
    //   152: aload 7
    //   154: ifnull +10 -> 164
    //   157: aload 7
    //   159: invokeinterface 182 1 0
    //   164: return
    //   165: aload_0
    //   166: getfield 186	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:g	Z
    //   169: ifeq -17 -> 152
    //   172: aload 7
    //   174: invokeinterface 190 1 0
    //   179: ifeq -27 -> 152
    //   182: aload_0
    //   183: aload 7
    //   185: aload_3
    //   186: invokespecial 192	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:a	(Landroid/database/Cursor;Ljava/util/Map;)Lcom/antivirus/ui/callmessagefilter/contacts/g;
    //   189: astore 14
    //   191: aload 14
    //   193: invokevirtual 195	com/antivirus/ui/callmessagefilter/contacts/g:f	()Ljava/lang/String;
    //   196: aload 9
    //   198: invokevirtual 61	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   201: ifeq -36 -> 165
    //   204: aload_0
    //   205: aload 14
    //   207: invokevirtual 179	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:a	(Lcom/antivirus/ui/callmessagefilter/d;)V
    //   210: goto -45 -> 165
    //   213: astore 4
    //   215: aload 7
    //   217: astore 5
    //   219: invokestatic 199	com/avg/toolkit/f/a:a	()V
    //   222: aload 4
    //   224: invokestatic 202	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   227: aload 5
    //   229: ifnull -65 -> 164
    //   232: aload 5
    //   234: invokeinterface 182 1 0
    //   239: goto -75 -> 164
    //   242: astore 6
    //   244: aconst_null
    //   245: astore 7
    //   247: aload 7
    //   249: ifnull +10 -> 259
    //   252: aload 7
    //   254: invokeinterface 182 1 0
    //   259: aload 6
    //   261: athrow
    //   262: astore 6
    //   264: goto -17 -> 247
    //   267: astore 6
    //   269: aload 5
    //   271: astore 7
    //   273: goto -26 -> 247
    //   276: astore 4
    //   278: aconst_null
    //   279: astore 5
    //   281: goto -62 -> 219
    //
    // Exception table:
    //   from	to	target	type
    //   54	152	213	java/lang/Exception
    //   165	210	213	java/lang/Exception
    //   0	45	242	finally
    //   54	152	262	finally
    //   165	210	262	finally
    //   219	227	267	finally
    //   0	45	276	java/lang/Exception
  }

  private void a(String paramString, com.antivirus.ui.callmessagefilter.a.d paramd)
  {
    Iterator localIterator = this.c.a().iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      if (localg.f().equals(paramString))
        localg.k().a(paramd);
    }
    this.c.notifyDataSetChanged();
    if (!((r)this.b).equals(r.a))
      b(((r)this.b).a());
  }

  private void a(String paramString, com.antivirus.ui.callmessagefilter.b.d paramd)
  {
    Iterator localIterator = this.c.a().iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      if (localg.f().equals(paramString))
        localg.k().a(paramd);
    }
    this.c.notifyDataSetChanged();
    if (!((r)this.b).equals(r.a))
      b(((r)this.b).a());
  }

  private void a(String paramString1, String paramString2)
  {
    Iterator localIterator = this.c.a().iterator();
    while (localIterator.hasNext())
    {
      g localg = (g)localIterator.next();
      if (localg.f().equals(paramString1))
        localg.k().a(paramString2);
    }
    this.c.notifyDataSetChanged();
    if (!((r)this.b).equals(r.a))
      b(((r)this.b).a());
  }

  // ERROR //
  private void a(boolean paramBoolean, Map paramMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 65	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:h	()Landroid/support/v4/app/i;
    //   4: astore_3
    //   5: aload_3
    //   6: invokevirtual 264	android/support/v4/app/i:getContentResolver	()Landroid/content/ContentResolver;
    //   9: getstatic 160	android/provider/ContactsContract$CommonDataKinds$Phone:CONTENT_URI	Landroid/net/Uri;
    //   12: aload_0
    //   13: getfield 24	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:ah	[Ljava/lang/String;
    //   16: aconst_null
    //   17: aconst_null
    //   18: ldc 164
    //   20: invokevirtual 170	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   23: astore 8
    //   25: aload 8
    //   27: astore 7
    //   29: aload_0
    //   30: getfield 186	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:g	Z
    //   33: ifeq +97 -> 130
    //   36: aload 7
    //   38: ifnull +92 -> 130
    //   41: aload 7
    //   43: invokeinterface 190 1 0
    //   48: ifeq +82 -> 130
    //   51: aload_0
    //   52: aload 7
    //   54: aload_2
    //   55: invokespecial 192	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:a	(Landroid/database/Cursor;Ljava/util/Map;)Lcom/antivirus/ui/callmessagefilter/contacts/g;
    //   58: astore 16
    //   60: iload_1
    //   61: ifeq +39 -> 100
    //   64: aload_0
    //   65: aload 16
    //   67: invokevirtual 179	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:a	(Lcom/antivirus/ui/callmessagefilter/d;)V
    //   70: goto -41 -> 29
    //   73: astore 4
    //   75: aload 7
    //   77: astore 5
    //   79: invokestatic 199	com/avg/toolkit/f/a:a	()V
    //   82: aload 4
    //   84: invokestatic 202	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   87: aload 5
    //   89: ifnull +10 -> 99
    //   92: aload 5
    //   94: invokeinterface 182 1 0
    //   99: return
    //   100: aload_0
    //   101: getfield 222	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:c	Lcom/antivirus/ui/callmessagefilter/a;
    //   104: aload 16
    //   106: iconst_m1
    //   107: invokevirtual 267	com/antivirus/ui/callmessagefilter/a:a	(Lcom/antivirus/ui/callmessagefilter/d;I)V
    //   110: goto -81 -> 29
    //   113: astore 6
    //   115: aload 7
    //   117: ifnull +10 -> 127
    //   120: aload 7
    //   122: invokeinterface 182 1 0
    //   127: aload 6
    //   129: athrow
    //   130: new 269	java/util/ArrayList
    //   133: dup
    //   134: aload_2
    //   135: invokeinterface 273 1 0
    //   140: invokespecial 276	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   143: astore 9
    //   145: aload 9
    //   147: new 278	com/antivirus/ui/callmessagefilter/fragment/o
    //   150: dup
    //   151: aload_0
    //   152: invokespecial 281	com/antivirus/ui/callmessagefilter/fragment/o:<init>	(Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;)V
    //   155: invokestatic 287	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   158: aload 9
    //   160: invokeinterface 233 1 0
    //   165: astore 10
    //   167: aload 10
    //   169: invokeinterface 238 1 0
    //   174: ifeq +136 -> 310
    //   177: aload 10
    //   179: invokeinterface 242 1 0
    //   184: checkcast 14	java/lang/String
    //   187: astore 11
    //   189: aload_2
    //   190: aload 11
    //   192: invokeinterface 114 2 0
    //   197: checkcast 116	com/antivirus/ui/callmessagefilter/contacts/a
    //   200: astore 12
    //   202: aload 12
    //   204: invokevirtual 290	com/antivirus/ui/callmessagefilter/contacts/a:d	()Z
    //   207: ifne -40 -> 167
    //   210: invokestatic 55	com/antivirus/c:B	()Ljava/lang/String;
    //   213: astore 13
    //   215: aload 13
    //   217: ldc 57
    //   219: invokevirtual 61	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   222: ifeq +28 -> 250
    //   225: aload_0
    //   226: invokevirtual 65	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:h	()Landroid/support/v4/app/i;
    //   229: ldc 67
    //   231: invokevirtual 73	android/support/v4/app/i:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   234: checkcast 75	android/telephony/TelephonyManager
    //   237: invokevirtual 78	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   240: invokevirtual 81	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   243: astore 13
    //   245: aload 13
    //   247: invokestatic 85	com/antivirus/c:j	(Ljava/lang/String;)V
    //   250: aload 11
    //   252: aload 13
    //   254: invokestatic 98	com/antivirus/core/b/a:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   257: astore 14
    //   259: new 102	com/antivirus/ui/callmessagefilter/contacts/g
    //   262: dup
    //   263: aload 14
    //   265: aconst_null
    //   266: ldc2_w 175
    //   269: aload 14
    //   271: invokespecial 105	com/antivirus/ui/callmessagefilter/contacts/g:<init>	(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    //   274: astore 15
    //   276: aload 15
    //   278: aload 12
    //   280: invokevirtual 124	com/antivirus/ui/callmessagefilter/contacts/g:a	(Lcom/antivirus/ui/callmessagefilter/contacts/a;)V
    //   283: iload_1
    //   284: ifeq +13 -> 297
    //   287: aload_0
    //   288: aload 15
    //   290: iconst_0
    //   291: invokevirtual 291	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:a	(Lcom/antivirus/ui/callmessagefilter/d;I)V
    //   294: goto -127 -> 167
    //   297: aload_0
    //   298: getfield 222	com/antivirus/ui/callmessagefilter/fragment/ContactsFragment:c	Lcom/antivirus/ui/callmessagefilter/a;
    //   301: aload 15
    //   303: iconst_0
    //   304: invokevirtual 267	com/antivirus/ui/callmessagefilter/a:a	(Lcom/antivirus/ui/callmessagefilter/d;I)V
    //   307: goto -140 -> 167
    //   310: aload 7
    //   312: ifnull -213 -> 99
    //   315: aload 7
    //   317: invokeinterface 182 1 0
    //   322: goto -223 -> 99
    //   325: astore 6
    //   327: aconst_null
    //   328: astore 7
    //   330: goto -215 -> 115
    //   333: astore 6
    //   335: aload 5
    //   337: astore 7
    //   339: goto -224 -> 115
    //   342: astore 4
    //   344: aconst_null
    //   345: astore 5
    //   347: goto -268 -> 79
    //
    // Exception table:
    //   from	to	target	type
    //   29	70	73	java/lang/Exception
    //   100	110	73	java/lang/Exception
    //   130	307	73	java/lang/Exception
    //   29	70	113	finally
    //   100	110	113	finally
    //   130	307	113	finally
    //   5	25	325	finally
    //   79	87	333	finally
    //   5	25	342	java/lang/Exception
  }

  protected v F()
  {
    return new q(this);
  }

  protected j J()
  {
    return new f();
  }

  protected void K()
  {
    i locali = h();
    try
    {
      Intent localIntent = locali.getIntent();
      boolean bool = localIntent.getBooleanExtra("use_named_filter", false);
      Map localMap = com.antivirus.callmessagefilter.a.a(com.antivirus.core.b.a.b.a(locali).b());
      if (bool)
        a(locali, localIntent, localMap);
      while (true)
      {
        return;
        a(true, localMap);
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a();
        if (0 != 0)
          null.close();
      }
    }
    finally
    {
      if (0 != 0)
        null.close();
    }
  }

  protected void L()
  {
    if (this.c == null)
      this.c = new com.antivirus.ui.callmessagefilter.contacts.b(h(), new ArrayList());
  }

  protected com.antivirus.ui.callmessagefilter.contacts.a a(g paramg, Context paramContext)
  {
    return paramg.k();
  }

  protected void a()
  {
    this.b = r.a;
  }

  public void a(android.support.v4.a.c paramc, Void paramVoid)
  {
    super.a(paramc, paramVoid);
    i locali = h();
    if (locali.getIntent().getBooleanExtra("use_named_filter", false))
    {
      p localp = new p(this, locali);
      Void[] arrayOfVoid = new Void[1];
      arrayOfVoid[0] = ((Void)null);
      localp.execute(arrayOfVoid);
    }
    if ((this.ai != null) && (!this.ai.equals("")))
      ((com.antivirus.ui.callmessagefilter.contacts.b)this.c).c(this.ai);
    if (!((r)this.b).equals(r.a))
    {
      b(((r)this.b).a());
      q().findViewById(2131230935).setVisibility(8);
    }
  }

  public void b(int paramInt)
  {
    c(paramInt);
    if (this.h)
      ((com.antivirus.ui.callmessagefilter.contacts.b)this.c).b(String.valueOf(paramInt));
    while (true)
    {
      return;
      q().findViewById(2131230935).setVisibility(0);
    }
  }

  public void c(String paramString)
  {
    if (this.h)
      ((com.antivirus.ui.callmessagefilter.contacts.b)this.c).c(paramString);
    while (true)
    {
      return;
      this.ai = paramString;
    }
  }

  protected String e(int paramInt)
  {
    return a(r.a(paramInt).c());
  }

  protected r f(int paramInt)
  {
    return r.a(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.ContactsFragment
 * JD-Core Version:    0.6.2
 */