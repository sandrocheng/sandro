package com.antivirus.ui.callmessagefilter.fragment;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.CallLog.Calls;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.util.Pair;
import com.antivirus.ui.callmessagefilter.a.b;
import com.antivirus.ui.callmessagefilter.a.d;
import com.antivirus.ui.callmessagefilter.v;
import java.util.ArrayList;
import java.util.Date;

public class g extends a
{
  private static String[] ah = { "number", "date", "_id", "type", "name" };
  private static String[] ai = { "number", "date", "_id", "type", "name", "photo_id" };
  private static String[] aj = { "number", "date", "_id", "type", "name", "photo_id", "messageid" };
  private ContentObserver ak;

  public g()
  {
    this.b = i.a;
  }

  private b a(Cursor paramCursor, d paramd)
  {
    String str1 = paramCursor.getString(paramCursor.getColumnIndex("number"));
    String str2 = com.antivirus.c.B();
    if (str2.equals(""))
    {
      str2 = ((TelephonyManager)h().getSystemService("phone")).getNetworkCountryIso().toUpperCase();
      com.antivirus.c.j(str2);
    }
    String str3 = str2;
    String str4 = com.antivirus.core.b.a.b(str1, str3);
    long l1 = paramCursor.getLong(paramCursor.getColumnIndex("date"));
    long l2 = paramCursor.getLong(paramCursor.getColumnIndex("_id"));
    String str5 = paramCursor.getString(paramCursor.getColumnIndex("name"));
    Date localDate = new Date(l1);
    String str6 = a(l1);
    boolean bool;
    Object localObject1;
    if ((str5 != null) && (!str5.equals("")))
    {
      bool = false;
      localObject1 = str5;
    }
    while (true)
    {
      int i = paramCursor.getColumnIndex("photo_id");
      Object localObject2;
      String str7;
      if (!bool)
        if (a(i, paramCursor, (String)localObject1, str4))
        {
          Pair localPair = b(str1);
          localObject2 = com.antivirus.core.b.a.b((String)localPair.first, str3);
          str7 = (String)localPair.second;
        }
      while (true)
      {
        b localb = new b((String)localObject2, str6, str7, paramd, l2, str4, localDate);
        localb.b(bool);
        return localb;
        if (a(str1))
        {
          if (!l())
            break label319;
          String str8 = a(2131296742);
          bool = true;
          localObject1 = str8;
          break;
        }
        localObject1 = str4;
        bool = false;
        break;
        str7 = paramCursor.getString(i);
        localObject2 = localObject1;
        continue;
        localObject2 = localObject1;
        str7 = null;
      }
      label319: bool = true;
      localObject1 = "";
    }
  }

