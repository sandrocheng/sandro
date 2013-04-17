import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageManager;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

final class fl
  implements fk
{
  private static long a = -1L;
  private Context b;

  static
  {
    try
    {
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Long.TYPE;
      arrayOfClass[1] = IPackageDataObserver.class;
      PackageManager.class.getDeclaredMethod("freeStorageAndNotify", arrayOfClass).setAccessible(true);
      PackageManager.class.getDeclaredMethod("getPackageSizeInfo", new Class[] { String.class, IPackageStatsObserver.class }).setAccessible(true);
      ActivityManager.RunningAppProcessInfo.class.getDeclaredField("flags").setAccessible(true);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        localSecurityException.printStackTrace();
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      while (true)
        localNoSuchFieldException.printStackTrace();
    }
  }

  public fl(Context paramContext)
  {
    this.b = paramContext;
    this.b.getPackageManager();
    this.b.getSystemService("activity");
  }

  // ERROR //
  public final long a()
  {
    // Byte code:
    //   0: getstatic 22	fl:a	J
    //   3: ldc2_w 19
    //   6: lcmp
    //   7: ifne +76 -> 83
    //   10: new 95	java/io/File
    //   13: dup
    //   14: ldc 97
    //   16: invokespecial 100	java/io/File:<init>	(Ljava/lang/String;)V
    //   19: astore_1
    //   20: aload_1
    //   21: invokevirtual 104	java/io/File:exists	()Z
    //   24: ifeq +59 -> 83
    //   27: new 106	java/io/DataInputStream
    //   30: dup
    //   31: new 108	java/io/FileInputStream
    //   34: dup
    //   35: aload_1
    //   36: invokespecial 111	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   39: invokespecial 114	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   42: astore 4
    //   44: aload 4
    //   46: invokevirtual 118	java/io/DataInputStream:readLine	()Ljava/lang/String;
    //   49: astore 13
    //   51: aload 13
    //   53: ifnonnull +44 -> 97
    //   56: new 91	java/io/IOException
    //   59: dup
    //   60: ldc 120
    //   62: invokespecial 121	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   65: athrow
    //   66: astore 11
    //   68: aload 11
    //   70: invokevirtual 122	java/io/FileNotFoundException:printStackTrace	()V
    //   73: aload 4
    //   75: ifnull +8 -> 83
    //   78: aload 4
    //   80: invokevirtual 125	java/io/DataInputStream:close	()V
    //   83: getstatic 22	fl:a	J
    //   86: lconst_0
    //   87: lcmp
    //   88: ifle +149 -> 237
    //   91: getstatic 22	fl:a	J
    //   94: lstore_2
    //   95: lload_2
    //   96: lreturn
    //   97: aload 13
    //   99: invokevirtual 128	java/lang/String:trim	()Ljava/lang/String;
    //   102: ldc 130
    //   104: invokevirtual 134	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   107: iconst_1
    //   108: aaload
    //   109: invokestatic 138	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   112: putstatic 22	fl:a	J
    //   115: aload 4
    //   117: invokevirtual 125	java/io/DataInputStream:close	()V
    //   120: goto -37 -> 83
    //   123: astore 14
    //   125: aload 14
    //   127: invokevirtual 139	java/io/IOException:printStackTrace	()V
    //   130: goto -47 -> 83
    //   133: astore 12
    //   135: aload 12
    //   137: invokevirtual 139	java/io/IOException:printStackTrace	()V
    //   140: goto -57 -> 83
    //   143: astore 5
    //   145: aconst_null
    //   146: astore 4
    //   148: aload 5
    //   150: invokevirtual 139	java/io/IOException:printStackTrace	()V
    //   153: aload 4
    //   155: ifnull -72 -> 83
    //   158: aload 4
    //   160: invokevirtual 125	java/io/DataInputStream:close	()V
    //   163: goto -80 -> 83
    //   166: astore 8
    //   168: aload 8
    //   170: invokevirtual 139	java/io/IOException:printStackTrace	()V
    //   173: goto -90 -> 83
    //   176: astore 9
    //   178: aconst_null
    //   179: astore 4
    //   181: aload 9
    //   183: invokevirtual 140	java/lang/NumberFormatException:printStackTrace	()V
    //   186: aload 4
    //   188: ifnull -105 -> 83
    //   191: aload 4
    //   193: invokevirtual 125	java/io/DataInputStream:close	()V
    //   196: goto -113 -> 83
    //   199: astore 10
    //   201: aload 10
    //   203: invokevirtual 139	java/io/IOException:printStackTrace	()V
    //   206: goto -123 -> 83
    //   209: astore 6
    //   211: aconst_null
    //   212: astore 4
    //   214: aload 4
    //   216: ifnull +8 -> 224
    //   219: aload 4
    //   221: invokevirtual 125	java/io/DataInputStream:close	()V
    //   224: aload 6
    //   226: athrow
    //   227: astore 7
    //   229: aload 7
    //   231: invokevirtual 139	java/io/IOException:printStackTrace	()V
    //   234: goto -10 -> 224
    //   237: lconst_1
    //   238: lstore_2
    //   239: goto -144 -> 95
    //   242: astore 6
    //   244: goto -30 -> 214
    //   247: astore 9
    //   249: goto -68 -> 181
    //   252: astore 5
    //   254: goto -106 -> 148
    //   257: astore 11
    //   259: aconst_null
    //   260: astore 4
    //   262: goto -194 -> 68
    //
    // Exception table:
    //   from	to	target	type
    //   44	66	66	java/io/FileNotFoundException
    //   97	115	66	java/io/FileNotFoundException
    //   115	120	123	java/io/IOException
    //   78	83	133	java/io/IOException
    //   27	44	143	java/io/IOException
    //   158	163	166	java/io/IOException
    //   27	44	176	java/lang/NumberFormatException
    //   191	196	199	java/io/IOException
    //   27	44	209	finally
    //   219	224	227	java/io/IOException
    //   44	66	242	finally
    //   68	73	242	finally
    //   97	115	242	finally
    //   148	153	242	finally
    //   181	186	242	finally
    //   44	66	247	java/lang/NumberFormatException
    //   97	115	247	java/lang/NumberFormatException
    //   44	66	252	java/io/IOException
    //   97	115	252	java/io/IOException
    //   27	44	257	java/io/FileNotFoundException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fl
 * JD-Core Version:    0.6.2
 */