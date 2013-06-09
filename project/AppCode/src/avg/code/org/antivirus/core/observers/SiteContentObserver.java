package org.antivirus.core.observers;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

public class SiteContentObserver extends ContentObserver
{
  public Uri HistUri = Uri.parse("content://com.android.browser/history");
  public Uri UrlUri = Uri.parse("content://browser/bookmarks");
  private Context a;

  public SiteContentObserver(Context paramContext, Handler paramHandler)
  {
    super(paramHandler);
    this.a = paramContext;
  }

  public SiteContentObserver(Handler paramHandler)
  {
    super(paramHandler);
  }

  public void discnnectContext()
  {
    if (this.a != null)
      this.a = null;
  }

  // ERROR //
  public void onChange(boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: iload_1
    //   4: invokespecial 38	android/database/ContentObserver:onChange	(Z)V
    //   7: getstatic 44	android/os/Build$VERSION:SDK_INT	I
    //   10: bipush 13
    //   12: if_icmple +60 -> 72
    //   15: aload_0
    //   16: getfield 30	org/antivirus/core/observers/SiteContentObserver:a	Landroid/content/Context;
    //   19: invokevirtual 50	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   22: aload_0
    //   23: getfield 28	org/antivirus/core/observers/SiteContentObserver:HistUri	Landroid/net/Uri;
    //   26: iconst_2
    //   27: anewarray 52	java/lang/String
    //   30: dup
    //   31: iconst_0
    //   32: ldc 54
    //   34: aastore
    //   35: dup
    //   36: iconst_1
    //   37: ldc 56
    //   39: aastore
    //   40: ldc 58
    //   42: aconst_null
    //   43: ldc 60
    //   45: invokevirtual 66	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore 13
    //   50: aload 13
    //   52: astore 5
    //   54: aload 5
    //   56: ifnonnull +58 -> 114
    //   59: aload 5
    //   61: ifnull +10 -> 71
    //   64: aload 5
    //   66: invokeinterface 71 1 0
    //   71: return
    //   72: aload_0
    //   73: getfield 30	org/antivirus/core/observers/SiteContentObserver:a	Landroid/content/Context;
    //   76: invokevirtual 50	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   79: aload_0
    //   80: getfield 24	org/antivirus/core/observers/SiteContentObserver:UrlUri	Landroid/net/Uri;
    //   83: iconst_2
    //   84: anewarray 52	java/lang/String
    //   87: dup
    //   88: iconst_0
    //   89: ldc 54
    //   91: aastore
    //   92: dup
    //   93: iconst_1
    //   94: ldc 56
    //   96: aastore
    //   97: ldc 58
    //   99: aconst_null
    //   100: ldc 60
    //   102: invokevirtual 66	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   105: astore 6
    //   107: aload 6
    //   109: astore 5
    //   111: goto -57 -> 54
    //   114: aload 5
    //   116: invokeinterface 75 1 0
    //   121: ifeq +61 -> 182
    //   124: aload 5
    //   126: iconst_1
    //   127: invokeinterface 79 2 0
    //   132: astore 7
    //   134: new 81	android/content/Intent
    //   137: dup
    //   138: invokespecial 83	android/content/Intent:<init>	()V
    //   141: astore 8
    //   143: aload 8
    //   145: getstatic 89	org/antivirus/core/AVCoreService:SERVICE_IDENTIFIER	Landroid/content/ComponentName;
    //   148: invokevirtual 93	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   151: pop
    //   152: aload 8
    //   154: ldc 95
    //   156: bipush 10
    //   158: invokevirtual 99	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   161: pop
    //   162: aload 8
    //   164: ldc 101
    //   166: aload 7
    //   168: invokevirtual 104	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   171: pop
    //   172: aload_0
    //   173: getfield 30	org/antivirus/core/observers/SiteContentObserver:a	Landroid/content/Context;
    //   176: aload 8
    //   178: invokevirtual 108	android/content/Context:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   181: pop
    //   182: aload 5
    //   184: ifnull -113 -> 71
    //   187: aload 5
    //   189: invokeinterface 71 1 0
    //   194: goto -123 -> 71
    //   197: astore 4
    //   199: aconst_null
    //   200: astore 5
    //   202: aload 4
    //   204: invokestatic 114	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   207: aload 5
    //   209: ifnull -138 -> 71
    //   212: aload 5
    //   214: invokeinterface 71 1 0
    //   219: goto -148 -> 71
    //   222: astore_3
    //   223: aload_2
    //   224: ifnull +9 -> 233
    //   227: aload_2
    //   228: invokeinterface 71 1 0
    //   233: aload_3
    //   234: athrow
    //   235: astore_3
    //   236: aload 5
    //   238: astore_2
    //   239: goto -16 -> 223
    //   242: astore 4
    //   244: goto -42 -> 202
    //
    // Exception table:
    //   from	to	target	type
    //   7	50	197	java/lang/Exception
    //   72	107	197	java/lang/Exception
    //   7	50	222	finally
    //   72	107	222	finally
    //   114	182	235	finally
    //   202	207	235	finally
    //   114	182	242	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.observers.SiteContentObserver
 * JD-Core Version:    0.6.2
 */