  // ERROR //
  private void a(boolean paramBoolean1, String paramString1, String paramString2, String paramString3, int paramInt, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: iload_1
    //   4: ifeq +9 -> 13
    //   7: ldc2_w 151
    //   10: invokestatic 157	java/lang/Thread:sleep	(J)V
    //   13: aload_0
    //   14: aload_2
    //   15: aload_3
    //   16: invokevirtual 160	com/antivirus/ui/callmessagefilter/fragment/g:a	(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore 11
    //   21: aload 11
    //   23: astore 9
    //   25: aload 9
    //   27: ifnull +17 -> 44
    //   30: aload 9
    //   32: invokeinterface 164 1 0
    //   37: istore 12
    //   39: iload 12
    //   41: ifne +26 -> 67
    //   44: aload 9
    //   46: ifnull +10 -> 56
    //   49: aload 9
    //   51: invokeinterface 167 1 0
    //   56: iconst_0
    //   57: ifeq +9 -> 66
    //   60: aconst_null
    //   61: invokeinterface 167 1 0
    //   66: return
    //   67: aload_0
    //   68: invokevirtual 74	com/antivirus/ui/callmessagefilter/fragment/g:h	()Landroid/support/v4/app/i;
    //   71: invokestatic 172	com/antivirus/core/b/a/b:a	(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;
    //   74: aload_2
    //   75: aload 4
    //   77: invokevirtual 173	com/antivirus/core/b/a/b:a	(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   80: astore 7
    //   82: new 175	com/antivirus/callmessagefilter/a/a
    //   85: dup
    //   86: aload 9
    //   88: iconst_1
    //   89: anewarray 14	java/lang/String
    //   92: dup
    //   93: iconst_0
    //   94: ldc 18
    //   96: aastore
    //   97: aload 7
    //   99: iconst_1
    //   100: anewarray 14	java/lang/String
    //   103: dup
    //   104: iconst_0
    //   105: ldc 18
    //   107: aastore
    //   108: iload 6
    //   110: invokespecial 178	com/antivirus/callmessagefilter/a/a:<init>	(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;Z)V
    //   113: astore 13
    //   115: aload_0
    //   116: getfield 182	com/antivirus/ui/callmessagefilter/fragment/g:g	Z
    //   119: ifeq +200 -> 319
    //   122: aload 13
    //   124: invokevirtual 185	com/antivirus/callmessagefilter/a/a:hasNext	()Z
    //   127: ifeq +192 -> 319
    //   130: aload 13
    //   132: invokevirtual 188	com/antivirus/callmessagefilter/a/a:a	()Landroid/database/CursorJoiner$Result;
    //   135: astore 14
    //   137: getstatic 194	com/antivirus/ui/callmessagefilter/fragment/h:c	[I
    //   140: aload 14
    //   142: invokevirtual 199	android/database/CursorJoiner$Result:ordinal	()I
    //   145: iaload
    //   146: tableswitch	default:+26 -> 172, 1:+66->212, 2:+150->296, 3:+-31->115
    //   173: nop
    //   174: <illegal opcode>
    //   175: goto -60 -> 115
    //   178: astore 8
    //   180: aload 8
    //   182: invokestatic 206	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   185: aload 9
    //   187: ifnull +10 -> 197
    //   190: aload 9
    //   192: invokeinterface 167 1 0
    //   197: aload 7
    //   199: ifnull -133 -> 66
    //   202: aload 7
    //   204: invokeinterface 167 1 0
    //   209: goto -143 -> 66
    //   212: aload_0
    //   213: aload 9
    //   215: aload_0
    //   216: aload 9
    //   218: ldc 22
    //   220: invokevirtual 209	com/antivirus/ui/callmessagefilter/fragment/g:a	(Landroid/database/Cursor;Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/a/d;
    //   223: invokespecial 211	com/antivirus/ui/callmessagefilter/fragment/g:a	(Landroid/database/Cursor;Lcom/antivirus/ui/callmessagefilter/a/d;)Lcom/antivirus/ui/callmessagefilter/a/b;
    //   226: astore 16
    //   228: aload_0
    //   229: aload 16
    //   231: iload 5
    //   233: invokevirtual 214	com/antivirus/ui/callmessagefilter/fragment/g:b	(Lcom/antivirus/ui/callmessagefilter/d;I)V
    //   236: aload 16
    //   238: invokevirtual 218	com/antivirus/ui/callmessagefilter/a/b:i	()Ljava/util/Date;
    //   241: invokevirtual 222	java/util/Date:getTime	()J
    //   244: aload_0
    //   245: getfield 225	com/antivirus/ui/callmessagefilter/fragment/g:i	J
    //   248: lcmp
    //   249: ifle -134 -> 115
    //   252: aload_0
    //   253: aload 16
    //   255: invokevirtual 218	com/antivirus/ui/callmessagefilter/a/b:i	()Ljava/util/Date;
    //   258: invokevirtual 222	java/util/Date:getTime	()J
    //   261: putfield 225	com/antivirus/ui/callmessagefilter/fragment/g:i	J
    //   264: goto -149 -> 115
    //   267: astore 10
    //   269: aload 9
    //   271: ifnull +10 -> 281
    //   274: aload 9
    //   276: invokeinterface 167 1 0
    //   281: aload 7
    //   283: ifnull +10 -> 293
    //   286: aload 7
    //   288: invokeinterface 167 1 0
    //   293: aload 10
    //   295: athrow
    //   296: aload_0
    //   297: aload 9
    //   299: aload_0
    //   300: aload 7
    //   302: ldc 227
    //   304: invokevirtual 209	com/antivirus/ui/callmessagefilter/fragment/g:a	(Landroid/database/Cursor;Ljava/lang/String;)Lcom/antivirus/ui/callmessagefilter/a/d;
    //   307: invokespecial 211	com/antivirus/ui/callmessagefilter/fragment/g:a	(Landroid/database/Cursor;Lcom/antivirus/ui/callmessagefilter/a/d;)Lcom/antivirus/ui/callmessagefilter/a/b;
    //   310: astore 15
    //   312: aload 15
    //   314: astore 16
    //   316: goto -88 -> 228
    //   319: aload 9
    //   321: ifnull +10 -> 331
    //   324: aload 9
    //   326: invokeinterface 167 1 0
    //   331: aload 7
    //   333: ifnull -267 -> 66
    //   336: aload 7
    //   338: invokeinterface 167 1 0
    //   343: goto -277 -> 66
    //   346: astore 10
    //   348: aconst_null
    //   349: astore 9
    //   351: aconst_null
    //   352: astore 7
    //   354: goto -85 -> 269
    //   357: astore 8
    //   359: aconst_null
    //   360: astore 9
    //   362: aconst_null
    //   363: astore 7
    //   365: goto -185 -> 180
    //
    // Exception table:
    //   from	to	target	type
    //   30	39	178	java/lang/Exception
    //   67	175	178	java/lang/Exception
    //   212	264	178	java/lang/Exception
    //   296	312	178	java/lang/Exception
    //   30	39	267	finally
    //   67	175	267	finally
    //   180	185	267	finally
    //   212	264	267	finally
    //   296	312	267	finally
    //   7	21	346	finally
    //   7	21	357	java/lang/Exception
  }

