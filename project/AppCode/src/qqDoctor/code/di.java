import android.content.Context;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog.b;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import com.tencent.tccsync.TccRemoteSyncCheckUtil;
import com.tencent.tmsecure.common.TMSApplication;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicInteger;

public class di
{
  public static int a;
  public static int b;
  public static np c;
  public static WifiApproveDialog.b d;
  public static Class<?> e;
  private static int f;
  private static int g;
  private static int h;
  private static int i;

  public static int a(Object paramObject, String paramString)
  {
    int j = 1;
    a(paramObject.getClass().getName());
    Field localField = b(paramString);
    if (localField != null);
    try
    {
      int k = localField.getInt(paramObject);
      j = k;
      return j;
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
  }

  public static int a(String paramString, int paramInt)
  {
    Field localField = b(paramString);
    if (localField != null);
    try
    {
      int j = localField.getInt(null);
      paramInt = j;
      return paramInt;
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
  }

  public static Object a(Object paramObject, String paramString, Object[] paramArrayOfObject)
    throws Exception
  {
    Class localClass = paramObject.getClass();
    Class[] arrayOfClass = new Class[paramArrayOfObject.length];
    int j = 0;
    int k = paramArrayOfObject.length;
    if (j >= k)
      return localClass.getMethod(paramString, arrayOfClass).invoke(paramObject, paramArrayOfObject);
    arrayOfClass[j] = paramArrayOfObject[j].getClass();
    if (arrayOfClass[j] == Integer.class)
      arrayOfClass[j] = Integer.TYPE;
    while (true)
    {
      j++;
      break;
      if (arrayOfClass[j] == Boolean.class)
        arrayOfClass[j] = Boolean.TYPE;
    }
  }

  public static Object a(String paramString1, String paramString2)
  {
    a(paramString1);
    Field localField = b(paramString2);
    Object localObject1 = null;
    if (localField == null);
    while (true)
    {
      return localObject1;
      try
      {
        Object localObject2 = localField.get(null);
        localObject1 = localObject2;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localIllegalArgumentException.printStackTrace();
        localObject1 = null;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localIllegalAccessException.printStackTrace();
        localObject1 = null;
      }
    }
  }

  public static boolean a()
  {
    boolean bool1 = false;
    try
    {
      if (!cw.d().b())
      {
        bool1 = false;
      }
      else
      {
        AtomicInteger localAtomicInteger1 = new AtomicInteger();
        AtomicInteger localAtomicInteger2 = new AtomicInteger();
        AtomicInteger localAtomicInteger3 = new AtomicInteger();
        AtomicInteger localAtomicInteger4 = new AtomicInteger();
        AtomicInteger localAtomicInteger5 = new AtomicInteger();
        TccRemoteSyncCheckUtil localTccRemoteSyncCheckUtil = new TccRemoteSyncCheckUtil();
        dk.b("StatisticsUtil", "collectRemoteSyncCheck(), getRomteInfo");
        boolean bool2 = a(localTccRemoteSyncCheckUtil);
        dk.b("StatisticsUtil", "collectRemoteSyncCheck(), getRomteInfo=" + bool2);
        bool1 = false;
        if (bool2)
        {
          int j = localTccRemoteSyncCheckUtil.getRemoteSyncCheck(localAtomicInteger1, localAtomicInteger2, localAtomicInteger3, localAtomicInteger4);
          int k = localTccRemoteSyncCheckUtil.getRemoteContactDelTotal(localAtomicInteger5);
          dk.b("StatisticsUtil", "collectRemoteSyncCheck(), getRemoteSyncCheck=" + j + " resGetDelContact=" + k);
          dk.b("StatisticsUtil", "collectRemoteSyncCheck(), remoteContactDelTotal=" + i);
          dk.b("StatisticsUtil", "collectRemoteSyncCheck(), remoteContactTotal=" + a + " remoteSmsTotal=" + f + " remoteBookmarkTotal=" + h + " remoteCalllogTotal=" + g);
          localTccRemoteSyncCheckUtil.release();
          if (k == 0)
            i = localAtomicInteger5.get();
          bool1 = false;
          if (j == 0)
          {
            a = localAtomicInteger1.get();
            f = localAtomicInteger2.get();
            h = localAtomicInteger4.get();
            g = localAtomicInteger3.get();
            bool1 = true;
          }
        }
      }
    }
    catch (Throwable localThrowable)
    {
      dk.c("StatisticsUtil", "collectRemoteSyncCheck(), " + localThrowable.toString());
    }
    return bool1;
  }

  private static boolean a(TccRemoteSyncCheckUtil paramTccRemoteSyncCheckUtil)
  {
    boolean bool1 = false;
    if (paramTccRemoteSyncCheckUtil == null);
    while (true)
    {
      return bool1;
      String str1 = de.b();
      String str2 = cw.d().f();
      String str3 = cw.d().e();
      int j;
      label41: boolean bool2;
      label49: String str4;
      byte[] arrayOfByte1;
      Object localObject1;
      if (Environment.getExternalStorageState().equals("mounted"))
      {
        j = 1;
        if (j == 0)
          break label141;
        bool2 = true;
        int k = paramTccRemoteSyncCheckUtil.makeCheckWapDataPackage(str1, str2, str3, de.a(bool2), de.a(), 16);
        bool1 = false;
        if (k != 0)
          continue;
        str4 = paramTccRemoteSyncCheckUtil.getPostUrl();
        arrayOfByte1 = paramTccRemoteSyncCheckUtil.getPostBody();
        localObject1 = null;
      }
      try
      {
        dd localdd = cj.a().a(str4);
        localObject1 = localdd;
        if (localObject1 == null);
        label141: int m;
        byte[] arrayOfByte2;
        do
        {
          bool1 = false;
          if (localObject1 == null)
            break;
          localObject1.d();
          cj.a().a(localObject1);
          bool1 = false;
          break;
          j = 0;
          break label41;
          bool2 = false;
          break label49;
          localObject1.a(0);
          localObject1.b(arrayOfByte1);
          m = localObject1.a();
          arrayOfByte2 = localObject1.b();
        }
        while (200 != m);
        if (localObject1 != null)
        {
          localObject1.d();
          cj.a().a(localObject1);
        }
        bool1 = false;
        if (arrayOfByte2 == null)
          continue;
        int n = paramTccRemoteSyncCheckUtil.solveLoginResponsePackage(arrayOfByte2, arrayOfByte2.length);
        bool1 = false;
        if (n != 0)
          continue;
        bool1 = true;
      }
      catch (Exception localException)
      {
        dk.c("StatisticsUtil", "getRomteInfo(), " + localException.toString());
        bool1 = false;
        if (localObject1 == null)
          continue;
        localObject1.d();
        cj.a().a(localObject1);
        bool1 = false;
      }
      finally
      {
        if (localObject1 != null)
        {
          localObject1.d();
          cj.a().a(localObject1);
        }
      }
    }
  }

  public static boolean a(String paramString)
  {
    try
    {
      Class localClass2 = Class.forName(paramString);
      localClass1 = localClass2;
      e = localClass1;
      if (localClass1 != null)
      {
        bool = true;
        return bool;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
      {
        localClassNotFoundException.printStackTrace();
        Class localClass1 = null;
        continue;
        boolean bool = false;
      }
    }
  }

  // ERROR //
  public static Field b(String paramString)
  {
    // Byte code:
    //   0: getstatic 247	di:e	Ljava/lang/Class;
    //   3: aload_0
    //   4: invokevirtual 255	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   7: astore 6
    //   9: aload 6
    //   11: astore_2
    //   12: aload_2
    //   13: iconst_1
    //   14: invokevirtual 259	java/lang/reflect/Field:setAccessible	(Z)V
    //   17: aload_2
    //   18: areturn
    //   19: astore 4
    //   21: aconst_null
    //   22: astore_2
    //   23: aload 4
    //   25: astore 5
    //   27: aload 5
    //   29: invokevirtual 260	java/lang/SecurityException:printStackTrace	()V
    //   32: goto -15 -> 17
    //   35: astore_1
    //   36: aconst_null
    //   37: astore_2
    //   38: aload_1
    //   39: astore_3
    //   40: aload_3
    //   41: invokevirtual 261	java/lang/NoSuchFieldException:printStackTrace	()V
    //   44: goto -27 -> 17
    //   47: astore_3
    //   48: goto -8 -> 40
    //   51: astore 5
    //   53: goto -26 -> 27
    //
    // Exception table:
    //   from	to	target	type
    //   0	9	19	java/lang/SecurityException
    //   0	9	35	java/lang/NoSuchFieldException
    //   12	17	47	java/lang/NoSuchFieldException
    //   12	17	51	java/lang/SecurityException
  }

  public static np b()
  {
    int j;
    if (c == null)
    {
      j = qx.a().h();
      if (j != qx.a.a)
        break label35;
      c = new np((byte)0);
    }
    while (true)
    {
      return c;
      label35: if (j == qx.a.b)
      {
        c = new nn((byte)0);
      }
      else if (j == qx.a.e)
      {
        c = new nq((byte)0);
      }
      else if (j == qx.a.d)
      {
        c = new nt((byte)0);
      }
      else if (j == qx.a.c)
      {
        c = new nx((byte)0);
      }
      else if (j == qx.a.f)
      {
        c = new no((byte)0);
      }
      else if (j == qx.a.g)
      {
        c = new oa((byte)0);
      }
      else if (j == qx.a.i)
      {
        c = new nw((byte)0);
      }
      else if (j == qx.a.j)
      {
        c = new nz((byte)0);
      }
      else if (j == qx.a.h)
      {
        c = new nv((byte)0);
      }
      else if (j == qx.a.k)
      {
        c = new nu((byte)0);
      }
      else if (j == qx.a.l)
      {
        c = new ns((byte)0);
      }
      else if (j == qx.a.m)
      {
        c = new nh((byte)0);
      }
      else if (j == qx.a.p)
      {
        c = new nr((byte)0);
      }
      else if (j == qx.a.n)
      {
        c = new nl((byte)0);
      }
      else if (j == qx.a.o)
      {
        c = new ni((byte)0);
      }
      else
      {
        if (j != qx.a.q)
          break;
        c = new nm((byte)0);
      }
    }
    throw new RuntimeException("^^ no such PLATFORM_OEM");
  }

  public static View c()
  {
    if (d == null)
      d = new WifiApproveDialog.b((byte)0);
    WifiApproveDialog.b localb = d;
    if (localb.b == null)
    {
      LayoutInflater localLayoutInflater = (LayoutInflater)TMSApplication.getApplicaionContext().getSystemService("layout_inflater");
      if (localLayoutInflater != null)
      {
        localb.b = localLayoutInflater.inflate(2130903084, null);
        localb.d = ((ProgressBarView)localb.b.findViewById(2131230836));
        localb.e = ((ButtonView)localb.b.findViewById(2131230834));
        localb.f = ((ButtonView)localb.b.findViewById(2131230835));
        localb.c = ((WebView)localb.b.findViewById(2131230839));
        localb.g = ((ButtonView)localb.b.findViewById(2131230842));
        localb.h = ((ButtonView)localb.b.findViewById(2131230841));
        localb.i = ((ProgressBarView)localb.b.findViewById(2131230838));
        localb.j = ((ImageView)localb.b.findViewById(2131230832));
        localb.j.setAlpha(72);
        localb.d.setProgressTextVisible(8);
        localb.h.setOnClickListener(localb.k);
        localb.g.setOnClickListener(localb.k);
        localb.e.setOnClickListener(localb.l);
        localb.f.setOnClickListener(localb.l);
        localb.j.setOnClickListener(localb.l);
        if (localb.c != null)
        {
          WebSettings localWebSettings = localb.c.getSettings();
          localWebSettings.setJavaScriptEnabled(true);
          localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
          localWebSettings.setSupportZoom(true);
          localWebSettings.setSavePassword(false);
          localWebSettings.setCacheMode(2);
          localb.c.setWebViewClient(localb.n);
          localb.c.setWebChromeClient(localb.m);
        }
      }
    }
    return localb.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     di
 * JD-Core Version:    0.6.2
 */