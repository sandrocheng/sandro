import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater.Factory;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.plugin.AbsPluginControler;
import com.tencent.tmsecure.module.plugin.AbsPluginDatabaseFactor;
import com.tencent.tmsecure.module.plugin.IContext;
import com.tencent.tmsecure.module.plugin.IContext.ILayoutInflater;
import com.tencent.tmsecure.module.plugin.IPluginDatabase;
import com.tencent.tmsecure.module.plugin.IPluginInterface;
import com.tencent.tmsecure.module.plugin.PluginEntity;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class bxr extends BaseManager
{
  private static final HashMap<String, Constructor<?>> h;
  private Context a;
  private PackageManager b;
  private String c;
  private IContext d;
  private AbsPluginControler e;
  private ClassLoader f = IPluginInterface.class.getClassLoader();
  private final Map<String, PluginEntity> g = new HashMap();
  private boolean i;

  static
  {
    if (!bxr.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      j = bool;
      h = new HashMap();
      return;
    }
  }

  // ERROR //
  private PluginEntity a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 56	bxr:a	Landroid/content/Context;
    //   4: ldc 65
    //   6: iconst_0
    //   7: invokevirtual 71	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   10: invokevirtual 77	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   13: astore_2
    //   14: new 73	java/io/File
    //   17: dup
    //   18: aload_1
    //   19: invokespecial 80	java/io/File:<init>	(Ljava/lang/String;)V
    //   22: invokevirtual 83	java/io/File:exists	()Z
    //   25: istore_3
    //   26: aconst_null
    //   27: astore 4
    //   29: iload_3
    //   30: ifeq +23 -> 53
    //   33: aload_0
    //   34: getfield 85	bxr:b	Landroid/content/pm/PackageManager;
    //   37: aload_1
    //   38: bipush 64
    //   40: invokevirtual 91	android/content/pm/PackageManager:getPackageArchiveInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   43: astore 5
    //   45: aconst_null
    //   46: astore 4
    //   48: aload 5
    //   50: ifnonnull +6 -> 56
    //   53: aload 4
    //   55: areturn
    //   56: new 93	bxr$b
    //   59: dup
    //   60: aload_0
    //   61: aload_1
    //   62: invokespecial 96	bxr$b:<init>	(Lbxr;Ljava/lang/String;)V
    //   65: astore 6
    //   67: aload 5
    //   69: getfield 101	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   72: astore 7
    //   74: aload 6
    //   76: invokeinterface 107 1 0
    //   81: astore 8
    //   83: aload 8
    //   85: ldc 109
    //   87: ldc 111
    //   89: aload 7
    //   91: invokevirtual 117	android/content/res/Resources:getIdentifier	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    //   94: istore 9
    //   96: iload 9
    //   98: ifeq +195 -> 293
    //   101: aload 8
    //   103: iload 9
    //   105: invokevirtual 121	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   108: astore 10
    //   110: aload 6
    //   112: invokeinterface 107 1 0
    //   117: astore 11
    //   119: aload 11
    //   121: ldc 123
    //   123: ldc 111
    //   125: aload 7
    //   127: invokevirtual 117	android/content/res/Resources:getIdentifier	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    //   130: istore 12
    //   132: iload 12
    //   134: ifeq +165 -> 299
    //   137: aload 11
    //   139: iload 12
    //   141: invokevirtual 121	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   144: astore 13
    //   146: aload 6
    //   148: invokeinterface 107 1 0
    //   153: astore 14
    //   155: aload 14
    //   157: ldc 125
    //   159: ldc 111
    //   161: aload 7
    //   163: invokevirtual 117	android/content/res/Resources:getIdentifier	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    //   166: istore 15
    //   168: iload 15
    //   170: ifeq +135 -> 305
    //   173: aload 14
    //   175: iload 15
    //   177: invokevirtual 121	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   180: astore 16
    //   182: new 127	dalvik/system/DexClassLoader
    //   185: dup
    //   186: aload_1
    //   187: aload_2
    //   188: aconst_null
    //   189: aload_0
    //   190: getfield 51	bxr:f	Ljava/lang/ClassLoader;
    //   193: invokespecial 130	dalvik/system/DexClassLoader:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    //   196: aload 10
    //   198: invokevirtual 134	dalvik/system/DexClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   201: invokevirtual 138	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   204: checkcast 45	com/tencent/tmsecure/module/plugin/IPluginInterface
    //   207: astore 20
    //   209: aload 20
    //   211: aload_0
    //   212: getfield 140	bxr:d	Lcom/tencent/tmsecure/module/plugin/IContext;
    //   215: aload 6
    //   217: aload_0
    //   218: getfield 142	bxr:e	Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;
    //   221: invokeinterface 146 4 0
    //   226: new 148	com/tencent/tmsecure/module/plugin/PluginEntity
    //   229: dup
    //   230: invokespecial 149	com/tencent/tmsecure/module/plugin/PluginEntity:<init>	()V
    //   233: astore 21
    //   235: aload 21
    //   237: aload 7
    //   239: putfield 152	com/tencent/tmsecure/module/plugin/PluginEntity:mPluginPkgName	Ljava/lang/String;
    //   242: aload 21
    //   244: aload_1
    //   245: iconst_0
    //   246: bipush 252
    //   248: aload_1
    //   249: invokevirtual 158	java/lang/String:length	()I
    //   252: iadd
    //   253: invokevirtual 162	java/lang/String:substring	(II)Ljava/lang/String;
    //   256: putfield 165	com/tencent/tmsecure/module/plugin/PluginEntity:mPluginFilePath	Ljava/lang/String;
    //   259: aload 21
    //   261: aload 13
    //   263: putfield 168	com/tencent/tmsecure/module/plugin/PluginEntity:mPluginName	Ljava/lang/String;
    //   266: aload 21
    //   268: aload 16
    //   270: invokestatic 174	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   273: invokevirtual 177	java/lang/Integer:intValue	()I
    //   276: putfield 181	com/tencent/tmsecure/module/plugin/PluginEntity:mPluginVerion	I
    //   279: aload 21
    //   281: aload 20
    //   283: putfield 185	com/tencent/tmsecure/module/plugin/PluginEntity:mPluginInterface	Lcom/tencent/tmsecure/module/plugin/IPluginInterface;
    //   286: aload 21
    //   288: astore 4
    //   290: goto -237 -> 53
    //   293: aconst_null
    //   294: astore 10
    //   296: goto -186 -> 110
    //   299: aconst_null
    //   300: astore 13
    //   302: goto -156 -> 146
    //   305: aconst_null
    //   306: astore 16
    //   308: goto -126 -> 182
    //   311: astore 19
    //   313: aload 19
    //   315: invokevirtual 188	java/lang/ClassNotFoundException:printStackTrace	()V
    //   318: goto -265 -> 53
    //   321: astore 18
    //   323: aload 18
    //   325: invokevirtual 189	java/lang/IllegalAccessException:printStackTrace	()V
    //   328: goto -275 -> 53
    //   331: astore 17
    //   333: aload 17
    //   335: invokevirtual 190	java/lang/InstantiationException:printStackTrace	()V
    //   338: goto -285 -> 53
    //   341: astore 17
    //   343: aload 21
    //   345: astore 4
    //   347: goto -14 -> 333
    //   350: astore 18
    //   352: aload 21
    //   354: astore 4
    //   356: goto -33 -> 323
    //   359: astore 19
    //   361: aload 21
    //   363: astore 4
    //   365: goto -52 -> 313
    //
    // Exception table:
    //   from	to	target	type
    //   182	235	311	java/lang/ClassNotFoundException
    //   182	235	321	java/lang/IllegalAccessException
    //   182	235	331	java/lang/InstantiationException
    //   235	286	341	java/lang/InstantiationException
    //   235	286	350	java/lang/IllegalAccessException
    //   235	286	359	java/lang/ClassNotFoundException
  }

  // ERROR //
  private static String a(android.content.pm.Signature paramSignature)
  {
    // Byte code:
    //   0: new 199	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokevirtual 205	android/content/pm/Signature:toByteArray	()[B
    //   8: invokespecial 208	java/io/ByteArrayInputStream:<init>	([B)V
    //   11: astore_1
    //   12: ldc 210
    //   14: invokestatic 216	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   17: aload_1
    //   18: invokevirtual 220	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   21: checkcast 222	java/security/cert/X509Certificate
    //   24: invokevirtual 225	java/security/cert/X509Certificate:getEncoded	()[B
    //   27: invokestatic 230	btk:b	([B)Ljava/lang/String;
    //   30: astore 9
    //   32: aload 9
    //   34: astore 5
    //   36: aload_1
    //   37: invokevirtual 233	java/io/ByteArrayInputStream:close	()V
    //   40: aload 5
    //   42: areturn
    //   43: astore_2
    //   44: aconst_null
    //   45: astore_1
    //   46: aload_2
    //   47: invokevirtual 234	java/security/cert/CertificateException:printStackTrace	()V
    //   50: aload_1
    //   51: ifnull +108 -> 159
    //   54: aload_1
    //   55: invokevirtual 233	java/io/ByteArrayInputStream:close	()V
    //   58: aconst_null
    //   59: astore 5
    //   61: goto -21 -> 40
    //   64: astore 6
    //   66: aload 6
    //   68: invokevirtual 235	java/io/IOException:printStackTrace	()V
    //   71: aconst_null
    //   72: astore 5
    //   74: goto -34 -> 40
    //   77: astore 7
    //   79: aconst_null
    //   80: astore_1
    //   81: aload 7
    //   83: invokevirtual 236	java/lang/Exception:printStackTrace	()V
    //   86: aload_1
    //   87: ifnull +72 -> 159
    //   90: aload_1
    //   91: invokevirtual 233	java/io/ByteArrayInputStream:close	()V
    //   94: aconst_null
    //   95: astore 5
    //   97: goto -57 -> 40
    //   100: astore 8
    //   102: aload 8
    //   104: invokevirtual 235	java/io/IOException:printStackTrace	()V
    //   107: aconst_null
    //   108: astore 5
    //   110: goto -70 -> 40
    //   113: astore_3
    //   114: aconst_null
    //   115: astore_1
    //   116: aload_1
    //   117: ifnull +7 -> 124
    //   120: aload_1
    //   121: invokevirtual 233	java/io/ByteArrayInputStream:close	()V
    //   124: aload_3
    //   125: athrow
    //   126: astore 4
    //   128: aload 4
    //   130: invokevirtual 235	java/io/IOException:printStackTrace	()V
    //   133: goto -9 -> 124
    //   136: astore 10
    //   138: aload 10
    //   140: invokevirtual 235	java/io/IOException:printStackTrace	()V
    //   143: goto -103 -> 40
    //   146: astore_3
    //   147: goto -31 -> 116
    //   150: astore 7
    //   152: goto -71 -> 81
    //   155: astore_2
    //   156: goto -110 -> 46
    //   159: aconst_null
    //   160: astore 5
    //   162: goto -122 -> 40
    //
    // Exception table:
    //   from	to	target	type
    //   0	12	43	java/security/cert/CertificateException
    //   54	58	64	java/io/IOException
    //   0	12	77	java/lang/Exception
    //   90	94	100	java/io/IOException
    //   0	12	113	finally
    //   120	124	126	java/io/IOException
    //   36	40	136	java/io/IOException
    //   12	32	146	finally
    //   46	50	146	finally
    //   81	86	146	finally
    //   12	32	150	java/lang/Exception
    //   12	32	155	java/security/cert/CertificateException
  }

  public final AbsPluginControler a()
  {
    return this.e;
  }

  public final IPluginDatabase a(AbsPluginDatabaseFactor paramAbsPluginDatabaseFactor)
  {
    return new bxo(this.a, paramAbsPluginDatabaseFactor);
  }

  public final PluginEntity a(int paramInt)
  {
    synchronized (this.g)
    {
      Iterator localIterator = this.g.values().iterator();
      int k;
      do
      {
        if (!localIterator.hasNext())
        {
          localPluginEntity = null;
          return localPluginEntity;
        }
        PluginEntity localPluginEntity = (PluginEntity)localIterator.next();
        k = localPluginEntity.getKey();
      }
      while (k != paramInt);
    }
  }

  public final void a(AbsPluginControler paramAbsPluginControler)
  {
    this.e = paramAbsPluginControler;
  }

  public final List<PluginEntity> b()
  {
    File[] arrayOfFile;
    try
    {
      if (this.i)
        break label135;
      synchronized (this.g)
      {
        File localFile1 = new File(TMSApplication.getStrFromEnvMap("plugin_dir"));
        if (!localFile1.exists())
          break label128;
        arrayOfFile = localFile1.listFiles(new bxs(this));
        if ((arrayOfFile == null) || (arrayOfFile.length == 0))
          throw new RuntimeException("Cound found any plugins at " + localFile1.getAbsolutePath());
      }
    }
    finally
    {
    }
    int k;
    int m;
    if ((arrayOfFile != null) && (arrayOfFile.length > 0))
    {
      k = arrayOfFile.length;
      m = 0;
    }
    while (true)
    {
      label128: this.i = true;
      label135: ArrayList localArrayList = new ArrayList(this.g.values());
      return localArrayList;
      do
      {
        File localFile2 = arrayOfFile[m];
        File localFile3 = new File(localFile2.getAbsolutePath() + ".apk");
        localFile2.renameTo(localFile3);
        PluginEntity localPluginEntity = a(localFile3.getAbsolutePath());
        localFile3.renameTo(localFile2);
        if (localPluginEntity != null)
          this.g.put(localFile2.getAbsolutePath(), localPluginEntity);
        m++;
      }
      while (m < k);
    }
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = paramContext;
    this.b = this.a.getPackageManager();
    this.d = new bxr.a();
    try
    {
      this.c = a(this.b.getPackageInfo(this.a.getPackageName(), 64).signatures[0]);
      if ((!j) && (this.c == null))
        throw new AssertionError();
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localNameNotFoundException.printStackTrace();
    }
  }

  final class a
    implements IContext
  {
    private IContext.ILayoutInflater a = new bxt(this);
    private AssetManager b = bxr.a(bxr.this).getAssets();
    private Resources c = bxr.a(bxr.this).getResources();

    public a()
    {
    }

    public final AssetManager getAssertManager()
    {
      return this.b;
    }

    public final Context getContext()
    {
      return bxr.a(bxr.this).getApplicationContext();
    }

    public final IContext.ILayoutInflater getLayoutInflater()
    {
      return this.a;
    }

    public final Resources getResources()
    {
      return this.c;
    }
  }

  final class b
    implements IContext
  {
    private IContext.ILayoutInflater a;
    private AssetManager b;
    private Resources c;
    private Resources.Theme d;
    private bxr.c e;
    private LayoutInflater.Factory f = new bxu(this);

    public b(String arg2)
    {
      try
      {
        this.b = ((AssetManager)AssetManager.class.newInstance());
        Method localMethod = AssetManager.class.getDeclaredMethod("addAssetPath", new Class[] { String.class });
        localMethod.setAccessible(true);
        Object localObject;
        localMethod.invoke(this.b, new Object[] { localObject });
        this.e = new bxr.c((byte)0);
        this.c = new Resources(this.b, bxr.a(bxr.this).getResources().getDisplayMetrics(), bxr.a(bxr.this).getResources().getConfiguration());
        this.d = this.c.newTheme();
        this.d.applyStyle(bxr.c.a, true);
        this.a = new bxv(this);
        return;
      }
      catch (SecurityException localSecurityException)
      {
        while (true)
          localSecurityException.printStackTrace();
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        while (true)
          localNoSuchMethodException.printStackTrace();
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
          localIllegalArgumentException.printStackTrace();
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        while (true)
          localIllegalAccessException.printStackTrace();
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        while (true)
          localInvocationTargetException.printStackTrace();
      }
      catch (InstantiationException localInstantiationException)
      {
        while (true)
          localInstantiationException.printStackTrace();
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }

    public final AssetManager getAssertManager()
    {
      return this.b;
    }

    public final Context getContext()
    {
      return bxr.a(bxr.this).getApplicationContext();
    }

    public final IContext.ILayoutInflater getLayoutInflater()
    {
      return this.a;
    }

    public final Resources getResources()
    {
      return this.c;
    }
  }

  static final class c
  {
    static int a;
    private static Field b;
    private Activity c;
    private Resources.Theme d;

    static
    {
      try
      {
        a = Class.forName("com.android.internal.R$style").getDeclaredField("Theme").getInt(null);
        Field localField = ContextThemeWrapper.class.getDeclaredField("mTheme");
        b = localField;
        localField.setAccessible(true);
        return;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        while (true)
          localClassNotFoundException.printStackTrace();
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
          localIllegalArgumentException.printStackTrace();
      }
      catch (SecurityException localSecurityException)
      {
        while (true)
          localSecurityException.printStackTrace();
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        while (true)
          localIllegalAccessException.printStackTrace();
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        while (true)
          localNoSuchFieldException.printStackTrace();
      }
    }

    // ERROR //
    public final void a()
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: getstatic 52	bxr$c:b	Ljava/lang/reflect/Field;
      //   5: ifnull +26 -> 31
      //   8: aload_0
      //   9: getfield 70	bxr$c:d	Landroid/content/res/Resources$Theme;
      //   12: astore_2
      //   13: aload_2
      //   14: ifnull +17 -> 31
      //   17: getstatic 52	bxr$c:b	Ljava/lang/reflect/Field;
      //   20: aload_0
      //   21: getfield 72	bxr$c:c	Landroid/app/Activity;
      //   24: aload_0
      //   25: getfield 70	bxr$c:d	Landroid/content/res/Resources$Theme;
      //   28: invokevirtual 76	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
      //   31: aload_0
      //   32: aconst_null
      //   33: putfield 72	bxr$c:c	Landroid/app/Activity;
      //   36: aload_0
      //   37: aconst_null
      //   38: putfield 70	bxr$c:d	Landroid/content/res/Resources$Theme;
      //   41: aload_0
      //   42: monitorexit
      //   43: return
      //   44: astore 4
      //   46: aload 4
      //   48: invokevirtual 60	java/lang/IllegalArgumentException:printStackTrace	()V
      //   51: goto -20 -> 31
      //   54: astore_1
      //   55: aload_0
      //   56: monitorexit
      //   57: aload_1
      //   58: athrow
      //   59: astore_3
      //   60: aload_3
      //   61: invokevirtual 62	java/lang/IllegalAccessException:printStackTrace	()V
      //   64: goto -33 -> 31
      //
      // Exception table:
      //   from	to	target	type
      //   17	31	44	java/lang/IllegalArgumentException
      //   2	13	54	finally
      //   17	31	54	finally
      //   31	51	54	finally
      //   60	64	54	finally
      //   17	31	59	java/lang/IllegalAccessException
    }

    // ERROR //
    public final void a(Activity paramActivity, Resources.Theme paramTheme)
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: getstatic 52	bxr$c:b	Ljava/lang/reflect/Field;
      //   5: astore 4
      //   7: aload 4
      //   9: ifnull +36 -> 45
      //   12: aload_0
      //   13: aload_1
      //   14: putfield 72	bxr$c:c	Landroid/app/Activity;
      //   17: aload_0
      //   18: getstatic 52	bxr$c:b	Ljava/lang/reflect/Field;
      //   21: aload_0
      //   22: getfield 72	bxr$c:c	Landroid/app/Activity;
      //   25: invokevirtual 81	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
      //   28: checkcast 83	android/content/res/Resources$Theme
      //   31: putfield 70	bxr$c:d	Landroid/content/res/Resources$Theme;
      //   34: getstatic 52	bxr$c:b	Ljava/lang/reflect/Field;
      //   37: aload_0
      //   38: getfield 72	bxr$c:c	Landroid/app/Activity;
      //   41: aload_2
      //   42: invokevirtual 76	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
      //   45: aload_0
      //   46: monitorexit
      //   47: return
      //   48: astore 6
      //   50: aload 6
      //   52: invokevirtual 60	java/lang/IllegalArgumentException:printStackTrace	()V
      //   55: goto -10 -> 45
      //   58: astore_3
      //   59: aload_0
      //   60: monitorexit
      //   61: aload_3
      //   62: athrow
      //   63: astore 5
      //   65: aload 5
      //   67: invokevirtual 62	java/lang/IllegalAccessException:printStackTrace	()V
      //   70: goto -25 -> 45
      //
      // Exception table:
      //   from	to	target	type
      //   12	45	48	java/lang/IllegalArgumentException
      //   2	7	58	finally
      //   12	45	58	finally
      //   45	55	58	finally
      //   65	70	58	finally
      //   12	45	63	java/lang/IllegalAccessException
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxr
 * JD-Core Version:    0.6.2
 */