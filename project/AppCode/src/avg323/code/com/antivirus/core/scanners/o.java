package com.antivirus.core.scanners;

import android.content.Context;
import android.os.Messenger;
import com.antivirus.core.b;
import com.avg.toolkit.f.a;

public class o extends k
{
  private int f;

  protected o(b paramb, Messenger paramMessenger, int paramInt)
  {
    super(paramb, null, null, paramMessenger);
    this.a = new s();
    this.f = paramInt;
    ((s)this.a).b = paramInt;
  }

  private void a(Context paramContext)
  {
    if (b());
    while (true)
    {
      return;
      try
      {
        a(paramContext, "content://com.android.contacts/contacts", new p(this));
        if (((s)this.a).c != 0)
          continue;
        a(paramContext, "content://contacts/people", new q(this));
      }
      catch (Exception localException)
      {
        while (true)
          a.a(localException);
      }
    }
  }

  private void b(Context paramContext)
  {
    if (b());
    while (true)
    {
      return;
      a(paramContext, "content://browser/bookmarks", new r(this));
    }
  }

  // ERROR //
  private void c(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 31	com/antivirus/core/scanners/o:b	()Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_1
    //   9: invokevirtual 65	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   12: invokestatic 71	android/provider/Browser:getAllVisitedUrls	(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    //   15: astore 8
    //   17: aload 8
    //   19: astore 5
    //   21: aload 5
    //   23: ifnull +51 -> 74
    //   26: aload 5
    //   28: invokeinterface 77 1 0
    //   33: ifle +41 -> 74
    //   36: aload_0
    //   37: getfield 20	com/antivirus/core/scanners/o:a	Lcom/antivirus/core/scanners/e;
    //   40: checkcast 13	com/antivirus/core/scanners/s
    //   43: aload 5
    //   45: invokeinterface 77 1 0
    //   50: putfield 80	com/antivirus/core/scanners/s:e	I
    //   53: aload_0
    //   54: invokevirtual 31	com/antivirus/core/scanners/o:b	()Z
    //   57: ifne +17 -> 74
    //   60: aload 5
    //   62: invokeinterface 83 1 0
    //   67: istore 11
    //   69: iload 11
    //   71: ifne -18 -> 53
    //   74: aload 5
    //   76: ifnull -69 -> 7
    //   79: aload 5
    //   81: invokeinterface 86 1 0
    //   86: goto -79 -> 7
    //   89: astore 10
    //   91: aload 10
    //   93: invokestatic 54	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   96: goto -22 -> 74
    //   99: astore 9
    //   101: aload 5
    //   103: astore_3
    //   104: ldc 88
    //   106: invokestatic 91	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   109: aload_3
    //   110: ifnull -103 -> 7
    //   113: aload_3
    //   114: invokeinterface 86 1 0
    //   119: goto -112 -> 7
    //   122: astore 7
    //   124: aconst_null
    //   125: astore 5
    //   127: aload 7
    //   129: astore 6
    //   131: aload 5
    //   133: ifnull +10 -> 143
    //   136: aload 5
    //   138: invokeinterface 86 1 0
    //   143: aload 6
    //   145: athrow
    //   146: astore 6
    //   148: goto -17 -> 131
    //   151: astore 4
    //   153: aload_3
    //   154: astore 5
    //   156: aload 4
    //   158: astore 6
    //   160: goto -29 -> 131
    //   163: astore_2
    //   164: aconst_null
    //   165: astore_3
    //   166: goto -62 -> 104
    //
    // Exception table:
    //   from	to	target	type
    //   53	69	89	java/lang/Exception
    //   26	53	99	java/lang/Exception
    //   91	96	99	java/lang/Exception
    //   8	17	122	finally
    //   26	53	146	finally
    //   53	69	146	finally
    //   91	96	146	finally
    //   104	109	151	finally
    //   8	17	163	java/lang/Exception
  }

  public void a()
  {
    super.a();
  }

  public void a(Context paramContext, boolean paramBoolean)
  {
    if (((0x1 & this.f) != 0) && (!b()));
    try
    {
      b(paramContext);
      if (((0x2 & this.f) == 0) || (b()));
    }
    catch (Exception localException2)
    {
      try
      {
        c(paramContext);
        if (((0x4 & this.f) == 0) || (b()));
      }
      catch (Exception localException2)
      {
        try
        {
          while (true)
          {
            a(paramContext);
            return;
            localException3 = localException3;
            a.a(localException3);
          }
          localException2 = localException2;
          a.a(localException2);
        }
        catch (Exception localException1)
        {
          while (true)
            a.a(localException1);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.o
 * JD-Core Version:    0.6.2
 */