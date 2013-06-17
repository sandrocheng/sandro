package com.antivirus.core.scanners;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import com.antivirus.core.b;
import com.avg.toolkit.f.a;

public abstract class k
{
  public e a;
  protected b b;
  protected m c;
  protected Messenger d;
  protected Handler e;
  private boolean f = false;

  public k(b paramb, Handler paramHandler, m paramm, Messenger paramMessenger)
  {
    this.b = paramb;
    this.e = paramHandler;
    this.c = paramm;
    this.d = paramMessenger;
  }

  public void a()
  {
    this.f = true;
  }

  public void a(int paramInt, Bundle paramBundle)
  {
    if (this.e == null);
    while (true)
    {
      return;
      try
      {
        Message localMessage = Message.obtain();
        localMessage.what = paramInt;
        if (paramBundle != null)
          localMessage.obj = paramBundle;
        localMessage.setTarget(this.e);
        this.e.sendMessage(localMessage);
      }
      catch (Exception localException)
      {
        a.a(localException);
      }
    }
  }

  // ERROR //
  protected void a(Context paramContext, java.lang.String paramString, l paraml)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 70	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   4: astore 7
    //   6: aload_1
    //   7: invokevirtual 76	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   10: aload 7
    //   12: aconst_null
    //   13: aconst_null
    //   14: aconst_null
    //   15: aconst_null
    //   16: invokevirtual 82	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore 8
    //   21: aload 8
    //   23: astore 5
    //   25: aload 5
    //   27: ifnull +73 -> 100
    //   30: aload_0
    //   31: getfield 23	com/antivirus/core/scanners/k:f	Z
    //   34: ifne +59 -> 93
    //   37: aload 5
    //   39: invokeinterface 88 1 0
    //   44: istore 9
    //   46: iload 9
    //   48: ifeq +45 -> 93
    //   51: aload_3
    //   52: aload 5
    //   54: aload_2
    //   55: invokeinterface 93 3 0
    //   60: goto -30 -> 30
    //   63: astore 10
    //   65: aload 10
    //   67: invokestatic 63	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   70: goto -40 -> 30
    //   73: astore 4
    //   75: aload 4
    //   77: invokestatic 63	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   80: aload 5
    //   82: ifnull +10 -> 92
    //   85: aload 5
    //   87: invokeinterface 96 1 0
    //   92: return
    //   93: aload 5
    //   95: invokeinterface 96 1 0
    //   100: aload 5
    //   102: ifnull -10 -> 92
    //   105: aload 5
    //   107: invokeinterface 96 1 0
    //   112: goto -20 -> 92
    //   115: astore 6
    //   117: aconst_null
    //   118: astore 5
    //   120: aload 5
    //   122: ifnull +10 -> 132
    //   125: aload 5
    //   127: invokeinterface 96 1 0
    //   132: aload 6
    //   134: athrow
    //   135: astore 6
    //   137: goto -17 -> 120
    //   140: astore 4
    //   142: aconst_null
    //   143: astore 5
    //   145: goto -70 -> 75
    //
    // Exception table:
    //   from	to	target	type
    //   51	60	63	java/lang/Exception
    //   30	46	73	java/lang/Exception
    //   65	70	73	java/lang/Exception
    //   93	100	73	java/lang/Exception
    //   0	21	115	finally
    //   30	46	135	finally
    //   51	60	135	finally
    //   65	70	135	finally
    //   75	80	135	finally
    //   93	100	135	finally
    //   0	21	140	java/lang/Exception
  }

  public abstract void a(Context paramContext, boolean paramBoolean);

  public void a(Messenger paramMessenger, n paramn)
  {
    this.d = paramMessenger;
    if ((this.c != null) && (paramn != null))
      this.c.a = paramn;
  }

  protected boolean b()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.k
 * JD-Core Version:    0.6.2
 */