package org.antivirus.core.scanners;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;

public abstract class j
{
  public d a;
  protected EngineSettings b;
  protected l c;
  protected Messenger d;
  protected Handler e;
  boolean f = false;

  public j(EngineSettings paramEngineSettings, Handler paramHandler, l paraml)
  {
    this.b = paramEngineSettings;
    this.e = paramHandler;
    this.c = paraml;
    this.d = null;
  }

  public void a()
  {
    this.f = true;
  }

  public abstract void a(Context paramContext);

  // ERROR //
  protected final void a(Context paramContext, java.lang.String paramString, k paramk)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 41	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   4: astore 7
    //   6: aload_1
    //   7: invokevirtual 47	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   10: aload 7
    //   12: aconst_null
    //   13: aconst_null
    //   14: aconst_null
    //   15: aconst_null
    //   16: invokevirtual 53	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore 8
    //   21: aload 8
    //   23: astore 5
    //   25: aload 5
    //   27: ifnull +70 -> 97
    //   30: aload_0
    //   31: getfield 23	org/antivirus/core/scanners/j:f	Z
    //   34: ifne +56 -> 90
    //   37: aload 5
    //   39: invokeinterface 59 1 0
    //   44: istore 9
    //   46: iload 9
    //   48: ifeq +42 -> 90
    //   51: aload_3
    //   52: invokeinterface 63 1 0
    //   57: goto -27 -> 30
    //   60: astore 10
    //   62: aload 10
    //   64: invokestatic 69	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   67: goto -37 -> 30
    //   70: astore 4
    //   72: aload 4
    //   74: invokestatic 69	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   77: aload 5
    //   79: ifnull +10 -> 89
    //   82: aload 5
    //   84: invokeinterface 72 1 0
    //   89: return
    //   90: aload 5
    //   92: invokeinterface 72 1 0
    //   97: aload 5
    //   99: ifnull -10 -> 89
    //   102: aload 5
    //   104: invokeinterface 72 1 0
    //   109: goto -20 -> 89
    //   112: astore 6
    //   114: aconst_null
    //   115: astore 5
    //   117: aload 5
    //   119: ifnull +10 -> 129
    //   122: aload 5
    //   124: invokeinterface 72 1 0
    //   129: aload 6
    //   131: athrow
    //   132: astore 6
    //   134: goto -17 -> 117
    //   137: astore 4
    //   139: aconst_null
    //   140: astore 5
    //   142: goto -70 -> 72
    //
    // Exception table:
    //   from	to	target	type
    //   51	57	60	java/lang/Exception
    //   30	46	70	java/lang/Exception
    //   62	67	70	java/lang/Exception
    //   90	97	70	java/lang/Exception
    //   0	21	112	finally
    //   30	46	132	finally
    //   51	57	132	finally
    //   62	67	132	finally
    //   72	77	132	finally
    //   90	97	132	finally
    //   0	21	137	java/lang/Exception
  }

  public final void a(Bundle paramBundle)
  {
    if (this.e == null);
    while (true)
    {
      return;
      try
      {
        Message localMessage = Message.obtain();
        localMessage.what = 1014;
        if (paramBundle != null)
          localMessage.obj = paramBundle;
        localMessage.setTarget(this.e);
        this.e.sendMessage(localMessage);
      }
      catch (Exception localException)
      {
        Logger.log(localException);
      }
    }
  }

  public void a(Messenger paramMessenger, m paramm)
  {
    this.d = paramMessenger;
    if ((this.c != null) && (paramm != null))
      this.c.a = paramm;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.j
 * JD-Core Version:    0.6.2
 */