  private boolean a(int paramInt, Cursor paramCursor, String paramString1, String paramString2)
  {
    if ((paramInt < 0) || (paramCursor.getString(paramInt) == null) || (paramCursor.getString(paramInt).equals("0")) || (PhoneNumberUtils.compare(paramString1, paramString2)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected v F()
  {
    return new j(this);
  }

  protected com.antivirus.ui.callmessagefilter.j J()
  {
    return new com.antivirus.ui.callmessagefilter.a.c();
  }

  protected void K()
  {
    a(false, "DESC", "", null, -1, true);
  }

  protected void L()
  {
    if (this.c == null)
      this.c = new com.antivirus.ui.callmessagefilter.a.a(h(), new ArrayList());
  }

  public i M()
  {
    i locali = (i)super.H();
    if (locali == null)
      locali = i.a;
    return locali;
  }

  protected Cursor a(String paramString1, String paramString2)
  {
    android.support.v4.app.i locali = h();
    Object localObject;
    if (locali == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        ContentResolver localContentResolver3 = locali.getContentResolver();
        Uri localUri3 = CallLog.Calls.CONTENT_URI;
        String[] arrayOfString5 = aj;
        String str3 = "type<>? AND messageid is null" + paramString2;
        String[] arrayOfString6 = new String[1];
        arrayOfString6[0] = String.valueOf(2);
        Cursor localCursor2 = localContentResolver3.query(localUri3, arrayOfString5, str3, arrayOfString6, "date " + paramString1);
        localObject = localCursor2;
      }
      catch (Exception localException1)
      {
        try
        {
          ContentResolver localContentResolver2 = locali.getContentResolver();
          Uri localUri2 = CallLog.Calls.CONTENT_URI;
          String[] arrayOfString3 = ai;
          String str2 = "type<>?" + paramString2;
          String[] arrayOfString4 = new String[1];
          arrayOfString4[0] = String.valueOf(2);
          Cursor localCursor1 = localContentResolver2.query(localUri2, arrayOfString3, str2, arrayOfString4, "date " + paramString1);
          localObject = localCursor1;
        }
        catch (Exception localException2)
        {
          ContentResolver localContentResolver1 = locali.getContentResolver();
          Uri localUri1 = CallLog.Calls.CONTENT_URI;
          String[] arrayOfString1 = ah;
          String str1 = "type<>?" + paramString2;
          String[] arrayOfString2 = new String[1];
          arrayOfString2[0] = String.valueOf(2);
          localObject = localContentResolver1.query(localUri1, arrayOfString1, str1, arrayOfString2, "date " + paramString1);
        }
      }
    }
  }

  protected d a(Cursor paramCursor, String paramString)
  {
    return d.a(paramCursor.getInt(paramCursor.getColumnIndex(paramString)));
  }

  protected void a()
  {
    this.b = i.a;
  }

  protected void a(int paramInt, boolean paramBoolean)
  {
    super.a(paramInt, paramBoolean);
    switch (h.b[((i)this.b).ordinal()])
    {
    default:
      com.avg.toolkit.f.a.a();
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      com.avg.toolkit.c.a.a(this.ag, "call_message_blocker", "call_message_blocker_all_calls_filter", null, 0);
      continue;
      com.avg.toolkit.c.a.a(this.ag, "call_message_blocker", "call_message_blocker_blocked_calls_filter", null, 0);
    }
  }

  protected void a(b paramb)
  {
    com.avg.toolkit.c.a.a(this.ag, "call_message_blocker", "call_message_blocker_setting_dialog_in_calls", null, 0);
    if (paramb.j())
      I();
    while (true)
    {
      return;
      com.antivirus.ui.callmessagefilter.contacts.a locala = a(paramb, h());
      switch (h.a[locala.b().ordinal()])
      {
      default:
        super.b(paramb);
        break;
      case 1:
      case 2:
      case 3:
        if (com.antivirus.c.v())
          c(paramb);
        else
          a(h(), paramb);
        break;
      }
    }
  }

  public void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    this.ak = new k(this);
    h().getContentResolver().registerContentObserver(CallLog.Calls.CONTENT_URI, true, this.ak);
  }

  protected String e(int paramInt)
  {
    return a(i.a(paramInt).c());
  }

  public void e()
  {
    super.e();
    if (this.ak != null)
      h().getContentResolver().unregisterContentObserver(this.ak);
  }

  protected i f(int paramInt)
  {
    return i.a(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.g
 * JD-Core Version:    0.6.2
 */