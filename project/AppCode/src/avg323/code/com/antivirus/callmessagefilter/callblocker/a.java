package com.antivirus.callmessagefilter.callblocker;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import com.antivirus.core.b.a.b;
import com.avg.toolkit.e;
import com.avg.ui.general.o;
import java.lang.reflect.Method;
import java.util.List;

public class a
  implements e
{
  public static final Uri a = Uri.parse("content://sms/inbox");
  private Context b;
  private b c = null;
  private c d;
  private TelephonyManager e;
  private AudioManager f;
  private int g = -1;

  public a(Context paramContext)
  {
    this.b = paramContext;
    this.e = ((TelephonyManager)paramContext.getSystemService("phone"));
    this.f = ((AudioManager)paramContext.getSystemService("audio"));
    this.d = new c(paramContext);
    this.d.a();
  }

  private void a()
  {
    com.google.c.a.d.a(this.b);
  }

  private void a(String paramString1, String paramString2)
  {
    d();
    SmsManager.getDefault().sendTextMessage(paramString1, null, paramString2, null, null);
  }

  // ERROR //
  private void c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 42	com/antivirus/callmessagefilter/callblocker/a:b	Landroid/content/Context;
    //   6: invokevirtual 91	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   9: astore 8
    //   11: getstatic 96	android/provider/CallLog$Calls:CONTENT_URI	Landroid/net/Uri;
    //   14: astore 9
    //   16: iconst_4
    //   17: anewarray 98	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: ldc 100
    //   24: aastore
    //   25: dup
    //   26: iconst_1
    //   27: ldc 102
    //   29: aastore
    //   30: dup
    //   31: iconst_2
    //   32: ldc 104
    //   34: aastore
    //   35: dup
    //   36: iconst_3
    //   37: ldc 106
    //   39: aastore
    //   40: astore 10
    //   42: iconst_1
    //   43: anewarray 98	java/lang/String
    //   46: astore 11
    //   48: aload 11
    //   50: iconst_0
    //   51: iconst_2
    //   52: invokestatic 110	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   55: aastore
    //   56: aload 8
    //   58: aload 9
    //   60: aload 10
    //   62: ldc 112
    //   64: aload 11
    //   66: ldc 114
    //   68: invokevirtual 120	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   71: astore 12
    //   73: aload 12
    //   75: astore_1
    //   76: aload_1
    //   77: invokeinterface 126 1 0
    //   82: ifeq +86 -> 168
    //   85: aload_1
    //   86: aload_1
    //   87: ldc 104
    //   89: invokeinterface 130 2 0
    //   94: invokeinterface 133 2 0
    //   99: astore 15
    //   101: aload_0
    //   102: getfield 42	com/antivirus/callmessagefilter/callblocker/a:b	Landroid/content/Context;
    //   105: invokestatic 138	com/antivirus/core/b/a/b:a	(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;
    //   108: astore 16
    //   110: new 140	com/antivirus/ui/callmessagefilter/contacts/a
    //   113: dup
    //   114: aload 16
    //   116: aload 15
    //   118: invokevirtual 143	com/antivirus/core/b/a/b:a	(Ljava/lang/String;)Lcom/antivirus/core/b/b/a;
    //   121: invokespecial 146	com/antivirus/ui/callmessagefilter/contacts/a:<init>	(Lcom/antivirus/core/b/b/a;)V
    //   124: invokevirtual 149	com/antivirus/ui/callmessagefilter/contacts/a:b	()Lcom/antivirus/ui/callmessagefilter/a/d;
    //   127: astore 17
    //   129: getstatic 154	com/antivirus/callmessagefilter/callblocker/b:a	[I
    //   132: aload 17
    //   134: invokevirtual 160	com/antivirus/ui/callmessagefilter/a/d:ordinal	()I
    //   137: iaload
    //   138: istore 18
    //   140: iload 18
    //   142: tableswitch	default:+26 -> 168, 1:+37->179, 2:+37->179, 3:+37->179
    //   169: ifnull +9 -> 178
    //   172: aload_1
    //   173: invokeinterface 163 1 0
    //   178: return
    //   179: aload_1
    //   180: aload_1
    //   181: ldc 100
    //   183: invokeinterface 130 2 0
    //   188: invokeinterface 167 2 0
    //   193: lstore 19
    //   195: aload_1
    //   196: aload_1
    //   197: ldc 106
    //   199: invokeinterface 130 2 0
    //   204: invokeinterface 167 2 0
    //   209: lstore 21
    //   211: aload 16
    //   213: lload 19
    //   215: aload 17
    //   217: invokevirtual 169	com/antivirus/ui/callmessagefilter/a/d:b	()I
    //   220: lload 21
    //   222: invokevirtual 172	com/antivirus/core/b/a/b:a	(JIJ)V
    //   225: goto -57 -> 168
    //   228: astore 13
    //   230: aload_1
    //   231: astore_3
    //   232: getstatic 178	java/lang/System:out	Ljava/io/PrintStream;
    //   235: invokevirtual 183	java/io/PrintStream:println	()V
    //   238: aload_3
    //   239: ifnull -61 -> 178
    //   242: aload_3
    //   243: invokeinterface 163 1 0
    //   248: goto -70 -> 178
    //   251: astore 7
    //   253: ldc 185
    //   255: invokestatic 190	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   258: goto -80 -> 178
    //   261: astore 14
    //   263: ldc 185
    //   265: invokestatic 190	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   268: goto -90 -> 178
    //   271: astore 5
    //   273: aload_1
    //   274: ifnull +9 -> 283
    //   277: aload_1
    //   278: invokeinterface 163 1 0
    //   283: aload 5
    //   285: athrow
    //   286: astore 6
    //   288: ldc 185
    //   290: invokestatic 190	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   293: goto -10 -> 283
    //   296: astore 4
    //   298: aload_3
    //   299: astore_1
    //   300: aload 4
    //   302: astore 5
    //   304: goto -31 -> 273
    //   307: astore_2
    //   308: aconst_null
    //   309: astore_3
    //   310: goto -78 -> 232
    //
    // Exception table:
    //   from	to	target	type
    //   76	140	228	java/lang/Exception
    //   179	225	228	java/lang/Exception
    //   242	248	251	java/lang/Exception
    //   172	178	261	java/lang/Exception
    //   2	73	271	finally
    //   76	140	271	finally
    //   179	225	271	finally
    //   277	283	286	java/lang/Exception
    //   232	238	296	finally
    //   2	73	307	java/lang/Exception
  }

  private void c(Bundle paramBundle)
  {
    Object[] arrayOfObject = (Object[])paramBundle.getSerializable("pdus");
    SmsMessage localSmsMessage = SmsMessage.createFromPdu((byte[])arrayOfObject[0]);
    String str1 = localSmsMessage.getOriginatingAddress();
    String str2 = localSmsMessage.getDisplayMessageBody();
    String str4;
    String str3;
    if (str2 != null)
    {
      str4 = str2;
      for (int i = 1; i < arrayOfObject.length; i++)
      {
        String str5 = SmsMessage.createFromPdu((byte[])arrayOfObject[i]).getDisplayMessageBody();
        if (str5 != null)
          str4 = str4 + str5;
      }
      if (str4.length() <= 50)
        break label197;
      str3 = str4.substring(0, 50) + "...";
    }
    while (true)
    {
      b.a(this.b).a(-1L, com.antivirus.ui.callmessagefilter.b.d.c.b(), str3, str1, System.currentTimeMillis());
      this.b.sendBroadcast(new Intent("blocked_message_view_update_action"));
      return;
      str3 = "";
      continue;
      label197: str3 = str4;
    }
  }

  private void d()
  {
    try
    {
      Class localClass = Class.forName("com.android.internal.telephony.ITelephony");
      Method localMethod1 = Class.forName(this.e.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
      localMethod1.setAccessible(true);
      Object localObject = localMethod1.invoke(this.e, new Object[0]);
      Method localMethod2 = localClass.getDeclaredMethod("endCall", new Class[0]);
      localMethod2.setAccessible(true);
      localMethod2.invoke(localObject, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a();
    }
  }

  private void d(Bundle paramBundle)
  {
    String str;
    if (paramBundle != null)
    {
      if (!paramBundle.getString("state").equals(TelephonyManager.EXTRA_STATE_RINGING))
        break label125;
      this.g = this.f.getRingerMode();
      str = paramBundle.getString("incoming_number");
      if (str != null)
        break label44;
    }
    while (true)
    {
      return;
      label44: com.antivirus.ui.callmessagefilter.contacts.a locala = new com.antivirus.ui.callmessagefilter.contacts.a(e().a(str));
      switch (b.a[locala.b().ordinal()])
      {
      default:
        break;
      case 1:
        d();
        break;
      case 3:
        f();
        break;
      case 2:
        a(str, locala.c());
        continue;
        label125: if (this.g > 0)
          this.f.setRingerMode(this.g);
        break;
      }
    }
  }

  private b e()
  {
    if (this.c == null)
      this.c = b.a(this.b);
    return this.c;
  }

  private void f()
  {
    this.g = this.f.getRingerMode();
    this.f.setRingerMode(0);
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(List paramList)
  {
    paramList.add(com.antivirus.callmessagefilter.smsblocker.a.class);
  }

  public void a(boolean paramBoolean)
  {
    a();
  }

  public int b()
  {
    return 12000;
  }

  public void b(Bundle paramBundle)
  {
    if (o.c());
    while (true)
    {
      return;
      try
      {
        switch (paramBundle.getInt("__SAC2"))
        {
        default:
          com.avg.toolkit.f.a.a();
          break;
        case 1:
          d(paramBundle);
          break;
        case 2:
          c();
          break;
        case 3:
          c(paramBundle);
          break;
        case 4:
          a();
        }
      }
      catch (Throwable localThrowable)
      {
      }
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
  }

  public void onDestroy()
  {
    if (this.d != null)
    {
      this.d.b();
      this.d = null;
    }
    b.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.callmessagefilter.callblocker.a
 * JD-Core Version:    0.6.2
 */