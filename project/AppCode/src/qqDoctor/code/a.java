import QQPIM.AndroidCategoryExpand;
import QQPIM.AndroidSimpleInfoExpand;
import QQPIM.Category;
import QQPIM.SoftKey;
import QQPIM.SoftSimpleInfo;
import android.app.Activity;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.hardware.Camera;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.Proxy;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Parcelable;
import android.provider.Settings.System;
import android.text.format.DateFormat;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.qq.jce.wup.UniPacket;
import com.qq.taf.jce.JceStruct;
import com.tencent.faceverify.util.Utils;
import com.tencent.mobileqq.app.ScreenShot;
import com.tencent.mobileqq.app.ScreenShot.ByteBufferWrap;
import com.tencent.qqpimsecure.service.BatteryEventReceiver;
import com.tencent.qqpimsecure.service.BlueToothReceiver;
import com.tencent.qqpimsecure.service.BootReceiver;
import com.tencent.qqpimsecure.service.ConnectionDetector;
import com.tencent.qqpimsecure.service.FastBootReceiver;
import com.tencent.qqpimsecure.service.InOutCallReceiver;
import com.tencent.qqpimsecure.service.MMSReceiver;
import com.tencent.qqpimsecure.service.NetWorkEventReceiver;
import com.tencent.qqpimsecure.service.OperatorDataSyncTaskReceiver;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.service.RootBroadcast;
import com.tencent.qqpimsecure.service.ScreenEventReceiver;
import com.tencent.qqpimsecure.service.SecureService;
import com.tencent.qqpimsecure.service.TimedTaskReceiver;
import com.tencent.qqpimsecure.service.UssdBlockedReceiver;
import com.tencent.qqpimsecure.ui.activity.HelpActivity;
import com.tencent.qqpimsecure.ui.activity.faceverify.CameraCaptureActivity;
import com.tencent.qqpimsecure.ui.activity.virus.VirusScanActivity;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import com.tencent.qqpimsecure.widget.NetSetWidgetProvider;
import com.tencent.qqpimsecure.widget.NetworkStateChangeReceiver;
import com.tencent.qqpimsecure.widget.TaskManagerWidgetProvider;
import com.tencent.qqpimsecure.widget.WidgetUpdateBoradcastReceiver;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSBootReceiver;
import com.tencent.tmsecure.exception.UnauthorizedCallerException;
import com.tencent.tmsecure.module.market.CategoryEx;
import com.tencent.tmsecure.module.market.SoftSimpleInfoEx;
import com.tencent.tmsecure.module.netsetting.FirewallManager;
import com.tencent.tmsecure.module.netsetting.Rule;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.utils.SDKUtil;
import com.tencent.tmsecure.utils.ScriptHelper;
import com.tencent.tmsecure.utils.WifiUtil;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPublicKey;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.crypto.Cipher;
import javax.security.cert.CertificateException;
import javax.security.cert.X509Certificate;
import org.json.JSONObject;

public class a
{
  public Camera a;
  public Point b;
  public boolean c;
  public boolean d;
  public final d e = new d(this);
  public final c f = new c();

  public a(int paramInt1, int paramInt2)
  {
    this.b = new Point(paramInt1, paramInt2);
  }

  public static int a(int paramInt)
  {
    int i = 0;
    switch (paramInt)
    {
    case 0:
    default:
    case 1:
    case 2:
    case 200:
    case 102:
    }
    while (true)
    {
      return i;
      i = 2;
      continue;
      i = 3;
      continue;
      i = 4;
      continue;
      i = 5;
    }
  }

  public static int a(long paramLong1, long paramLong2)
  {
    GregorianCalendar localGregorianCalendar1 = new GregorianCalendar();
    GregorianCalendar localGregorianCalendar2 = new GregorianCalendar();
    localGregorianCalendar1.setTimeInMillis(paramLong1);
    localGregorianCalendar1.clear(11);
    localGregorianCalendar1.clear(10);
    localGregorianCalendar1.clear(12);
    localGregorianCalendar1.clear(13);
    localGregorianCalendar1.clear(14);
    localGregorianCalendar2.setTimeInMillis(paramLong2);
    localGregorianCalendar2.clear(11);
    localGregorianCalendar2.clear(10);
    localGregorianCalendar2.clear(12);
    localGregorianCalendar2.clear(13);
    localGregorianCalendar2.clear(14);
    return (int)((localGregorianCalendar1.getTimeInMillis() - localGregorianCalendar2.getTimeInMillis()) / 86400000L);
  }

  public static int a(ContentResolver paramContentResolver)
  {
    try
    {
      int j = Settings.System.getInt(paramContentResolver, "screen_brightness");
      i = j;
      return i;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        int i = 0;
      }
    }
  }

  // ERROR //
  public static int a(Context paramContext, Uri paramUri, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 77	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: aload_1
    //   5: aconst_null
    //   6: aconst_null
    //   7: aconst_null
    //   8: aconst_null
    //   9: invokevirtual 83	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   12: astore 9
    //   14: aload 9
    //   16: astore 6
    //   18: aload 6
    //   20: ifnull +115 -> 135
    //   23: aload 6
    //   25: invokeinterface 89 1 0
    //   30: ifle +105 -> 135
    //   33: aload 6
    //   35: invokeinterface 93 1 0
    //   40: ifeq +165 -> 205
    //   43: aload 6
    //   45: aload_2
    //   46: invokeinterface 97 2 0
    //   51: istore 10
    //   53: iload 10
    //   55: iflt +74 -> 129
    //   58: aload 6
    //   60: iload 10
    //   62: invokeinterface 101 2 0
    //   67: astore 11
    //   69: aload 11
    //   71: ifnull +44 -> 115
    //   74: aload 11
    //   76: aload_3
    //   77: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   80: ifne +17 -> 97
    //   83: aload 11
    //   85: aload 4
    //   87: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   90: istore 13
    //   92: iload 13
    //   94: ifeq +21 -> 115
    //   97: iconst_0
    //   98: istore 8
    //   100: aload 6
    //   102: ifnull +10 -> 112
    //   105: aload 6
    //   107: invokeinterface 110 1 0
    //   112: iload 8
    //   114: ireturn
    //   115: aload 6
    //   117: invokeinterface 113 1 0
    //   122: istore 12
    //   124: iload 12
    //   126: ifne -68 -> 58
    //   129: iconst_1
    //   130: istore 8
    //   132: goto -32 -> 100
    //   135: iconst_m1
    //   136: istore 8
    //   138: goto -38 -> 100
    //   141: astore 7
    //   143: aconst_null
    //   144: astore 6
    //   146: aload 7
    //   148: invokevirtual 114	java/lang/Throwable:printStackTrace	()V
    //   151: aload 6
    //   153: ifnull +46 -> 199
    //   156: aload 6
    //   158: invokeinterface 110 1 0
    //   163: iconst_1
    //   164: istore 8
    //   166: goto -54 -> 112
    //   169: astore 5
    //   171: aconst_null
    //   172: astore 6
    //   174: aload 6
    //   176: ifnull +10 -> 186
    //   179: aload 6
    //   181: invokeinterface 110 1 0
    //   186: aload 5
    //   188: athrow
    //   189: astore 5
    //   191: goto -17 -> 174
    //   194: astore 7
    //   196: goto -50 -> 146
    //   199: iconst_1
    //   200: istore 8
    //   202: goto -90 -> 112
    //   205: iconst_1
    //   206: istore 8
    //   208: goto -108 -> 100
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	141	java/lang/Throwable
    //   0	14	169	finally
    //   23	92	189	finally
    //   115	124	189	finally
    //   146	151	189	finally
    //   23	92	194	java/lang/Throwable
    //   115	124	194	java/lang/Throwable
  }

  public static int a(Context paramContext, String paramString, Bundle paramBundle)
  {
    int i = 2;
    if (paramContext == null)
      i = 3;
    while (true)
    {
      return i;
      try
      {
        Uri localUri = Uri.parse(paramString);
        if (localUri != null)
        {
          try
          {
            PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo("com.tencent.mtt", 0);
            if (localPackageInfo == null)
            {
              i = 4;
              continue;
            }
            int j = localPackageInfo.versionCode;
            if (j >= 27)
              break label69;
            i = 5;
          }
          catch (Exception localException2)
          {
            i = 4;
          }
          continue;
          label69: int k = -1;
          try
          {
            if ((paramContext instanceof Activity))
            {
              int m = ((Activity)paramContext).getTaskId();
              k = m;
            }
            try
            {
              PackageManager localPackageManager = paramContext.getPackageManager();
              String str2 = localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo(paramContext.getPackageName(), 0)).toString();
              str1 = str2;
              fq localfq = new fq(str1, paramContext.getPackageName(), null, null, localUri, paramBundle, k);
              Intent localIntent = new Intent("com.tencent.QQBrowser.action.VIEW");
              localIntent.setData(localfq.f);
              localIntent.putExtra("KEY_APPNAME", localfq.b);
              localIntent.putExtra("KEY_PKG", localfq.a);
              localIntent.putExtra("KEY_ACT", localfq.c);
              if (localfq.d != null)
                localIntent.putExtra("KEY_PENDINGINTENT", localfq.d);
              if (localfq.e >= 0)
                localIntent.putExtra("TASK_ID", localfq.e);
              if (localfq.g != null)
                localIntent.putExtras(localfq.g);
              paramContext.startActivity(localIntent);
              i = 0;
            }
            catch (Exception localException4)
            {
              while (true)
                String str1 = null;
            }
          }
          catch (Exception localException3)
          {
            i = 1;
          }
        }
      }
      catch (Exception localException1)
      {
      }
    }
  }

  public static int a(List<Date> paramList, Date paramDate)
  {
    Iterator localIterator = paramList.iterator();
    int i = 0;
    if (localIterator.hasNext())
      if (!paramDate.after((Date)localIterator.next()))
        break label47;
    label47: for (int j = i + 1; ; j = i)
    {
      i = j;
      break;
      return i;
    }
  }

  public static SoftKey a(kw paramkw)
  {
    Object localObject;
    if (paramkw == null)
    {
      localObject = null;
      return localObject;
    }
    SoftKey localSoftKey = new SoftKey();
    String str1;
    label28: String str2;
    label43: String str3;
    label59: String str4;
    label84: String str5;
    if (paramkw.getPackageName() == null)
    {
      str1 = "";
      localSoftKey.softname = str1;
      if (paramkw.getAppName() != null)
        break label137;
      str2 = "";
      localSoftKey.name = str2;
      if (paramkw.getVersion() != null)
        break label145;
      str3 = "";
      localSoftKey.version = str3;
      localSoftKey.versioncode = paramkw.getVersionCode();
      if (paramkw.getCertMD5() != null)
        break label154;
      str4 = "";
      localSoftKey.uid = str4;
      if (paramkw.getCertMD5() != null)
        break label163;
      str5 = "";
      label101: localSoftKey.cert = str5;
      if (!paramkw.isSystemApp())
        break label172;
    }
    label137: label145: label154: label163: label172: for (int i = 1; ; i = 0)
    {
      localSoftKey.isbuildin = i;
      localObject = localSoftKey;
      break;
      str1 = paramkw.getPackageName();
      break label28;
      str2 = paramkw.getAppName();
      break label43;
      str3 = paramkw.getVersion();
      break label59;
      str4 = paramkw.getCertMD5();
      break label84;
      str5 = paramkw.getCertMD5();
      break label101;
    }
  }

  public static Intent a(Context paramContext, mu parammu)
  {
    Intent localIntent = new Intent(paramContext, VirusScanActivity.class);
    localIntent.putExtra("data", parammu);
    localIntent.putExtra("IS_FROM_NOTIFICATION", true);
    localIntent.setFlags(33554432);
    localIntent.putExtra("extra_back_to_main", true);
    return localIntent;
  }

  public static Bitmap a(InputStream paramInputStream)
  {
    try
    {
      Bitmap localBitmap2 = BitmapFactory.decodeStream(paramInputStream, null, e());
      localBitmap1 = localBitmap2;
      return localBitmap1;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      while (true)
      {
        System.gc();
        Bitmap localBitmap1 = null;
      }
    }
  }

  public static Bitmap a(String paramString)
  {
    try
    {
      Bitmap localBitmap2 = BitmapFactory.decodeFile(paramString, e());
      localBitmap1 = localBitmap2;
      return localBitmap1;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      while (true)
      {
        System.gc();
        Bitmap localBitmap1 = null;
      }
    }
  }

  public static Bitmap a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    Bitmap localBitmap1 = Utils.rawYuvArray2BitmapNew(paramArrayOfByte, paramInt1, paramInt2);
    Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1.getWidth(), localBitmap1.getHeight(), Bitmap.Config.RGB_565);
    int i = localBitmap1.getWidth();
    int j = localBitmap1.getHeight();
    int[] arrayOfInt = new int[i];
    int k = 0;
    if (k < j)
    {
      localBitmap1.getPixels(arrayOfInt, 0, i, 0, k, i, 1);
      if (Utils.isSpecialPhone)
        localBitmap2.setPixels(arrayOfInt, 0, i, 0, k, i, 1);
      while (true)
      {
        k++;
        break;
        localBitmap2.setPixels(arrayOfInt, 0, i, 0, -1 + (j - k), i, 1);
      }
    }
    localBitmap1.recycle();
    Matrix localMatrix = new Matrix();
    localMatrix.postRotate(360 - paramInt3);
    Bitmap localBitmap3 = Bitmap.createBitmap(localBitmap2, 0, 0, localBitmap2.getWidth(), localBitmap2.getHeight(), localMatrix, true);
    localBitmap2.recycle();
    return localBitmap3;
  }

  // ERROR //
  public static com.android.internal.telephony.ITelephony a(Context paramContext)
  {
    // Byte code:
    //   0: ldc_w 395
    //   3: ldc_w 397
    //   6: aconst_null
    //   7: invokevirtual 403	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   10: astore 8
    //   12: aload 8
    //   14: astore_2
    //   15: aload_2
    //   16: iconst_1
    //   17: invokevirtual 409	java/lang/reflect/Method:setAccessible	(Z)V
    //   20: aload_2
    //   21: aload_0
    //   22: ldc_w 411
    //   25: invokevirtual 415	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   28: checkcast 395	android/telephony/TelephonyManager
    //   31: aconst_null
    //   32: invokevirtual 419	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   35: checkcast 421	com/android/internal/telephony/ITelephony
    //   38: astore 4
    //   40: aload 4
    //   42: areturn
    //   43: astore 7
    //   45: aconst_null
    //   46: astore_2
    //   47: aload 7
    //   49: invokevirtual 422	java/lang/SecurityException:printStackTrace	()V
    //   52: goto -32 -> 20
    //   55: astore_1
    //   56: aconst_null
    //   57: astore_2
    //   58: aload_1
    //   59: invokevirtual 423	java/lang/NoSuchMethodException:printStackTrace	()V
    //   62: goto -42 -> 20
    //   65: astore 6
    //   67: aload 6
    //   69: invokevirtual 424	java/lang/IllegalArgumentException:printStackTrace	()V
    //   72: aconst_null
    //   73: astore 4
    //   75: goto -35 -> 40
    //   78: astore 5
    //   80: aload 5
    //   82: invokevirtual 425	java/lang/IllegalAccessException:printStackTrace	()V
    //   85: aconst_null
    //   86: astore 4
    //   88: goto -48 -> 40
    //   91: astore_3
    //   92: aload_3
    //   93: invokevirtual 426	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   96: aconst_null
    //   97: astore 4
    //   99: goto -59 -> 40
    //   102: astore_1
    //   103: goto -45 -> 58
    //   106: astore 7
    //   108: goto -61 -> 47
    //
    // Exception table:
    //   from	to	target	type
    //   0	12	43	java/lang/SecurityException
    //   0	12	55	java/lang/NoSuchMethodException
    //   20	40	65	java/lang/IllegalArgumentException
    //   20	40	78	java/lang/IllegalAccessException
    //   20	40	91	java/lang/reflect/InvocationTargetException
    //   15	20	102	java/lang/NoSuchMethodException
    //   15	20	106	java/lang/SecurityException
  }

  public static JceStruct a(byte[] paramArrayOfByte)
  {
    Object localObject = null;
    if (paramArrayOfByte == null);
    while (true)
    {
      return localObject;
      UniPacket localUniPacket = de.b(paramArrayOfByte);
      localObject = null;
      if (localUniPacket == null)
        continue;
      try
      {
        localJceStruct = (JceStruct)localUniPacket.get("resp");
        localObject = localJceStruct;
      }
      catch (Exception localException)
      {
        while (true)
        {
          dk.c("WupSyncUtil", localException.toString());
          JceStruct localJceStruct = null;
        }
      }
    }
  }

  public static Dialog a(Context paramContext, String paramString)
  {
    Dialog localDialog = new Dialog(paramContext);
    localDialog.addProgressDialog();
    localDialog.setMessage(paramString);
    if (SDKUtil.getAndroidReleaseName() == 3);
    while (true)
    {
      try
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Boolean.valueOf(false);
        a(localDialog, "setDefaultButton", arrayOfObject);
        return localDialog;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
      }
      localDialog.setCancelable(true);
    }
  }

  public static Dialog a(Context paramContext, String paramString, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    Dialog localDialog = new Dialog(paramContext);
    localDialog.addProgressDialog();
    localDialog.setMessage(paramString);
    if (SDKUtil.getAndroidReleaseName() == 3);
    while (true)
    {
      try
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Boolean.valueOf(paramBoolean);
        a(localDialog, "setDefaultButton", arrayOfObject);
        return localDialog;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
      }
      localDialog.setCancelable(paramBoolean);
      localDialog.setOnCancelListener(paramOnCancelListener);
    }
  }

  private static Object a(Object paramObject, String paramString, Object[] paramArrayOfObject)
    throws Exception
  {
    Class localClass = paramObject.getClass();
    Class[] arrayOfClass = new Class[paramArrayOfObject.length];
    int i = 0;
    int j = paramArrayOfObject.length;
    if (i < j)
    {
      arrayOfClass[i] = paramArrayOfObject[i].getClass();
      if (arrayOfClass[i] == Integer.class)
        arrayOfClass[i] = Integer.TYPE;
      while (true)
      {
        i++;
        break;
        if (arrayOfClass[i] == Boolean.class)
          arrayOfClass[i] = Boolean.TYPE;
      }
    }
    return localClass.getMethod(paramString, arrayOfClass).invoke(paramObject, paramArrayOfObject);
  }

  public static String a(long paramLong)
  {
    String str = "";
    long l = System.currentTimeMillis() - paramLong;
    if (l < 0L)
      if (paramLong != 0L)
        str = DateFormat.format("yyyy-MM-dd", paramLong).toString();
    while (true)
    {
      return str;
      if (l <= 60000L)
        str = QQPimApplication.a().getString(2131429482);
      else if (l <= 3600000L)
        str = l / 60000L + QQPimApplication.a().getString(2131429022);
      else if (l <= 86400000L)
        str = l / 3600000L + QQPimApplication.a().getString(2131429021);
      else if (l < 604800000L)
        str = l / 86400000L + QQPimApplication.a().getString(2131429018);
      else if ((l >= 604800000L) && (paramLong != 0L))
        str = DateFormat.format("yyyy-MM-dd", paramLong).toString();
    }
  }

  // ERROR //
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: ldc 2
    //   4: monitorenter
    //   5: aload_2
    //   6: ifnull +12 -> 18
    //   9: aload_2
    //   10: ldc 253
    //   12: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   15: ifeq +11 -> 26
    //   18: aload_0
    //   19: invokevirtual 546	android/content/Context:getFilesDir	()Ljava/io/File;
    //   22: invokevirtual 549	java/io/File:toString	()Ljava/lang/String;
    //   25: astore_2
    //   26: new 525	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   33: aload_2
    //   34: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: getstatic 552	java/io/File:separator	Ljava/lang/String;
    //   40: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload_1
    //   44: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: astore 5
    //   52: aload 5
    //   54: astore 6
    //   56: new 548	java/io/File
    //   59: dup
    //   60: aload 6
    //   62: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   65: astore 7
    //   67: aload 7
    //   69: invokevirtual 556	java/io/File:exists	()Z
    //   72: ifeq +21 -> 93
    //   75: aload_1
    //   76: ldc_w 558
    //   79: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   82: ifne +11 -> 93
    //   85: aload_0
    //   86: aload_1
    //   87: invokestatic 561	a:d	(Landroid/content/Context;Ljava/lang/String;)Z
    //   90: ifeq +248 -> 338
    //   93: aload 7
    //   95: invokevirtual 556	java/io/File:exists	()Z
    //   98: ifeq +9 -> 107
    //   101: aload 7
    //   103: invokevirtual 564	java/io/File:delete	()Z
    //   106: pop
    //   107: aload_0
    //   108: invokevirtual 568	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   111: invokevirtual 574	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   114: aload_1
    //   115: iconst_1
    //   116: invokevirtual 580	android/content/res/AssetManager:open	(Ljava/lang/String;I)Ljava/io/InputStream;
    //   119: astore 17
    //   121: aload 17
    //   123: astore 14
    //   125: new 582	java/io/FileOutputStream
    //   128: dup
    //   129: aload 7
    //   131: invokespecial 585	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   134: astore 18
    //   136: sipush 8192
    //   139: newarray byte
    //   141: astore 20
    //   143: aload 14
    //   145: aload 20
    //   147: invokevirtual 591	java/io/InputStream:read	([B)I
    //   150: istore 21
    //   152: iload 21
    //   154: ifle +55 -> 209
    //   157: aload 18
    //   159: aload 20
    //   161: iconst_0
    //   162: iload 21
    //   164: invokevirtual 595	java/io/FileOutputStream:write	([BII)V
    //   167: goto -24 -> 143
    //   170: astore 19
    //   172: aload 18
    //   174: astore 9
    //   176: aload 14
    //   178: astore 10
    //   180: aload 10
    //   182: ifnull +8 -> 190
    //   185: aload 10
    //   187: invokevirtual 596	java/io/InputStream:close	()V
    //   190: aload 9
    //   192: ifnull +8 -> 200
    //   195: aload 9
    //   197: invokevirtual 597	java/io/FileOutputStream:close	()V
    //   200: aconst_null
    //   201: astore 6
    //   203: ldc 2
    //   205: monitorexit
    //   206: aload 6
    //   208: areturn
    //   209: aload 18
    //   211: astore 22
    //   213: aload 14
    //   215: ifnull +8 -> 223
    //   218: aload 14
    //   220: invokevirtual 596	java/io/InputStream:close	()V
    //   223: aload 22
    //   225: ifnull -22 -> 203
    //   228: aload 22
    //   230: invokevirtual 597	java/io/FileOutputStream:close	()V
    //   233: goto -30 -> 203
    //   236: astore 23
    //   238: goto -35 -> 203
    //   241: astore 13
    //   243: aconst_null
    //   244: astore 14
    //   246: aload 14
    //   248: ifnull +8 -> 256
    //   251: aload 14
    //   253: invokevirtual 596	java/io/InputStream:close	()V
    //   256: aload_3
    //   257: ifnull +7 -> 264
    //   260: aload_3
    //   261: invokevirtual 597	java/io/FileOutputStream:close	()V
    //   264: aload 13
    //   266: athrow
    //   267: astore 4
    //   269: ldc 2
    //   271: monitorexit
    //   272: aload 4
    //   274: athrow
    //   275: astore 24
    //   277: goto -54 -> 223
    //   280: astore 12
    //   282: goto -92 -> 190
    //   285: astore 11
    //   287: goto -87 -> 200
    //   290: astore 16
    //   292: goto -36 -> 256
    //   295: astore 15
    //   297: goto -33 -> 264
    //   300: astore 13
    //   302: aconst_null
    //   303: astore_3
    //   304: goto -58 -> 246
    //   307: astore 13
    //   309: aload 18
    //   311: astore_3
    //   312: goto -66 -> 246
    //   315: astore 8
    //   317: aconst_null
    //   318: astore 9
    //   320: aconst_null
    //   321: astore 10
    //   323: goto -143 -> 180
    //   326: astore 25
    //   328: aload 14
    //   330: astore 10
    //   332: aconst_null
    //   333: astore 9
    //   335: goto -155 -> 180
    //   338: aconst_null
    //   339: astore 22
    //   341: aconst_null
    //   342: astore 14
    //   344: goto -131 -> 213
    //
    // Exception table:
    //   from	to	target	type
    //   136	167	170	java/io/IOException
    //   228	233	236	java/io/IOException
    //   56	121	241	finally
    //   9	52	267	finally
    //   185	190	267	finally
    //   195	200	267	finally
    //   218	223	267	finally
    //   228	233	267	finally
    //   251	256	267	finally
    //   260	264	267	finally
    //   264	267	267	finally
    //   218	223	275	java/io/IOException
    //   185	190	280	java/io/IOException
    //   195	200	285	java/io/IOException
    //   251	256	290	java/io/IOException
    //   260	264	295	java/io/IOException
    //   125	136	300	finally
    //   136	167	307	finally
    //   56	121	315	java/io/IOException
    //   125	136	326	java/io/IOException
  }

  public static String a(Date paramDate)
  {
    String str = "";
    long l1 = System.currentTimeMillis() - paramDate.getTime();
    if (l1 < 0L)
    {
      long l2 = paramDate.getTime();
      if (l2 != 0L)
        str = DateFormat.format("yyyy-MM-dd", l2).toString();
    }
    while (true)
    {
      return str;
      if (l1 <= 60000L)
        str = QQPimApplication.a().getString(2131429482);
      else if (l1 <= 3600000L)
        str = l1 / 60000L + QQPimApplication.a().getString(2131429022);
      else if (l1 <= 86400000L)
        str = l1 / 3600000L + QQPimApplication.a().getString(2131429021);
      else if (l1 < 259200000L)
        str = l1 / 86400000L + QQPimApplication.a().getString(2131429018);
      else
        str = l1 / 86400000L + QQPimApplication.a().getString(2131428261);
    }
  }

  public static String a(LinkedList<Integer> paramLinkedList)
  {
    String str1;
    if (paramLinkedList == null)
      str1 = "";
    while (true)
    {
      return str1;
      int i = paramLinkedList.size();
      if (i <= 0)
      {
        str1 = "";
      }
      else
      {
        Object localObject = "";
        int j = 0;
        while (j < i)
        {
          String str2 = (String)localObject + ((Integer)paramLinkedList.get(j)).toString();
          j++;
          localObject = str2;
        }
        str1 = k.a((String)localObject);
      }
    }
  }

  public static String a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Object localObject = null;
    if (paramArrayOfByte2 != null)
    {
      localObject = null;
      if (paramArrayOfByte1 != null)
        break label14;
    }
    while (true)
    {
      return localObject;
      label14: byte[] arrayOfByte = c(paramArrayOfByte1, paramArrayOfByte2);
      localObject = null;
      if (arrayOfByte == null)
        continue;
      try
      {
        str = new String(arrayOfByte, "UTF-8");
        localObject = str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        while (true)
        {
          dk.c("CryptorUtil", "decryptBytesToString Bytes to string e = " + localUnsupportedEncodingException.toString());
          String str = null;
        }
      }
    }
  }

  public static ArrayList<Rule> a(String paramString, int paramInt)
  {
    String[] arrayOfString1 = new String[1];
    arrayOfString1[0] = (paramString + " list-rules ");
    String str = ScriptHelper.runScript(arrayOfString1);
    Object localObject;
    if (str == null)
    {
      localObject = new ArrayList();
      return localObject;
    }
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    String[] arrayOfString2 = str.toString().split("\n");
    int i = arrayOfString2.length;
    int j = 0;
    Iterator localIterator1;
    if (j >= i)
      if (paramInt == 1)
        localIterator1 = localArrayList3.iterator();
    while (true)
    {
      if (!localIterator1.hasNext())
      {
        localArrayList1.addAll(localArrayList2);
        localObject = localArrayList1;
        break;
        String[] arrayOfString3 = arrayOfString2[j].split("[ ]+");
        if (paramInt == 2)
          if (arrayOfString3[0].equals("host"))
          {
            Rule localRule2 = new Rule();
            localRule2.type = 2;
            localRule2.host = arrayOfString3[1];
            localRule2.hostVerdict = arrayOfString3[2];
            localArrayList1.add(localRule2);
          }
        while (true)
        {
          j++;
          break;
          if (paramInt == 1)
          {
            boolean bool = arrayOfString3[0].equals("mobile");
            if ((bool) || (arrayOfString3[0].equals("wifi")))
            {
              Rule localRule1 = new Rule();
              localRule1.type = 1;
              localRule1.uid = Integer.valueOf(arrayOfString3[1]).intValue();
              if (bool)
              {
                localRule1.uidMobileVerdict = arrayOfString3[2];
                localArrayList2.add(localRule1);
              }
              else
              {
                localRule1.uidWifiVerdict = arrayOfString3[2];
                localArrayList3.add(localRule1);
              }
            }
          }
        }
      }
      Rule localRule3 = (Rule)localIterator1.next();
      Iterator localIterator2 = localArrayList2.iterator();
      while (localIterator2.hasNext())
      {
        Rule localRule4 = (Rule)localIterator2.next();
        if (localRule3.uid == localRule4.uid)
          localRule4.uidWifiVerdict = localRule3.uidWifiVerdict;
      }
    }
  }

  public static Date a(Date paramDate, int paramInt)
  {
    GregorianCalendar localGregorianCalendar = new GregorianCalendar();
    localGregorianCalendar.setTime(paramDate);
    if (paramDate.getDate() != paramInt)
    {
      if (paramDate.getDate() <= paramInt)
        break label70;
      localGregorianCalendar.set(5, paramInt);
    }
    while (true)
    {
      localGregorianCalendar.clear(11);
      localGregorianCalendar.clear(10);
      localGregorianCalendar.clear(12);
      localGregorianCalendar.clear(13);
      localGregorianCalendar.clear(14);
      return localGregorianCalendar.getTime();
      label70: localGregorianCalendar.set(5, 1);
      localGregorianCalendar.add(2, -1);
      int i = localGregorianCalendar.getActualMaximum(5);
      if (i >= paramInt)
        localGregorianCalendar.set(5, paramInt);
      else
        localGregorianCalendar.set(5, i);
    }
  }

  public static GregorianCalendar a(GregorianCalendar paramGregorianCalendar, int paramInt)
  {
    GregorianCalendar localGregorianCalendar = new GregorianCalendar();
    localGregorianCalendar.setTimeInMillis(paramGregorianCalendar.getTimeInMillis());
    if (localGregorianCalendar.get(5) != paramInt)
    {
      if (localGregorianCalendar.get(5) <= paramInt)
        break label72;
      localGregorianCalendar.set(5, paramInt);
    }
    while (true)
    {
      localGregorianCalendar.clear(11);
      localGregorianCalendar.clear(10);
      localGregorianCalendar.clear(12);
      localGregorianCalendar.clear(13);
      localGregorianCalendar.clear(14);
      return localGregorianCalendar;
      label72: localGregorianCalendar.set(5, 1);
      localGregorianCalendar.add(2, -1);
      int i = localGregorianCalendar.getActualMaximum(5);
      if (i >= paramInt)
        localGregorianCalendar.set(5, paramInt);
      else
        localGregorianCalendar.set(5, i);
    }
  }

  public static List<Object> a(Context paramContext, String paramString, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      Class localClass1 = Class.forName("android.content.pm.PackageParser");
      Object localObject1 = localClass1.getConstructor(new Class[] { String.class }).newInstance(new Object[] { paramString });
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      localDisplayMetrics.setToDefaults();
      Class[] arrayOfClass1 = new Class[4];
      arrayOfClass1[0] = File.class;
      arrayOfClass1[1] = String.class;
      arrayOfClass1[2] = DisplayMetrics.class;
      arrayOfClass1[3] = Integer.TYPE;
      Method localMethod = localClass1.getDeclaredMethod("parsePackage", arrayOfClass1);
      Object[] arrayOfObject1 = new Object[4];
      arrayOfObject1[0] = new File(paramString);
      arrayOfObject1[1] = paramString;
      arrayOfObject1[2] = localDisplayMetrics;
      arrayOfObject1[3] = Integer.valueOf(0);
      Object localObject2 = localMethod.invoke(localObject1, arrayOfObject1);
      ApplicationInfo localApplicationInfo = (ApplicationInfo)localObject2.getClass().getDeclaredField("applicationInfo").get(localObject2);
      Class localClass2 = Class.forName("android.content.res.AssetManager");
      Object localObject3 = localClass2.getConstructor(null).newInstance(null);
      localClass2.getDeclaredMethod("addAssetPath", new Class[] { String.class }).invoke(localObject3, new Object[] { paramString });
      Resources localResources1 = paramContext.getResources();
      Class[] arrayOfClass2 = new Class[3];
      arrayOfClass2[0] = localObject3.getClass();
      arrayOfClass2[1] = localResources1.getDisplayMetrics().getClass();
      arrayOfClass2[2] = localResources1.getConfiguration().getClass();
      Constructor localConstructor = Resources.class.getConstructor(arrayOfClass2);
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = localObject3;
      arrayOfObject2[1] = localResources1.getDisplayMetrics();
      arrayOfObject2[2] = localResources1.getConfiguration();
      Resources localResources2 = (Resources)localConstructor.newInstance(arrayOfObject2);
      if (localApplicationInfo.labelRes != 0)
      {
        localCharSequence = localResources2.getText(localApplicationInfo.labelRes);
        if (localCharSequence != null);
        for (String str = localCharSequence.toString(); ; str = null)
        {
          localArrayList.add(str);
          if (paramBoolean)
          {
            if (localApplicationInfo.icon == 0)
              break;
            localDrawable = localResources2.getDrawable(localApplicationInfo.icon);
            localArrayList.add(localDrawable);
          }
          return localArrayList;
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      while (true)
      {
        System.gc();
        continue;
        Drawable localDrawable = null;
        continue;
        CharSequence localCharSequence = null;
      }
    }
  }

  public static List<kw> a(ArrayList<SoftSimpleInfoEx> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(a((SoftSimpleInfoEx)localIterator.next()));
    return localArrayList;
  }

  public static List<SoftKey> a(List<kw> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(a((kw)localIterator.next()));
    return localArrayList;
  }

  public static List<kv> a(List<kw> paramList, DownloadServiceBinder paramDownloadServiceBinder, int paramInt)
  {
    if ((paramList == null) || (paramList.size() == 0) || (paramDownloadServiceBinder == null));
    ArrayList localArrayList;
    for (Object localObject = new ArrayList(0); ; localObject = localArrayList)
    {
      return localObject;
      localArrayList = new ArrayList(paramList.size());
      int i;
      label107: kw localkw;
      kv localkv1;
      kv localkv3;
      switch (paramInt)
      {
      default:
        Iterator localIterator = paramList.iterator();
        i = 1;
        if (!localIterator.hasNext())
          continue;
        localkw = (kw)localIterator.next();
        localkv1 = of.a(localkw.getPackageName(), paramDownloadServiceBinder.getAllTasks());
        if ((localkv1 == null) || (localkw.getCertMD5() == null) || (!localkw.getCertMD5().equals(localkv1.d.getCertMD5())) || (localkv1.d.D() < localkw.D()))
        {
          kv localkv2 = new kv(localkw);
          localkv2.b = paramInt;
          localkv2.c = i;
          localkv3 = localkv2;
        }
        break;
      case 6:
      case 7:
      case 10:
      case 2:
      case 15:
      }
      while (true)
      {
        int j = i + 1;
        localArrayList.add(localkv3);
        i = j;
        break label107;
        paramInt = 2000001;
        break;
        paramInt = 2000002;
        break;
        paramInt = 10002;
        break;
        paramInt = 10001;
        break;
        paramInt = 2000010;
        break;
        if (localkv1.d.D() <= localkw.D())
        {
          localkv1.d = localkw;
          localkv3 = localkv1;
        }
        else
        {
          localkv1.d.setIcon(localkw.getIcon());
          localkv1.d.setAppName(localkw.getAppName());
          localkv1.d.a(localkw.l());
          localkv3 = localkv1;
        }
      }
    }
  }

  private static kw a(SoftSimpleInfoEx paramSoftSimpleInfoEx)
  {
    SoftSimpleInfo localSoftSimpleInfo = paramSoftSimpleInfoEx.softSimpleInfo;
    kw localkw = new kw();
    localkw.setAppName(localSoftSimpleInfo.softkey.name);
    localkw.setPackageName(localSoftSimpleInfo.softkey.softname);
    localkw.setSize(localSoftSimpleInfo.filesize << 10);
    if (localSoftSimpleInfo.suser != 0)
      localkw.a(localSoftSimpleInfo.score / localSoftSimpleInfo.suser);
    while (true)
    {
      localkw.b(localSoftSimpleInfo.logourl);
      localkw.d(localSoftSimpleInfo.fileurl);
      localkw.setVersion(localSoftSimpleInfo.softkey.version);
      localkw.setVersionCode(localSoftSimpleInfo.softkey.versioncode);
      localkw.setCertMD5(localSoftSimpleInfo.softkey.uid);
      localkw.c(localSoftSimpleInfo.downloadtimes);
      localkw.i(localSoftSimpleInfo.publishtime);
      localkw.l(localSoftSimpleInfo.safeType);
      if ((paramSoftSimpleInfoEx.expand != null) && (paramSoftSimpleInfoEx.expand.picurls != null) && (paramSoftSimpleInfoEx.expand.picurls.size() > 0))
        localkw.n((String)paramSoftSimpleInfoEx.expand.picurls.get(0));
      if (paramSoftSimpleInfoEx.expand != null)
        localkw.l(paramSoftSimpleInfoEx.expand.recommend);
      String str = localSoftSimpleInfo.softkey.getNewest_version();
      if (str == null)
        str = "";
      localkw.a(str);
      localkw.p(localSoftSimpleInfo.strSource);
      localkw.m(localSoftSimpleInfo.softkey.appid);
      return localkw;
      localkw.a(0.0F);
    }
  }

  public static kw a(AppEntity paramAppEntity)
  {
    kw localkw;
    if (paramAppEntity == null)
      localkw = null;
    while (true)
    {
      return localkw;
      localkw = new kw();
      localkw.setSystemFlag(paramAppEntity.isSystemApp());
      localkw.setApkFlag(paramAppEntity.isApk());
      localkw.setVersionCode(paramAppEntity.getVersionCode());
      localkw.setVersion(paramAppEntity.getVersion());
      localkw.setSize(paramAppEntity.getSize());
      localkw.setPackageName(paramAppEntity.getPackageName());
      localkw.setPermissions(paramAppEntity.getPermissions());
      localkw.setCompany(paramAppEntity.getCompany());
      localkw.setCertMD5(paramAppEntity.getCertMD5());
      localkw.setApkPath(paramAppEntity.getApkPath());
      localkw.setAppName(paramAppEntity.getAppName());
      localkw.setIcon(paramAppEntity.getIcon());
      localkw.setLastModifiedTime(paramAppEntity.getLastModifiedTime());
    }
  }

  public static kw a(AppEntity paramAppEntity, boolean paramBoolean)
  {
    kw localkw;
    if (paramAppEntity == null)
      localkw = null;
    while (true)
    {
      return localkw;
      localkw = new kw();
      localkw.setPackageName(paramAppEntity.getPackageName());
      localkw.setVersion(paramAppEntity.getVersion());
      localkw.setVersionCode(paramAppEntity.getVersionCode());
      localkw.setSize(paramAppEntity.getSize());
      localkw.setCertMD5(paramAppEntity.getCertMD5());
      localkw.setApkPath(paramAppEntity.getApkPath());
      localkw.setAppName(paramAppEntity.getAppName());
      localkw.setIcon(paramAppEntity.getIcon());
      localkw.setCompany(paramAppEntity.getCompany());
      localkw.setPermissions(paramAppEntity.getPermissions());
      localkw.setApkFlag(paramAppEntity.isApk());
      localkw.setSystemFlag(paramAppEntity.isSystemApp());
      localkw.setLastModifiedTime(paramAppEntity.getLastModifiedTime());
    }
  }

  // ERROR //
  public static void a()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_0
    //   2: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   5: ifnull +12 -> 17
    //   8: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   11: invokevirtual 924	java/util/ArrayList:size	()I
    //   14: ifne +9 -> 23
    //   17: invokestatic 1008	fi:a	()Ljava/util/ArrayList;
    //   20: putstatic 1003	lm:d	Ljava/util/ArrayList;
    //   23: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   26: ifnull +12 -> 38
    //   29: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   32: invokevirtual 924	java/util/ArrayList:size	()I
    //   35: ifne +4 -> 39
    //   38: return
    //   39: invokestatic 1013	ho:a	()Lho;
    //   42: astore_1
    //   43: aload_1
    //   44: invokevirtual 1016	ho:dG	()Z
    //   47: ifne -9 -> 38
    //   50: new 548	java/io/File
    //   53: dup
    //   54: getstatic 1017	lm:a	Ljava/lang/String;
    //   57: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   60: invokevirtual 1020	java/io/File:getCanonicalPath	()Ljava/lang/String;
    //   63: astore 19
    //   65: aload 19
    //   67: astore_3
    //   68: new 525	java/lang/StringBuilder
    //   71: dup
    //   72: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   75: getstatic 1017	lm:a	Ljava/lang/String;
    //   78: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: ldc_w 1022
    //   84: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: aload_3
    //   88: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: pop
    //   95: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   98: getstatic 1017	lm:a	Ljava/lang/String;
    //   101: invokevirtual 1025	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   104: ifne +13 -> 117
    //   107: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   110: aload_3
    //   111: invokevirtual 1025	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   114: ifeq -76 -> 38
    //   117: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   120: getstatic 1017	lm:a	Ljava/lang/String;
    //   123: invokevirtual 1025	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   126: ifeq +23 -> 149
    //   129: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   132: getstatic 1017	lm:a	Ljava/lang/String;
    //   135: invokevirtual 1028	java/util/ArrayList:remove	(Ljava/lang/Object;)Z
    //   138: pop
    //   139: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   142: iconst_0
    //   143: getstatic 1017	lm:a	Ljava/lang/String;
    //   146: invokevirtual 1031	java/util/ArrayList:add	(ILjava/lang/Object;)V
    //   149: aload_3
    //   150: getstatic 1017	lm:a	Ljava/lang/String;
    //   153: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   156: ifne +29 -> 185
    //   159: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   162: aload_3
    //   163: invokevirtual 1025	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   166: ifeq +19 -> 185
    //   169: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   172: aload_3
    //   173: invokevirtual 1028	java/util/ArrayList:remove	(Ljava/lang/Object;)Z
    //   176: pop
    //   177: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   180: iconst_0
    //   181: aload_3
    //   182: invokevirtual 1031	java/util/ArrayList:add	(ILjava/lang/Object;)V
    //   185: getstatic 1032	lm:c	Ljava/lang/String;
    //   188: astore 5
    //   190: getstatic 1033	lm:b	Ljava/lang/String;
    //   193: astore 6
    //   195: new 548	java/io/File
    //   198: dup
    //   199: aload 5
    //   201: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   204: astore 7
    //   206: new 548	java/io/File
    //   209: dup
    //   210: aload 6
    //   212: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   215: astore 8
    //   217: aload 7
    //   219: invokevirtual 556	java/io/File:exists	()Z
    //   222: ifne +47 -> 269
    //   225: aload 8
    //   227: invokevirtual 556	java/io/File:exists	()Z
    //   230: ifne +39 -> 269
    //   233: aload 5
    //   235: invokestatic 1037	a:u	(Ljava/lang/String;)Z
    //   238: ifeq -200 -> 38
    //   241: aload 7
    //   243: invokestatic 1039	a:a	(Ljava/io/File;)V
    //   246: aload_1
    //   247: iload_0
    //   248: invokevirtual 1042	ho:W	(Z)V
    //   251: goto -213 -> 38
    //   254: astore_2
    //   255: ldc 253
    //   257: astore_3
    //   258: aload_2
    //   259: astore 4
    //   261: aload 4
    //   263: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   266: goto -171 -> 95
    //   269: aload 5
    //   271: invokestatic 1037	a:u	(Ljava/lang/String;)Z
    //   274: ifeq -236 -> 38
    //   277: new 548	java/io/File
    //   280: dup
    //   281: getstatic 1046	hv:a	Ljava/lang/String;
    //   284: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   287: invokevirtual 556	java/io/File:exists	()Z
    //   290: ifeq +46 -> 336
    //   293: new 548	java/io/File
    //   296: dup
    //   297: getstatic 1049	hx:a	Ljava/lang/String;
    //   300: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   303: invokevirtual 556	java/io/File:exists	()Z
    //   306: ifeq +194 -> 500
    //   309: new 1051	ie
    //   312: dup
    //   313: invokespecial 1052	ie:<init>	()V
    //   316: new 1054	ib
    //   319: dup
    //   320: invokespecial 1055	ib:<init>	()V
    //   323: invokestatic 1058	a:a	(Lie;Lib;)Z
    //   326: ifeq -288 -> 38
    //   329: getstatic 1046	hv:a	Ljava/lang/String;
    //   332: invokestatic 1060	a:d	(Ljava/lang/String;)Z
    //   335: pop
    //   336: new 548	java/io/File
    //   339: dup
    //   340: getstatic 1049	hx:a	Ljava/lang/String;
    //   343: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   346: invokevirtual 556	java/io/File:exists	()Z
    //   349: ifeq +174 -> 523
    //   352: new 650	java/util/ArrayList
    //   355: dup
    //   356: invokespecial 651	java/util/ArrayList:<init>	()V
    //   359: astore 9
    //   361: new 650	java/util/ArrayList
    //   364: dup
    //   365: invokespecial 651	java/util/ArrayList:<init>	()V
    //   368: astore 10
    //   370: new 1062	java/util/concurrent/atomic/AtomicBoolean
    //   373: dup
    //   374: invokespecial 1063	java/util/concurrent/atomic/AtomicBoolean:<init>	()V
    //   377: astore 11
    //   379: new 1065	java/util/concurrent/atomic/AtomicInteger
    //   382: dup
    //   383: invokespecial 1066	java/util/concurrent/atomic/AtomicInteger:<init>	()V
    //   386: astore 12
    //   388: aload 7
    //   390: aload 9
    //   392: aload 10
    //   394: aload 11
    //   396: invokestatic 1069	a:a	(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    //   399: ifeq -361 -> 38
    //   402: aload 5
    //   404: aload 9
    //   406: iload_0
    //   407: aload 12
    //   409: invokestatic 1072	a:a	(Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/concurrent/atomic/AtomicInteger;)Z
    //   412: istore 13
    //   414: iconst_0
    //   415: istore 14
    //   417: iload 13
    //   419: ifeq -381 -> 38
    //   422: iload 14
    //   424: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   427: invokevirtual 924	java/util/ArrayList:size	()I
    //   430: if_icmpge +85 -> 515
    //   433: getstatic 1003	lm:d	Ljava/util/ArrayList;
    //   436: iload 14
    //   438: invokevirtual 925	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   441: checkcast 103	java/lang/String
    //   444: astore 15
    //   446: iload_0
    //   447: new 525	java/lang/StringBuilder
    //   450: dup
    //   451: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   454: aload 15
    //   456: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: ldc_w 1074
    //   462: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   465: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   468: new 525	java/lang/StringBuilder
    //   471: dup
    //   472: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   475: aload 15
    //   477: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   480: ldc_w 1076
    //   483: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   486: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   489: invokestatic 1079	a:f	(Ljava/lang/String;Ljava/lang/String;)Z
    //   492: iand
    //   493: istore_0
    //   494: iinc 14 1
    //   497: goto -75 -> 422
    //   500: getstatic 1046	hv:a	Ljava/lang/String;
    //   503: getstatic 1049	hx:a	Ljava/lang/String;
    //   506: invokestatic 1081	a:e	(Ljava/lang/String;Ljava/lang/String;)Z
    //   509: ifne -173 -> 336
    //   512: goto -474 -> 38
    //   515: aload_1
    //   516: iload_0
    //   517: invokevirtual 1042	ho:W	(Z)V
    //   520: goto -482 -> 38
    //   523: aload_1
    //   524: iload_0
    //   525: invokevirtual 1042	ho:W	(Z)V
    //   528: goto -490 -> 38
    //   531: astore 4
    //   533: goto -272 -> 261
    //
    // Exception table:
    //   from	to	target	type
    //   50	65	254	java/io/IOException
    //   68	95	531	java/io/IOException
  }

  public static void a(Activity paramActivity)
  {
    Dialog localDialog = new Dialog(paramActivity);
    localDialog.setTitle(2131429002);
    localDialog.setMessage(paramActivity.getResources().getString(2131429001));
    localDialog.setPositiveButton(2131429003, new zc(paramActivity, localDialog, null), 1);
    localDialog.setNegativeButton(2131429006, new ze(localDialog, null), 2);
    localDialog.show();
  }

  public static void a(Activity paramActivity, int paramInt)
  {
    int i = -1;
    switch (paramInt)
    {
    case 5:
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    }
    while (true)
    {
      Dialog localDialog = new Dialog(paramActivity);
      localDialog.setTitle(2131428561);
      localDialog.setMessage(i);
      localDialog.setPositiveButton(2131429005, new zh(paramActivity, localDialog, null), 1);
      localDialog.setNegativeButton(2131429006, new zi(localDialog, null), 2);
      localDialog.show();
      return;
      i = 2131428996;
      continue;
      i = 2131428998;
      continue;
      i = 2131429000;
      continue;
      i = 2131429512;
      continue;
      i = 2131429510;
      continue;
      i = 2131429511;
    }
  }

  public static void a(Context paramContext, int paramInt, IRetryListener paramIRetryListener)
  {
    ho localho = ho.a();
    if ((paramInt != -1063) || (!localho.aG()))
      if (!fs.b())
        b(paramContext, paramInt, paramIRetryListener);
    while (true)
    {
      return;
      if (((paramInt < -1000) && (paramInt > -2000)) || (!localho.aG()))
      {
        b(paramContext, paramInt, paramIRetryListener);
      }
      else
      {
        String str1 = paramContext.getString(2131428563);
        String str2 = paramContext.getString(2131428754);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        String str3 = String.format(str2, arrayOfObject);
        Dialog localDialog = new Dialog(paramContext);
        localDialog.setTitle(str1);
        localDialog.setMessage(str3);
        localDialog.setPositiveButton(2131427696, new fa(paramIRetryListener, localDialog), 2);
        localDialog.setNeutralButton(2131427379, new ef(paramIRetryListener, localDialog), 2);
        localDialog.setOnCancelListener(new eg(localDialog, paramIRetryListener));
        try
        {
          localDialog.show();
        }
        catch (Exception localException)
        {
          localException.getMessage();
        }
        continue;
        b(paramContext, WifiUtil.sRedirectLocation);
      }
    }
  }

  public static void a(Context paramContext, int paramInt, String paramString)
  {
    Intent localIntent = new Intent(paramContext, CameraCaptureActivity.class);
    localIntent.putExtra("CameraCaptureAction", "CameraCaptureActionVerify");
    a(localIntent, paramInt, -1, paramString);
    paramContext.startActivity(localIntent);
  }

  public static void a(Context paramContext, IRetryListener paramIRetryListener)
  {
    String str1 = paramContext.getString(2131428563);
    String str2 = paramContext.getString(2131428753);
    Dialog localDialog = new Dialog(paramContext);
    localDialog.setTitle(str1);
    localDialog.setMessage(str2);
    localDialog.setPositiveButton(2131427696, new ew(paramIRetryListener, localDialog), 2);
    localDialog.setNegativeButton(2131427697, new ex(paramContext, paramIRetryListener, localDialog), 1);
    localDialog.setNeutralButton(2131427379, new ey(paramIRetryListener, localDialog), 2);
    localDialog.setOnCancelListener(new ez(localDialog, paramIRetryListener));
    try
    {
      localDialog.show();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }

  public static void a(Context paramContext, CheckResult paramCheckResult, boolean paramBoolean, IRetryListener paramIRetryListener)
  {
    String str1 = paramContext.getString(2131428319);
    String str2 = paramCheckResult.mMessage;
    a(new Dialog(paramContext), paramContext, false, str1, str2, 2131429924, 2131429929, ss.a(paramCheckResult), paramBoolean, paramIRetryListener);
  }

  public static void a(Context paramContext, Class paramClass)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    ComponentName localComponentName = new ComponentName(paramContext.getPackageName(), paramClass.getName());
    if (localPackageManager.getComponentEnabledSetting(localComponentName) != 2)
      localPackageManager.setComponentEnabledSetting(localComponentName, 2, 1);
  }

  public static void a(Context paramContext, xi.a parama)
  {
    jf localjf = new jf();
    if (!localjf.a())
      localjf.b();
    FirewallManager localFirewallManager1 = (FirewallManager)ManagerCreator.getManager(FirewallManager.class);
    int i = ScriptHelper.canRunAtRoot();
    int j;
    ih localih;
    if (i == 0)
      if (localFirewallManager1.getFeature() != 0)
        if (localFirewallManager1.isInited())
        {
          j = 0;
          localih = ih.a(QQPimApplication.a());
          if (j != 0)
            break label323;
          ih.a = true;
          localih.a(true);
        }
    while (true)
    {
      if (parama != null)
        parama.a(j);
      return;
      ArrayList localArrayList1 = new ArrayList();
      localArrayList1.add(Integer.valueOf(7));
      FirewallManager localFirewallManager2 = (FirewallManager)ManagerCreator.getManager(FirewallManager.class);
      List localList = new jf().a(localArrayList1);
      ArrayList localArrayList2 = new ArrayList();
      for (int k = 0; k < localList.size(); k++)
      {
        Rule localRule = new Rule();
        localRule.uid = ((kx)localList.get(k)).a;
        localRule.type = 1;
        localRule.uidMobileVerdict = c(((kx)localList.get(k)).e[7]);
        localArrayList2.add(localRule);
      }
      if (localFirewallManager2.init(localArrayList2))
      {
        localFirewallManager2.setEnable(true);
        j = 0;
        break;
      }
      j = 3;
      ha.b(paramContext, paramContext.getString(2131429126));
      break;
      ha.b(paramContext, paramContext.getString(2131429125));
      j = 2;
      break;
      if (2 == i)
      {
        ha.b(paramContext, paramContext.getString(2131429124));
        j = 1;
        break;
      }
      j = 1;
      break;
      label323: ih.a = false;
      localih.a(false);
    }
  }

  public static void a(Context paramContext, String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString, fb paramfb)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < paramArrayOfString1.length; i++)
    {
      RadioButtonMode localRadioButtonMode = new RadioButtonMode();
      localRadioButtonMode.setRadioButtonName(paramArrayOfString1[i]);
      localRadioButtonMode.setRadioEventCode(paramArrayOfString2[i]);
      localArrayList.add(localRadioButtonMode);
    }
    RadioButtonDialog localRadioButtonDialog = new RadioButtonDialog(paramContext);
    localRadioButtonDialog.setDataAdapter(localArrayList, -1);
    localRadioButtonDialog.setTitle(paramString);
    localRadioButtonDialog.setOnItemClickListener(new et(paramfb, localRadioButtonDialog));
    localRadioButtonDialog.show();
  }

  public static void a(Intent paramIntent, int paramInt1, int paramInt2, String paramString)
  {
    if (paramInt1 != -1)
      paramIntent.putExtra("type", paramInt1);
    if (paramInt2 != -1)
      paramIntent.putExtra("action", paramInt2);
    if (paramInt1 == 2)
      if ((paramString == null) || (paramString.equals("")))
        break label72;
    label72: for (int i = 1; ; i = 0)
    {
      if (i != 0)
        paramIntent.putExtra("PkgName", paramString);
      paramIntent.setFlags(268435456);
      return;
    }
  }

  public static void a(Drawable paramDrawable, String paramString)
  {
    if ((!Environment.getExternalStorageState().equals("mounted")) || (paramDrawable == null) || ((paramDrawable instanceof NinePatchDrawable)));
    while (true)
    {
      return;
      File localFile1 = new File(paramString);
      long l1 = localFile1.length();
      long l2;
      Bitmap localBitmap1;
      if ((paramDrawable != null) && ((paramDrawable instanceof BitmapDrawable)))
      {
        Bitmap localBitmap2 = ((BitmapDrawable)paramDrawable).getBitmap();
        if (localBitmap2 != null)
        {
          byte[] arrayOfByte = a(localBitmap2);
          if (arrayOfByte != null)
          {
            l2 = arrayOfByte.length;
            if (((localFile1.exists()) && (l1 == l2)) || (!(paramDrawable instanceof BitmapDrawable)))
              continue;
            localBitmap1 = ((BitmapDrawable)paramDrawable).getBitmap();
            if (localBitmap1 == null)
              continue;
          }
        }
      }
      else
      {
        try
        {
          if ((!localBitmap1.isRecycled()) && (Environment.getExternalStorageState().equals("mounted")) && (localBitmap1 != null))
          {
            File localFile2 = new File(paramString);
            try
            {
              FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
              localBitmap1.compress(Bitmap.CompressFormat.PNG, 100, localFileOutputStream);
              localFileOutputStream.close();
            }
            catch (FileNotFoundException localFileNotFoundException)
            {
            }
            continue;
            l2 = 0L;
          }
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
        }
      }
    }
  }

  public static void a(Menu paramMenu)
  {
    if (paramMenu.findItem(44) == null)
      paramMenu.add(0, 44, 3, QQPimApplication.a().getResources().getString(2131428658)).setIcon(2130838020);
    d(paramMenu);
  }

  public static void a(Menu paramMenu, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = -1;
    int k;
    int m;
    label54: label83: MenuItem localMenuItem1;
    if (paramMenu.findItem(19) == null)
    {
      if (paramBoolean2)
      {
        k = i;
        MenuItem localMenuItem2 = paramMenu.add(k, 19, 0, QQPimApplication.a().getResources().getString(2131428652));
        if (!paramBoolean2)
          break label133;
        m = 2130838011;
        localMenuItem2.setIcon(m);
      }
    }
    else if ((paramMenu.findItem(9) == null) && (!paramBoolean1))
    {
      if (!paramBoolean2)
        break label141;
      localMenuItem1 = paramMenu.add(i, 9, 0, QQPimApplication.a().getResources().getString(2131427377));
      if (!paramBoolean2)
        break label146;
    }
    label133: label141: label146: for (int j = 2130838008; ; j = 2130838010)
    {
      localMenuItem1.setIcon(j);
      return;
      k = 0;
      break;
      m = 2130838009;
      break label54;
      i = 0;
      break label83;
    }
  }

  public static void a(BaseView paramBaseView, int paramInt)
  {
    Intent localIntent = paramBaseView.getActivity().getIntent();
    boolean bool = false;
    if (localIntent != null)
      bool = localIntent.getBooleanExtra("extra_back_to_main", false);
    if (bool)
      paramBaseView.setBackText(paramInt);
  }

  public static void a(Dialog paramDialog, Context paramContext, boolean paramBoolean1, String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3, boolean paramBoolean2, IRetryListener paramIRetryListener)
  {
    View localView = LayoutInflater.from(paramContext).inflate(2130903063, null);
    if (paramBoolean2)
      localView.findViewById(2131230751).setVisibility(0);
    paramDialog.setView(localView);
    paramDialog.setIconVisibility(8);
    CheckBoxView localCheckBoxView = (CheckBoxView)localView.findViewById(2131230752);
    localCheckBoxView.setChecked(paramBoolean1);
    paramDialog.setTitle(paramString1);
    ((TextView)localView.findViewById(2131230761)).setText(paramString2);
    localCheckBoxView.setOnClickListener(new em(paramDialog, paramBoolean1, paramContext, paramString1, paramString2, paramString3, paramBoolean2, paramIRetryListener));
    paramDialog.setPositiveButton(2131429924, new en(paramIRetryListener, paramDialog), 1);
    paramDialog.setNeutralButton(paramInt2, new eo(paramIRetryListener, paramBoolean2, localCheckBoxView, paramString3, paramDialog), 2);
    paramDialog.setOnCancelListener(new eq(paramIRetryListener));
    try
    {
      paramDialog.show();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }

  private static void a(File paramFile)
  {
    File localFile = new File(paramFile, QQPimApplication.a().getString(2131429923));
    if ((!localFile.exists()) || (localFile.isDirectory()))
      if (localFile.isDirectory())
        localFile.delete();
    try
    {
      localFile.createNewFile();
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  private static void a(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, String paramString, HashMap<String, String> paramHashMap1, HashMap<String, String> paramHashMap2)
  {
    Iterator localIterator = paramArrayList1.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      String str2 = str1.substring(1 + str1.lastIndexOf("/"));
      String str3 = paramString + str2;
      String str4;
      if (e(str1, str3))
      {
        paramHashMap1.put(str1, str3);
        str4 = (String)paramArrayList2.get(i);
        if ((str4 == null) || (str4.equals("")))
          break label191;
        String str5 = str4.substring(1 + str1.lastIndexOf("/"));
        String str6 = paramString + str5;
        if (!e(str4, str6))
          break label178;
        paramHashMap2.put(str4, str6);
      }
      while (true)
      {
        i++;
        break;
        label178: paramHashMap2.put(str4, "");
        continue;
        label191: paramHashMap2.put("", "");
      }
    }
  }

  // ERROR //
  public static void a(List<? extends ls> paramList, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: ifnull +12 -> 15
    //   6: aload_0
    //   7: invokeinterface 803 1 0
    //   12: ifne +4 -> 16
    //   15: return
    //   16: new 1500	org/json/JSONArray
    //   19: dup
    //   20: invokespecial 1501	org/json/JSONArray:<init>	()V
    //   23: astore 4
    //   25: aload_0
    //   26: invokeinterface 229 1 0
    //   31: astore 16
    //   33: aload 16
    //   35: invokeinterface 234 1 0
    //   40: istore 17
    //   42: aconst_null
    //   43: astore_3
    //   44: iload 17
    //   46: ifeq +68 -> 114
    //   49: aload 16
    //   51: invokeinterface 238 1 0
    //   56: checkcast 1503	ls
    //   59: astore 23
    //   61: aload 23
    //   63: aload 23
    //   65: invokeinterface 1506 2 0
    //   70: astore 24
    //   72: aconst_null
    //   73: astore_3
    //   74: aload 24
    //   76: ifnull -43 -> 33
    //   79: aload 4
    //   81: aload 24
    //   83: invokevirtual 1509	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   86: pop
    //   87: goto -54 -> 33
    //   90: astore 13
    //   92: aload 13
    //   94: invokevirtual 1510	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   97: pop
    //   98: aload_3
    //   99: ifnull -84 -> 15
    //   102: aload_3
    //   103: invokevirtual 1513	java/io/OutputStream:close	()V
    //   106: goto -91 -> 15
    //   109: astore 15
    //   111: goto -96 -> 15
    //   114: invokestatic 519	com/tencent/qqpimsecure/service/QQPimApplication:a	()Landroid/content/Context;
    //   117: astore 18
    //   119: new 582	java/io/FileOutputStream
    //   122: dup
    //   123: aload_1
    //   124: invokespecial 1514	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   127: astore 19
    //   129: aload 4
    //   131: invokevirtual 1515	org/json/JSONArray:toString	()Ljava/lang/String;
    //   134: invokevirtual 1519	java/lang/String:getBytes	()[B
    //   137: astore 20
    //   139: aconst_null
    //   140: astore 21
    //   142: aload_2
    //   143: ifnull +9 -> 152
    //   146: aload_2
    //   147: invokevirtual 1519	java/lang/String:getBytes	()[B
    //   150: astore 21
    //   152: aload 19
    //   154: aload 18
    //   156: aload 20
    //   158: aload 21
    //   160: invokestatic 1525	com/tencent/tccdb/TccCryptor:encrypt	(Landroid/content/Context;[B[B)[B
    //   163: invokevirtual 1528	java/io/FileOutputStream:write	([B)V
    //   166: aload 19
    //   168: invokevirtual 1513	java/io/OutputStream:close	()V
    //   171: goto -156 -> 15
    //   174: astore 22
    //   176: goto -161 -> 15
    //   179: astore 10
    //   181: aload 10
    //   183: invokevirtual 1529	java/io/IOException:getMessage	()Ljava/lang/String;
    //   186: pop
    //   187: aload_3
    //   188: ifnull -173 -> 15
    //   191: aload_3
    //   192: invokevirtual 1513	java/io/OutputStream:close	()V
    //   195: goto -180 -> 15
    //   198: astore 12
    //   200: goto -185 -> 15
    //   203: astore 7
    //   205: aload 7
    //   207: invokevirtual 1166	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   210: pop
    //   211: aload_3
    //   212: ifnull -197 -> 15
    //   215: aload_3
    //   216: invokevirtual 1513	java/io/OutputStream:close	()V
    //   219: goto -204 -> 15
    //   222: astore 9
    //   224: goto -209 -> 15
    //   227: astore 5
    //   229: aload_3
    //   230: ifnull +7 -> 237
    //   233: aload_3
    //   234: invokevirtual 1513	java/io/OutputStream:close	()V
    //   237: aload 5
    //   239: athrow
    //   240: astore 6
    //   242: goto -5 -> 237
    //   245: astore 5
    //   247: aload 19
    //   249: astore_3
    //   250: goto -21 -> 229
    //   253: astore 7
    //   255: aload 19
    //   257: astore_3
    //   258: goto -53 -> 205
    //   261: astore 10
    //   263: aload 19
    //   265: astore_3
    //   266: goto -85 -> 181
    //   269: astore 13
    //   271: aload 19
    //   273: astore_3
    //   274: goto -182 -> 92
    //
    // Exception table:
    //   from	to	target	type
    //   16	87	90	java/io/FileNotFoundException
    //   114	129	90	java/io/FileNotFoundException
    //   102	106	109	java/io/IOException
    //   166	171	174	java/io/IOException
    //   16	87	179	java/io/IOException
    //   114	129	179	java/io/IOException
    //   191	195	198	java/io/IOException
    //   16	87	203	java/lang/Exception
    //   114	129	203	java/lang/Exception
    //   215	219	222	java/io/IOException
    //   16	87	227	finally
    //   92	98	227	finally
    //   114	129	227	finally
    //   181	187	227	finally
    //   205	211	227	finally
    //   233	237	240	java/io/IOException
    //   129	166	245	finally
    //   129	166	253	java/lang/Exception
    //   129	166	261	java/io/IOException
    //   129	166	269	java/io/FileNotFoundException
  }

  private static void a(byte[] paramArrayOfByte, int[] paramArrayOfInt)
  {
    int i = 0;
    int j = paramArrayOfByte.length >> 2;
    int k = 0;
    int i5;
    if (k >= j)
      if (i < paramArrayOfByte.length)
      {
        i5 = i + 1;
        paramArrayOfInt[k] = (0xFF & paramArrayOfByte[i]);
      }
    for (int i6 = 8; ; i6 += 8)
    {
      if (i5 >= paramArrayOfByte.length)
      {
        return;
        int m = i + 1;
        paramArrayOfInt[k] = (0xFF & paramArrayOfByte[i]);
        int n = paramArrayOfInt[k];
        int i1 = m + 1;
        paramArrayOfInt[k] = (n | (0xFF & paramArrayOfByte[m]) << 8);
        int i2 = paramArrayOfInt[k];
        int i3 = i1 + 1;
        paramArrayOfInt[k] = (i2 | (0xFF & paramArrayOfByte[i1]) << 16);
        int i4 = paramArrayOfInt[k];
        i = i3 + 1;
        paramArrayOfInt[k] = (i4 | (0xFF & paramArrayOfByte[i3]) << 24);
        k++;
        break;
      }
      paramArrayOfInt[k] |= (0xFF & paramArrayOfByte[i5]) << i6;
      i5++;
    }
  }

  private static void a(int[] paramArrayOfInt, int paramInt, byte[] paramArrayOfByte)
  {
    int i = 0;
    int j = paramArrayOfByte.length >> 2;
    if (j > paramInt)
      j = paramInt;
    int k = 0;
    int i2;
    int i3;
    if (k >= j)
      if ((paramInt > j) && (i < paramArrayOfByte.length))
      {
        i2 = i + 1;
        paramArrayOfByte[i] = ((byte)paramArrayOfInt[k]);
        i3 = 8;
      }
    while (true)
    {
      if ((i3 > 24) || (i2 >= paramArrayOfByte.length))
      {
        return;
        int m = i + 1;
        paramArrayOfByte[i] = ((byte)paramArrayOfInt[k]);
        int n = m + 1;
        paramArrayOfByte[m] = ((byte)(paramArrayOfInt[k] >>> 8));
        int i1 = n + 1;
        paramArrayOfByte[n] = ((byte)(paramArrayOfInt[k] >>> 16));
        i = i1 + 1;
        paramArrayOfByte[i1] = ((byte)(paramArrayOfInt[k] >> 24));
        k++;
        break;
      }
      int i4 = i2 + 1;
      paramArrayOfByte[i2] = ((byte)(paramArrayOfInt[k] >>> i3));
      i3 += 8;
      i2 = i4;
    }
  }

  public static void a(Class<?>[] paramArrayOfClass)
    throws UnauthorizedCallerException
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    int i = arrayOfStackTraceElement.length;
    int j = 0;
    int k = 0;
    if (j >= i)
    {
      if (k == 0)
        throw new UnauthorizedCallerException();
    }
    else
    {
      StackTraceElement localStackTraceElement = arrayOfStackTraceElement[j];
      int m = paramArrayOfClass.length;
      label86: for (int n = 0; ; n++)
      {
        if (n >= m);
        while (true)
        {
          j++;
          break;
          Class<?> localClass = paramArrayOfClass[n];
          if (!localStackTraceElement.getClassName().equals(localClass.getName()))
            break label86;
          k = 1;
        }
      }
    }
  }

  public static boolean a(Context paramContext, int paramInt, Parcelable paramParcelable, String paramString1, String paramString2)
  {
    boolean bool = false;
    if (paramContext == null);
    while (true)
    {
      return bool;
      Intent localIntent = new Intent("action.com.tencent.qqpim.comm");
      localIntent.addCategory("cat.com.tencent.qqpim.comm");
      Bundle localBundle = new Bundle();
      localBundle.putInt("intent_key_comm_msgid", paramInt);
      localBundle.putString("intent_key_comm_from", paramString1);
      if (paramString2 != null)
        localBundle.putString("intent_key_comm_to", paramString2);
      if (paramParcelable != null)
        localBundle.putParcelable("intent_key_comm_data", paramParcelable);
      localIntent.putExtras(localBundle);
      try
      {
        paramContext.sendBroadcast(localIntent);
        bool = true;
      }
      catch (Throwable localThrowable)
      {
        dk.c("CommEngine", "broadcast err = " + localThrowable.toString());
        bool = false;
      }
    }
  }

  private static boolean a(ie paramie, ib paramib)
  {
    String[] arrayOfString1 = new String[1];
    arrayOfString1[0] = String.valueOf(1);
    List localList1 = paramie.a("file_safe_file_info", "mFileState=?", arrayOfString1, "id ASC");
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(2);
    localList1.addAll(paramie.a("file_safe_file_info", "mFileState=?", arrayOfString2, "id ASC"));
    String[] arrayOfString3 = new String[1];
    arrayOfString3[0] = String.valueOf(1);
    List localList2 = paramib.a("file_safe_file_info", "mFileState=?", arrayOfString3, "id ASC");
    String[] arrayOfString4 = new String[1];
    arrayOfString4[0] = String.valueOf(2);
    localList2.addAll(paramib.a("file_safe_file_info", "mFileState=?", arrayOfString4, "id ASC"));
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator1 = localList2.iterator();
    while (localIterator1.hasNext())
    {
      lj locallj2 = (lj)localIterator1.next();
      localArrayList1.add(locallj2.b.substring(1 + locallj2.b.lastIndexOf("/")));
    }
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator2 = localList1.iterator();
    while (localIterator2.hasNext())
    {
      lj locallj1 = (lj)localIterator2.next();
      if (!localArrayList1.contains(locallj1.b.substring(1 + locallj1.b.lastIndexOf("/"))))
      {
        locallj1.d = 2;
        localArrayList2.add(locallj1);
      }
    }
    boolean bool;
    if (localArrayList2.size() > 0)
      if (localArrayList2.size() == 0)
        bool = false;
    while (true)
    {
      return bool;
      bool = paramib.a.a(new ic(paramib, localArrayList2));
      continue;
      bool = true;
    }
  }

  private static boolean a(File paramFile, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, AtomicBoolean paramAtomicBoolean)
  {
    boolean bool = false;
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null)
      paramAtomicBoolean.set(false);
    while (true)
    {
      return bool;
      paramAtomicBoolean.set(true);
      int i = 0;
      if (i < arrayOfFile.length)
      {
        String str1;
        if ((!arrayOfFile[i].isHidden()) && (arrayOfFile[i].length() != 0L))
        {
          if (arrayOfFile[i].isDirectory())
            paramAtomicBoolean.set(false);
          str1 = arrayOfFile[i].getName();
          if (!str1.startsWith("filesafe_db.sqlite"))
            break label121;
          if (str1.equals("filesafe_db.sqlite"))
            paramAtomicBoolean.set(false);
        }
        label121: 
        do
          while (true)
          {
            i++;
            break;
            if (str1.lastIndexOf(".") == -1)
              break label141;
            paramAtomicBoolean.set(false);
          }
        while (str1.length() != 32);
        label141: String str2 = arrayOfFile[i].getPath() + "_tmb";
        if (new File(str2).exists())
          paramArrayList2.add(str2);
        while (true)
        {
          paramArrayList1.add(arrayOfFile[i].getAbsolutePath());
          break;
          paramArrayList2.add("");
        }
      }
      bool = true;
    }
  }

  // ERROR //
  public static boolean a(String paramString, Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 1652	android/content/Context:getCacheDir	()Ljava/io/File;
    //   4: invokevirtual 549	java/io/File:toString	()Ljava/lang/String;
    //   7: astore 14
    //   9: aload 14
    //   11: ldc_w 1485
    //   14: invokevirtual 1655	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   17: ifeq +19 -> 36
    //   20: aload 14
    //   22: iconst_0
    //   23: bipush 254
    //   25: aload 14
    //   27: invokevirtual 1638	java/lang/String:length	()I
    //   30: iadd
    //   31: invokevirtual 1658	java/lang/String:substring	(II)Ljava/lang/String;
    //   34: astore 14
    //   36: aload 14
    //   38: bipush 47
    //   40: invokevirtual 1660	java/lang/String:lastIndexOf	(I)I
    //   43: istore 15
    //   45: iload 15
    //   47: iconst_m1
    //   48: if_icmpeq +411 -> 459
    //   51: new 525	java/lang/StringBuilder
    //   54: dup
    //   55: aload 14
    //   57: iconst_0
    //   58: iload 15
    //   60: invokevirtual 1658	java/lang/String:substring	(II)Ljava/lang/String;
    //   63: invokestatic 640	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   66: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   69: ldc_w 1662
    //   72: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: astore 16
    //   80: aload 16
    //   82: astore_3
    //   83: aload_3
    //   84: invokevirtual 1638	java/lang/String:length	()I
    //   87: ifeq +571 -> 658
    //   90: new 548	java/io/File
    //   93: dup
    //   94: new 525	java/lang/StringBuilder
    //   97: dup
    //   98: aload_3
    //   99: invokestatic 640	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   102: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   105: aload_0
    //   106: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   115: invokevirtual 556	java/io/File:exists	()Z
    //   118: ifeq +433 -> 551
    //   121: ldc_w 1664
    //   124: new 525	java/lang/StringBuilder
    //   127: dup
    //   128: ldc_w 1666
    //   131: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   134: aload_3
    //   135: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: aload_0
    //   139: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: invokestatic 1668	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   148: new 525	java/lang/StringBuilder
    //   151: dup
    //   152: aload_3
    //   153: invokestatic 640	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   156: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   159: aload_0
    //   160: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: invokestatic 1671	java/lang/System:load	(Ljava/lang/String;)V
    //   169: iconst_1
    //   170: istore 6
    //   172: iload 6
    //   174: ifne +551 -> 725
    //   177: aload_0
    //   178: ldc_w 1673
    //   181: invokevirtual 1655	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   184: ifne +541 -> 725
    //   187: new 525	java/lang/StringBuilder
    //   190: dup
    //   191: aload_0
    //   192: invokestatic 640	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   195: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   198: ldc_w 1673
    //   201: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   207: astore 7
    //   209: new 548	java/io/File
    //   212: dup
    //   213: new 525	java/lang/StringBuilder
    //   216: dup
    //   217: aload_3
    //   218: invokestatic 640	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   221: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   224: aload 7
    //   226: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   232: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   235: invokevirtual 556	java/io/File:exists	()Z
    //   238: ifeq +56 -> 294
    //   241: ldc_w 1664
    //   244: new 525	java/lang/StringBuilder
    //   247: dup
    //   248: ldc_w 1666
    //   251: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   254: aload_3
    //   255: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: aload 7
    //   260: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   266: invokestatic 1668	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   269: new 525	java/lang/StringBuilder
    //   272: dup
    //   273: aload_3
    //   274: invokestatic 640	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   277: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   280: aload 7
    //   282: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   288: invokestatic 1671	java/lang/System:load	(Ljava/lang/String;)V
    //   291: iconst_1
    //   292: istore 6
    //   294: iload 6
    //   296: ifne +324 -> 620
    //   299: aload 7
    //   301: ldc_w 1675
    //   304: invokevirtual 1634	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   307: ifne +313 -> 620
    //   310: new 525	java/lang/StringBuilder
    //   313: dup
    //   314: ldc_w 1675
    //   317: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   320: aload 7
    //   322: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   328: astore 10
    //   330: new 548	java/io/File
    //   333: dup
    //   334: new 525	java/lang/StringBuilder
    //   337: dup
    //   338: aload_3
    //   339: invokestatic 640	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   342: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   345: aload 10
    //   347: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   353: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   356: invokevirtual 556	java/io/File:exists	()Z
    //   359: ifeq +261 -> 620
    //   362: ldc_w 1664
    //   365: new 525	java/lang/StringBuilder
    //   368: dup
    //   369: ldc_w 1666
    //   372: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   375: aload_3
    //   376: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   379: aload 10
    //   381: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   387: invokestatic 1668	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   390: new 525	java/lang/StringBuilder
    //   393: dup
    //   394: aload_3
    //   395: invokestatic 640	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   398: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   401: aload 10
    //   403: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   406: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   409: invokestatic 1671	java/lang/System:load	(Ljava/lang/String;)V
    //   412: iconst_1
    //   413: istore 8
    //   415: iload 8
    //   417: ifne +36 -> 453
    //   420: ldc_w 1664
    //   423: new 525	java/lang/StringBuilder
    //   426: dup
    //   427: ldc_w 1666
    //   430: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   433: aload_0
    //   434: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: ldc_w 1677
    //   440: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   443: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   446: invokestatic 1668	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   449: aload_0
    //   450: invokestatic 1680	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   453: iconst_1
    //   454: istore 5
    //   456: iload 5
    //   458: ireturn
    //   459: ldc 253
    //   461: astore_3
    //   462: goto -379 -> 83
    //   465: astore_2
    //   466: new 525	java/lang/StringBuilder
    //   469: dup
    //   470: ldc_w 1682
    //   473: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   476: aload_1
    //   477: invokevirtual 148	android/content/Context:getPackageName	()Ljava/lang/String;
    //   480: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   483: ldc_w 1662
    //   486: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   489: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   492: astore_3
    //   493: ldc_w 1664
    //   496: new 525	java/lang/StringBuilder
    //   499: dup
    //   500: ldc_w 1684
    //   503: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   506: aload_2
    //   507: invokevirtual 444	java/lang/Exception:toString	()Ljava/lang/String;
    //   510: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   513: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   516: invokestatic 449	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   519: goto -436 -> 83
    //   522: astore 13
    //   524: ldc_w 1664
    //   527: new 525	java/lang/StringBuilder
    //   530: dup
    //   531: ldc_w 1686
    //   534: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   537: aload_3
    //   538: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   541: aload_0
    //   542: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   545: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   548: invokestatic 449	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   551: iconst_0
    //   552: istore 6
    //   554: goto -382 -> 172
    //   557: astore 12
    //   559: ldc_w 1664
    //   562: new 525	java/lang/StringBuilder
    //   565: dup
    //   566: ldc_w 1686
    //   569: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   572: aload_3
    //   573: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   576: aload 7
    //   578: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   581: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   584: invokestatic 449	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   587: goto -293 -> 294
    //   590: astore 11
    //   592: ldc_w 1664
    //   595: new 525	java/lang/StringBuilder
    //   598: dup
    //   599: ldc_w 1686
    //   602: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   605: aload_3
    //   606: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   609: aload 10
    //   611: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   614: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   617: invokestatic 449	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   620: iload 6
    //   622: istore 8
    //   624: goto -209 -> 415
    //   627: astore 9
    //   629: ldc_w 1664
    //   632: new 525	java/lang/StringBuilder
    //   635: dup
    //   636: ldc_w 1686
    //   639: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   642: aload_0
    //   643: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   646: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   649: invokestatic 449	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   652: iconst_0
    //   653: istore 5
    //   655: goto -199 -> 456
    //   658: ldc_w 1664
    //   661: new 525	java/lang/StringBuilder
    //   664: dup
    //   665: ldc_w 1666
    //   668: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   671: aload_0
    //   672: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   675: ldc_w 1677
    //   678: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   681: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   684: invokestatic 1668	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   687: aload_0
    //   688: invokestatic 1680	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   691: goto -238 -> 453
    //   694: astore 4
    //   696: ldc_w 1664
    //   699: new 525	java/lang/StringBuilder
    //   702: dup
    //   703: ldc_w 1686
    //   706: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   709: aload_0
    //   710: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   713: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   716: invokestatic 449	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   719: iconst_0
    //   720: istore 5
    //   722: goto -266 -> 456
    //   725: aload_0
    //   726: astore 7
    //   728: goto -434 -> 294
    //
    // Exception table:
    //   from	to	target	type
    //   0	80	465	java/lang/Exception
    //   121	169	522	java/lang/UnsatisfiedLinkError
    //   241	291	557	java/lang/UnsatisfiedLinkError
    //   362	412	590	java/lang/UnsatisfiedLinkError
    //   420	453	627	java/lang/UnsatisfiedLinkError
    //   658	691	694	java/lang/UnsatisfiedLinkError
  }

  public static boolean a(String paramString1, String paramString2)
  {
    boolean bool = false;
    if (paramString1 != null)
    {
      int i = paramString1.length();
      bool = false;
      if (i > 0)
        break label19;
    }
    while (true)
    {
      return bool;
      label19: File localFile = new File(paramString1);
      int j;
      int k;
      do
      {
        try
        {
          if ((!localFile.exists()) || (!localFile.isDirectory()))
            break label163;
          File[] arrayOfFile = localFile.listFiles();
          j = localFile.listFiles().length;
          k = 0;
          continue;
          String str = arrayOfFile[k].getAbsolutePath();
          if (arrayOfFile[k].isDirectory())
            s(str);
          if ((str != null) && (paramString2 != null) && (str.contains(paramString2)))
            arrayOfFile[k].delete();
          k++;
        }
        catch (Exception localException)
        {
          dk.c("FileUtil", "delAllFiles filepath=" + paramString1);
          bool = false;
        }
        break;
      }
      while (k < j);
      label163: bool = true;
    }
  }

  private static boolean a(String paramString, ArrayList<String> paramArrayList, boolean paramBoolean, AtomicInteger paramAtomicInteger)
  {
    boolean bool1;
    if (paramArrayList.size() == 0)
      bool1 = true;
    while (true)
    {
      return bool1;
      ib localib = new ib();
      String[] arrayOfString1 = new String[1];
      arrayOfString1[0] = String.valueOf(1);
      List localList = localib.a("file_safe_file_info", "mFileState=?", arrayOfString1, "id ASC");
      if (!paramBoolean)
      {
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = String.valueOf(2);
        localList.addAll(localib.a("file_safe_file_info", "mFileState=?", arrayOfString2, "id ASC"));
      }
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      String str1 = paramString.substring(0, paramString.indexOf("/.tmfs/"));
      Iterator localIterator1 = paramArrayList.iterator();
      while (true)
        if (localIterator1.hasNext())
        {
          String str2 = (String)localIterator1.next();
          String str3 = str2.substring(1 + str2.lastIndexOf("/"));
          Iterator localIterator2 = localList.iterator();
          if (localIterator2.hasNext())
          {
            lj locallj = (lj)localIterator2.next();
            String str4 = locallj.b;
            String str5 = locallj.a;
            String str6 = str4.substring(1 + str4.lastIndexOf("/"));
            if (!str3.equalsIgnoreCase(str6))
              break;
            int i = str4.indexOf("/Tencent/QQSecure/.tmfs/");
            if (i != -1)
            {
              String str7 = paramString + str6;
              locallj.b = str7;
              String str8 = str4.substring(0, i);
              boolean bool2 = str5.startsWith(str1);
              String str9 = null;
              if (!bool2)
              {
                if (str5.startsWith(str8))
                {
                  str9 = str1 + str5.substring(str8.length());
                  label356: locallj.a = str9;
                }
              }
              else
              {
                if (str9 != null)
                  break label494;
                new StringBuilder().append(str5).append(" ---> no change").toString();
              }
              while (true)
              {
                new StringBuilder().append(str4).append(" ---> ").append(str7).toString();
                locallj.d = 1;
                localArrayList2.add(str5);
                localArrayList1.add(locallj);
                break;
                String str10 = str5.substring(1 + str5.lastIndexOf("/"));
                str9 = str1 + "/QQSecureRecovery/" + str10;
                break label356;
                label494: new StringBuilder().append(str5).append(" ---> ").append(str9).toString();
              }
            }
          }
        }
      new StringBuilder("filesafe db update for newLocation ").append(paramString).append(", item counts = ").append(localArrayList1.size()).toString();
      paramAtomicInteger.set(localArrayList1.size());
      if (localArrayList1.size() > 0)
      {
        if (localArrayList1.size() == 0)
          bool1 = false;
        else
          bool1 = localib.a.a(new id(localib, localArrayList1, localArrayList2));
      }
      else
        bool1 = true;
    }
  }

  // ERROR //
  private static byte[] a(Bitmap paramBitmap)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: ifnonnull +5 -> 8
    //   6: aload_1
    //   7: areturn
    //   8: new 1725	java/io/ByteArrayOutputStream
    //   11: dup
    //   12: invokespecial 1726	java/io/ByteArrayOutputStream:<init>	()V
    //   15: astore_2
    //   16: aload_0
    //   17: getstatic 1363	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   20: bipush 100
    //   22: aload_2
    //   23: invokevirtual 1367	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   26: pop
    //   27: aload_2
    //   28: invokevirtual 1729	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   31: astore 8
    //   33: aload 8
    //   35: astore_1
    //   36: aload_2
    //   37: invokevirtual 1730	java/io/ByteArrayOutputStream:close	()V
    //   40: goto -34 -> 6
    //   43: astore 9
    //   45: aload 9
    //   47: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   50: goto -44 -> 6
    //   53: astore_3
    //   54: aconst_null
    //   55: astore_2
    //   56: aload_3
    //   57: invokevirtual 68	java/lang/Exception:printStackTrace	()V
    //   60: aconst_null
    //   61: astore_1
    //   62: aload_2
    //   63: ifnull -57 -> 6
    //   66: aload_2
    //   67: invokevirtual 1730	java/io/ByteArrayOutputStream:close	()V
    //   70: aconst_null
    //   71: astore_1
    //   72: goto -66 -> 6
    //   75: astore 6
    //   77: aload 6
    //   79: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   82: aconst_null
    //   83: astore_1
    //   84: goto -78 -> 6
    //   87: astore 10
    //   89: aconst_null
    //   90: astore_2
    //   91: aload 10
    //   93: astore 4
    //   95: aload_2
    //   96: ifnull +7 -> 103
    //   99: aload_2
    //   100: invokevirtual 1730	java/io/ByteArrayOutputStream:close	()V
    //   103: aload 4
    //   105: athrow
    //   106: astore 5
    //   108: aload 5
    //   110: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   113: goto -10 -> 103
    //   116: astore 4
    //   118: goto -23 -> 95
    //   121: astore_3
    //   122: goto -66 -> 56
    //
    // Exception table:
    //   from	to	target	type
    //   36	40	43	java/io/IOException
    //   8	16	53	java/lang/Exception
    //   66	70	75	java/io/IOException
    //   8	16	87	finally
    //   99	103	106	java/io/IOException
    //   16	33	116	finally
    //   56	60	116	finally
    //   16	33	121	java/lang/Exception
  }

  public static byte[] a(String paramString, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = null;
    if (paramString != null)
    {
      arrayOfByte1 = null;
      if (paramArrayOfByte != null)
        break label14;
    }
    while (true)
    {
      return arrayOfByte1;
      try
      {
        label14: byte[] arrayOfByte2 = paramString.getBytes("UTF-8");
        arrayOfByte1 = b(arrayOfByte2, paramArrayOfByte);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        dk.c("CryptorUtil", "encryptString string TO Bytes e1 = " + localUnsupportedEncodingException.toString());
        arrayOfByte1 = null;
      }
    }
  }

  public static byte[] a(byte[] paramArrayOfByte, RSAPublicKey paramRSAPublicKey)
  {
    Object localObject = null;
    if (paramRSAPublicKey != null);
    try
    {
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      localCipher.init(2, paramRSAPublicKey);
      byte[] arrayOfByte = localCipher.doFinal(paramArrayOfByte);
      localObject = arrayOfByte;
      return localObject;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        localObject = null;
      }
    }
  }

  public static String[] a(String[] paramArrayOfString)
  {
    Object localObject = null;
    StringBuffer localStringBuffer;
    Process localProcess;
    InputStream localInputStream;
    try
    {
      localStringBuffer = new StringBuffer();
      ProcessBuilder localProcessBuilder = new ProcessBuilder(paramArrayOfString);
      localProcessBuilder.redirectErrorStream(false);
      localProcess = localProcessBuilder.start();
      localInputStream = localProcess.getInputStream();
      byte[] arrayOfByte = new byte[1024];
      while (true)
      {
        int i = localInputStream.read(arrayOfByte);
        if (i <= 0)
          break;
        localStringBuffer.append(new String(arrayOfByte, 0, i));
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    while (true)
    {
      return localObject;
      localInputStream.close();
      localProcess.destroy();
      String[] arrayOfString = localStringBuffer.toString().split("\n");
      localObject = arrayOfString;
    }
  }

  public static Drawable b(String paramString)
  {
    boolean bool1 = Environment.getExternalStorageState().equals("mounted");
    Object localObject = null;
    if (!bool1);
    File localFile;
    boolean bool2;
    do
    {
      return localObject;
      localFile = new File(paramString);
      bool2 = localFile.exists();
      localObject = null;
    }
    while (!bool2);
    while (true)
    {
      Bitmap localBitmap;
      try
      {
        if (!localFile.exists())
          break label116;
        l = localFile.length();
        if (l <= 0L)
        {
          boolean bool3 = localFile.exists();
          localObject = null;
          if (!bool3)
            break;
          localFile.delete();
          localObject = null;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        localBitmap = a(paramString);
        localObject = null;
      }
      if (localBitmap == null)
        break;
      localObject = new BitmapDrawable(localBitmap);
      break;
      label116: long l = 0L;
    }
  }

  public static fc b(int paramInt)
  {
    fc localfc = fc.c;
    if (-(-paramInt % 100) == -3)
      localfc = fc.b;
    while (true)
    {
      return localfc;
      switch (-(1000 * (-paramInt / 1000)))
      {
      default:
        break;
      case -5000:
      case -4000:
      case -3000:
      case -2000:
      case -1000:
        localfc = fc.a;
      }
    }
  }

  private static fh b(InputStream paramInputStream)
  {
    fh localfh = new fh();
    byte[] arrayOfByte = new byte[4];
    try
    {
      paramInputStream.read(arrayOfByte);
      paramInputStream.read(arrayOfByte);
      int i = arrayOfByte.length;
      int j = 0;
      if (i != 4);
      while (true)
      {
        localfh.a = j;
        paramInputStream.read(new byte[16]);
        break;
        int k = 0xFF & arrayOfByte[0] | (0xFF & arrayOfByte[1]) << 8 | (0xFF & arrayOfByte[2]) << 16;
        int m = arrayOfByte[3];
        j = k | (m & 0xFF) << 24;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return localfh;
  }

  public static String b(long paramLong)
  {
    int i = 0;
    long l = 999L;
    int j;
    if (paramLong < 0L)
    {
      j = 1;
      paramLong *= -1L;
    }
    while (true)
      if (paramLong / l > 0L)
      {
        i++;
        l *= 1000L;
      }
      else
      {
        String str1;
        switch (i)
        {
        default:
          str1 = null;
          if (j == 0)
            break;
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        }
        for (String str2 = "-" + str1; ; str2 = str1)
        {
          return str2;
          str1 = paramLong + "B";
          break;
          str1 = (float)(paramLong * 10L / 1024L) / 10.0F + "K";
          break;
          str1 = (float)(paramLong * 10L / 1048576L) / 10.0F + "M";
          break;
          str1 = (float)(paramLong * 10L / 1073741824L) / 10.0F + "G";
          break;
          str1 = (float)(paramLong * 10L / 1099511627776L) / 10.0F + "T";
          break;
        }
        j = 0;
        i = 0;
      }
  }

  public static ArrayList<mk> b(String paramString1, String paramString2)
  {
    ArrayList localArrayList1 = c(paramString1, paramString2);
    ArrayList localArrayList2 = new ArrayList();
    new mk();
    Iterator localIterator = localArrayList1.iterator();
    while (localIterator.hasNext())
    {
      mk localmk = mk.a((JSONObject)localIterator.next());
      if (localmk != null)
        localArrayList2.add(localmk);
    }
    return localArrayList2;
  }

  public static GregorianCalendar b(GregorianCalendar paramGregorianCalendar, int paramInt)
  {
    GregorianCalendar localGregorianCalendar = new GregorianCalendar();
    localGregorianCalendar.setTimeInMillis(paramGregorianCalendar.getTimeInMillis());
    int k;
    if (localGregorianCalendar.get(5) != paramInt)
      if (localGregorianCalendar.get(5) < paramInt)
      {
        k = localGregorianCalendar.getActualMaximum(5);
        if (k >= paramInt)
          localGregorianCalendar.set(5, paramInt);
      }
    while (true)
    {
      localGregorianCalendar.clear(11);
      localGregorianCalendar.clear(10);
      localGregorianCalendar.clear(12);
      localGregorianCalendar.clear(13);
      localGregorianCalendar.clear(14);
      return localGregorianCalendar;
      localGregorianCalendar.set(5, k);
      continue;
      localGregorianCalendar.set(5, 1);
      localGregorianCalendar.add(2, 1);
      int j = localGregorianCalendar.getActualMaximum(5);
      if (j >= paramInt)
      {
        localGregorianCalendar.set(5, paramInt);
      }
      else
      {
        localGregorianCalendar.set(5, j);
        continue;
        localGregorianCalendar.set(5, 1);
        localGregorianCalendar.add(2, 1);
        int i = localGregorianCalendar.getActualMaximum(5);
        if (i >= paramInt)
          localGregorianCalendar.set(5, paramInt);
        else
          localGregorianCalendar.set(5, i);
      }
    }
  }

  public static List<String> b(Context paramContext)
  {
    ArrayList localArrayList1 = new ArrayList();
    Intent localIntent = new Intent();
    localIntent.setAction("android.view.InputMethod");
    List localList = paramContext.getPackageManager().queryIntentServices(localIntent, 4);
    if ((localList == null) || (localList.size() <= 0));
    for (ArrayList localArrayList2 = localArrayList1; ; localArrayList2 = localArrayList1)
    {
      return localArrayList2;
      for (int i = 0; i < localList.size(); i++)
      {
        ServiceInfo localServiceInfo = ((ResolveInfo)localList.get(i)).serviceInfo;
        if (localServiceInfo != null)
          localArrayList1.add(localServiceInfo.packageName);
      }
    }
  }

  public static List<kw> b(ArrayList<SoftSimpleInfoEx> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramArrayList.iterator();
    if (localIterator.hasNext())
    {
      SoftSimpleInfoEx localSoftSimpleInfoEx = (SoftSimpleInfoEx)localIterator.next();
      kw localkw = a(localSoftSimpleInfoEx);
      switch (localSoftSimpleInfoEx.expand.sign)
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      }
      while (true)
      {
        localArrayList.add(localkw);
        break;
        localkw.f(5);
        continue;
        localkw.f(6);
        continue;
        localkw.f(7);
        continue;
        localkw.f(1);
      }
    }
    return localArrayList;
  }

  public static List<kw> b(List<AppEntity> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = a((AppEntity)localIterator.next(), false);
      if (localkw != null)
        localArrayList.add(localkw);
    }
    return localArrayList;
  }

  private static void b(Context paramContext, int paramInt, IRetryListener paramIRetryListener)
  {
    String str1 = paramContext.getString(2131428563);
    String str2 = paramContext.getString(2131428752);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    String str3 = String.format(str2, arrayOfObject);
    Dialog localDialog = new Dialog(paramContext);
    localDialog.setTitle(str1);
    localDialog.setMessage(str3);
    localDialog.setPositiveButton(2131427696, new ee(paramIRetryListener, localDialog), 2);
    localDialog.setNegativeButton(2131427697, new ep(paramContext, paramIRetryListener, localDialog), 1);
    localDialog.setNeutralButton(2131427379, new eu(paramIRetryListener, localDialog), 2);
    localDialog.setOnCancelListener(new ev(localDialog, paramIRetryListener));
    try
    {
      localDialog.show();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }

  private static void b(Context paramContext, Class paramClass)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    ComponentName localComponentName = new ComponentName(paramContext.getPackageName(), paramClass.getName());
    if (localPackageManager.getComponentEnabledSetting(localComponentName) != 0)
      localPackageManager.setComponentEnabledSetting(localComponentName, 0, 1);
  }

  public static void b(Context paramContext, String paramString)
  {
    Dialog localDialog = new Dialog(paramContext);
    localDialog.setTitle(2131428563);
    localDialog.setMessage(2131428755);
    localDialog.setPositiveButton(2131428152, new eh(paramContext, paramString, localDialog), 1);
    localDialog.setNeutralButton(2131427379, new ei(localDialog), 2);
    try
    {
      localDialog.show();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }

  public static void b(Menu paramMenu)
  {
    if (paramMenu.findItem(44) == null)
      paramMenu.add(0, 44, 4, QQPimApplication.a().getResources().getString(2131428658)).setIcon(2130838020);
  }

  public static boolean b()
  {
    String str = Environment.getExternalStorageDirectory().toString() + "/DCIM";
    File localFile1 = new File(str);
    boolean bool1;
    if (!localFile1.isDirectory())
    {
      boolean bool3 = localFile1.mkdirs();
      bool1 = false;
      if (bool3);
    }
    while (true)
    {
      return bool1;
      File localFile2 = new File(str, ".probe");
      try
      {
        if (localFile2.exists())
          localFile2.delete();
        boolean bool2 = localFile2.createNewFile();
        bool1 = false;
        if (bool2)
        {
          localFile2.delete();
          bool1 = true;
        }
      }
      catch (IOException localIOException)
      {
        bool1 = false;
      }
    }
  }

  public static boolean b(long paramLong1, long paramLong2)
  {
    int i = 1;
    Calendar localCalendar1 = Calendar.getInstance();
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar1.setTimeInMillis(paramLong1);
    localCalendar2.setTimeInMillis(paramLong2);
    if ((localCalendar1.get(i) == localCalendar2.get(i)) && (localCalendar1.get(2) == localCalendar2.get(2)) && (localCalendar1.get(5) == localCalendar2.get(5)));
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public static byte[] b(byte[] paramArrayOfByte)
  {
    Object localObject = null;
    if (paramArrayOfByte == null);
    while (true)
    {
      return localObject;
      try
      {
        byte[] arrayOfByte = b(paramArrayOfByte, "DFG#$%^#%$RGHR(&*M<><".getBytes("UTF-8"));
        localObject = arrayOfByte;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        dk.c("WupUtils", "encrypt(), " + localUnsupportedEncodingException.toString());
        localObject = null;
      }
    }
  }

  public static byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = f(paramArrayOfByte2);
    if ((paramArrayOfByte1 == null) || (arrayOfByte == null) || (paramArrayOfByte1.length == 0))
      return paramArrayOfByte1;
    int i;
    label34: int[] arrayOfInt1;
    int j;
    label66: int[] arrayOfInt2;
    if (paramArrayOfByte1.length % 4 == 0)
    {
      i = 1 + (paramArrayOfByte1.length >>> 2);
      arrayOfInt1 = new int[i];
      a(paramArrayOfByte1, arrayOfInt1);
      arrayOfInt1[(i - 1)] = paramArrayOfByte1.length;
      if (arrayOfByte.length % 4 != 0)
        break label171;
      j = arrayOfByte.length >>> 2;
      if (j < 4)
        j = 4;
      arrayOfInt2 = new int[j];
    }
    int m;
    int i1;
    int i2;
    int i3;
    int i4;
    for (int k = 0; ; k++)
    {
      if (k >= j)
      {
        a(arrayOfByte, arrayOfInt2);
        m = -1 + arrayOfInt1.length;
        int n = arrayOfInt1[m];
        i1 = 6 + 52 / (m + 1);
        i2 = 0;
        i3 = n;
        i4 = i1 - 1;
        if (i1 > 0)
          break label194;
        paramArrayOfByte1 = new byte[arrayOfInt1.length << 2];
        a(arrayOfInt1, arrayOfInt1.length, paramArrayOfByte1);
        break;
        i = 2 + (paramArrayOfByte1.length >>> 2);
        break label34;
        label171: j = 1 + (arrayOfByte.length >>> 2);
        break label66;
      }
      arrayOfInt2[k] = 0;
    }
    label194: i2 += 31161;
    int i5 = 0x3 & i2 >>> 2;
    for (int i6 = 0; ; i6++)
    {
      if (i6 >= m)
      {
        int i8 = arrayOfInt1[0];
        i3 = arrayOfInt1[m] + ((i3 >>> 5 ^ i8 << 2) + (i8 >>> 3 ^ i3 << 4) ^ (i8 ^ i2) + (i3 ^ arrayOfInt2[(i5 ^ i6 & 0x3)]));
        arrayOfInt1[m] = i3;
        i1 = i4;
        break;
      }
      int i7 = arrayOfInt1[(i6 + 1)];
      i3 = arrayOfInt1[i6] + ((i3 >>> 5 ^ i7 << 2) + (i7 >>> 3 ^ i3 << 4) ^ (i7 ^ i2) + (i3 ^ arrayOfInt2[(i5 ^ i6 & 0x3)]));
      arrayOfInt1[i6] = i3;
    }
  }

  public static Drawable c(String paramString)
  {
    boolean bool1 = Environment.getExternalStorageState().equals("mounted");
    Object localObject = null;
    if (!bool1);
    File localFile;
    boolean bool2;
    do
    {
      return localObject;
      localFile = new File(paramString);
      bool2 = localFile.exists();
      localObject = null;
    }
    while (!bool2);
    while (true)
    {
      Bitmap localBitmap;
      try
      {
        if (!localFile.exists())
          break label116;
        l = localFile.length();
        if (l <= 0L)
        {
          boolean bool3 = localFile.exists();
          localObject = null;
          if (!bool3)
            break;
          localFile.delete();
          localObject = null;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        localBitmap = t(paramString);
        localObject = null;
      }
      if (localBitmap == null)
        break;
      localObject = new BitmapDrawable(localBitmap);
      break;
      label116: long l = 0L;
    }
  }

  public static String c()
  {
    String str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Tencent/QQSecure";
    File localFile = new File(str);
    if (!localFile.exists())
      localFile.mkdirs();
    return str;
  }

  public static String c(int paramInt)
  {
    String str = null;
    switch (paramInt)
    {
    default:
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      return str;
      str = "DROP";
      continue;
      str = "ACCEPT";
      continue;
      str = "NFQUEUE";
    }
  }

  public static String c(long paramLong)
  {
    int i = 0;
    long l = 999L;
    int j;
    if (paramLong < 0L)
    {
      j = 1;
      paramLong *= -1L;
    }
    while (true)
      if (paramLong / l > 0L)
      {
        i++;
        l *= 1000L;
      }
      else
      {
        DecimalFormat localDecimalFormat = new DecimalFormat("###.#");
        String str1;
        switch (i)
        {
        default:
          str1 = null;
          if (j == 0)
            break;
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        }
        for (String str2 = "-" + str1; ; str2 = str1)
        {
          return str2;
          str1 = "0K";
          break;
          str1 = paramLong / 1024L + "K";
          break;
          str1 = localDecimalFormat.format(10.0D * paramLong / 1048576.0D / 10.0D) + "M";
          break;
          str1 = localDecimalFormat.format(10.0D * paramLong / 1073741824.0D / 10.0D) + "G";
          break;
          str1 = localDecimalFormat.format(10.0D * paramLong / 1099511627776.0D / 10.0D) + "T";
          break;
        }
        j = 0;
        i = 0;
      }
  }

  public static RSAPublicKey c(byte[] paramArrayOfByte)
  {
    try
    {
      localRSAPublicKey = (RSAPublicKey)X509Certificate.getInstance(paramArrayOfByte).getPublicKey();
      return localRSAPublicKey;
    }
    catch (CertificateException localCertificateException)
    {
      while (true)
      {
        localCertificateException.printStackTrace();
        RSAPublicKey localRSAPublicKey = null;
      }
    }
  }

  // ERROR //
  public static ArrayList<JSONObject> c(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 650	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 651	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: new 1980	java/io/FileInputStream
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 1981	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   16: astore_3
    //   17: aload_3
    //   18: invokevirtual 1984	java/io/FileInputStream:available	()I
    //   21: newarray byte
    //   23: astore 22
    //   25: aload_3
    //   26: aload 22
    //   28: invokevirtual 1985	java/io/FileInputStream:read	([B)I
    //   31: pop
    //   32: invokestatic 519	com/tencent/qqpimsecure/service/QQPimApplication:a	()Landroid/content/Context;
    //   35: astore 24
    //   37: aload_1
    //   38: ifnull +114 -> 152
    //   41: aload_1
    //   42: invokevirtual 1519	java/lang/String:getBytes	()[B
    //   45: astore 25
    //   47: new 1987	java/io/ByteArrayInputStream
    //   50: dup
    //   51: aload 24
    //   53: aload 22
    //   55: aload 25
    //   57: invokestatic 1990	com/tencent/tccdb/TccCryptor:decrypt	(Landroid/content/Context;[B[B)[B
    //   60: invokespecial 1992	java/io/ByteArrayInputStream:<init>	([B)V
    //   63: astore 8
    //   65: new 1994	java/io/BufferedReader
    //   68: dup
    //   69: new 1996	java/io/InputStreamReader
    //   72: dup
    //   73: aload 8
    //   75: invokespecial 1999	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   78: invokespecial 2002	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   81: astore 26
    //   83: new 1757	java/lang/StringBuffer
    //   86: dup
    //   87: invokespecial 1758	java/lang/StringBuffer:<init>	()V
    //   90: astore 27
    //   92: aload 26
    //   94: invokevirtual 2005	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   97: astore 28
    //   99: aload 28
    //   101: ifnull +57 -> 158
    //   104: aload 27
    //   106: aload 28
    //   108: invokevirtual 1781	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   111: pop
    //   112: goto -20 -> 92
    //   115: astore 4
    //   117: aload 8
    //   119: astore 6
    //   121: aload_3
    //   122: astore 5
    //   124: aload 4
    //   126: invokevirtual 1510	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   129: pop
    //   130: aload 5
    //   132: ifnull +8 -> 140
    //   135: aload 5
    //   137: invokevirtual 596	java/io/InputStream:close	()V
    //   140: aload 6
    //   142: ifnull +8 -> 150
    //   145: aload 6
    //   147: invokevirtual 596	java/io/InputStream:close	()V
    //   150: aload_2
    //   151: areturn
    //   152: aconst_null
    //   153: astore 25
    //   155: goto -108 -> 47
    //   158: new 1500	org/json/JSONArray
    //   161: dup
    //   162: aload 27
    //   164: invokevirtual 1785	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   167: invokespecial 2006	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   170: astore 29
    //   172: iconst_0
    //   173: istore 30
    //   175: iload 30
    //   177: aload 29
    //   179: invokevirtual 2007	org/json/JSONArray:length	()I
    //   182: if_icmpge +24 -> 206
    //   185: aload_2
    //   186: aload 29
    //   188: iload 30
    //   190: invokevirtual 2008	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   193: checkcast 1846	org/json/JSONObject
    //   196: invokevirtual 681	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   199: pop
    //   200: iinc 30 1
    //   203: goto -28 -> 175
    //   206: aload_3
    //   207: invokevirtual 596	java/io/InputStream:close	()V
    //   210: aload 8
    //   212: invokevirtual 596	java/io/InputStream:close	()V
    //   215: goto -65 -> 150
    //   218: astore 32
    //   220: goto -70 -> 150
    //   223: astore 14
    //   225: aconst_null
    //   226: astore 8
    //   228: aconst_null
    //   229: astore_3
    //   230: aload 14
    //   232: invokevirtual 1529	java/io/IOException:getMessage	()Ljava/lang/String;
    //   235: pop
    //   236: aload_3
    //   237: ifnull +7 -> 244
    //   240: aload_3
    //   241: invokevirtual 596	java/io/InputStream:close	()V
    //   244: aload 8
    //   246: ifnull -96 -> 150
    //   249: aload 8
    //   251: invokevirtual 596	java/io/InputStream:close	()V
    //   254: goto -104 -> 150
    //   257: astore 16
    //   259: goto -109 -> 150
    //   262: astore 18
    //   264: aconst_null
    //   265: astore 8
    //   267: aconst_null
    //   268: astore_3
    //   269: aload 18
    //   271: invokevirtual 1166	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   274: pop
    //   275: aload_3
    //   276: ifnull +7 -> 283
    //   279: aload_3
    //   280: invokevirtual 596	java/io/InputStream:close	()V
    //   283: aload 8
    //   285: ifnull -135 -> 150
    //   288: aload 8
    //   290: invokevirtual 596	java/io/InputStream:close	()V
    //   293: goto -143 -> 150
    //   296: astore 20
    //   298: goto -148 -> 150
    //   301: astore 7
    //   303: aconst_null
    //   304: astore 8
    //   306: aconst_null
    //   307: astore_3
    //   308: aload_3
    //   309: ifnull +7 -> 316
    //   312: aload_3
    //   313: invokevirtual 596	java/io/InputStream:close	()V
    //   316: aload 8
    //   318: ifnull +8 -> 326
    //   321: aload 8
    //   323: invokevirtual 596	java/io/InputStream:close	()V
    //   326: aload 7
    //   328: athrow
    //   329: astore 31
    //   331: goto -121 -> 210
    //   334: astore 13
    //   336: goto -196 -> 140
    //   339: astore 12
    //   341: goto -191 -> 150
    //   344: astore 17
    //   346: goto -102 -> 244
    //   349: astore 21
    //   351: goto -68 -> 283
    //   354: astore 10
    //   356: goto -40 -> 316
    //   359: astore 9
    //   361: goto -35 -> 326
    //   364: astore 7
    //   366: aconst_null
    //   367: astore 8
    //   369: goto -61 -> 308
    //   372: astore 7
    //   374: goto -66 -> 308
    //   377: astore 7
    //   379: aload 5
    //   381: astore_3
    //   382: aload 6
    //   384: astore 8
    //   386: goto -78 -> 308
    //   389: astore 18
    //   391: aconst_null
    //   392: astore 8
    //   394: goto -125 -> 269
    //   397: astore 18
    //   399: goto -130 -> 269
    //   402: astore 14
    //   404: aconst_null
    //   405: astore 8
    //   407: goto -177 -> 230
    //   410: astore 14
    //   412: goto -182 -> 230
    //   415: astore 4
    //   417: aconst_null
    //   418: astore 6
    //   420: aconst_null
    //   421: astore 5
    //   423: goto -299 -> 124
    //   426: astore 4
    //   428: aload_3
    //   429: astore 5
    //   431: aconst_null
    //   432: astore 6
    //   434: goto -310 -> 124
    //
    // Exception table:
    //   from	to	target	type
    //   65	112	115	java/io/FileNotFoundException
    //   158	200	115	java/io/FileNotFoundException
    //   210	215	218	java/io/IOException
    //   8	17	223	java/io/IOException
    //   249	254	257	java/io/IOException
    //   8	17	262	java/lang/Exception
    //   288	293	296	java/io/IOException
    //   8	17	301	finally
    //   206	210	329	java/io/IOException
    //   135	140	334	java/io/IOException
    //   145	150	339	java/io/IOException
    //   240	244	344	java/io/IOException
    //   279	283	349	java/io/IOException
    //   312	316	354	java/io/IOException
    //   321	326	359	java/io/IOException
    //   17	65	364	finally
    //   65	112	372	finally
    //   158	200	372	finally
    //   230	236	372	finally
    //   269	275	372	finally
    //   124	130	377	finally
    //   17	65	389	java/lang/Exception
    //   65	112	397	java/lang/Exception
    //   158	200	397	java/lang/Exception
    //   17	65	402	java/io/IOException
    //   65	112	410	java/io/IOException
    //   158	200	410	java/io/IOException
    //   8	17	415	java/io/FileNotFoundException
    //   17	65	426	java/io/FileNotFoundException
  }

  public static List<kw> c(List<kv> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0));
    ArrayList localArrayList;
    for (Object localObject = new ArrayList(0); ; localObject = localArrayList)
    {
      return localObject;
      localArrayList = new ArrayList(paramList.size());
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
        localArrayList.add(((kv)localIterator.next()).d);
    }
  }

  public static void c(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, CameraCaptureActivity.class);
    localIntent.putExtra("CameraCaptureAction", "CameraCaptureActionInit");
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public static void c(Menu paramMenu)
  {
    if (paramMenu.findItem(44) == null)
      paramMenu.add(0, 44, 4, QQPimApplication.a().getResources().getString(2131428658)).setIcon(2130838020);
  }

  // ERROR //
  public static boolean c(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 1652	android/content/Context:getCacheDir	()Ljava/io/File;
    //   4: invokevirtual 549	java/io/File:toString	()Ljava/lang/String;
    //   7: astore 24
    //   9: aload 24
    //   11: ldc_w 1485
    //   14: invokevirtual 1655	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   17: iconst_1
    //   18: if_icmpne +19 -> 37
    //   21: aload 24
    //   23: iconst_0
    //   24: bipush 254
    //   26: aload 24
    //   28: invokevirtual 1638	java/lang/String:length	()I
    //   31: iadd
    //   32: invokevirtual 1658	java/lang/String:substring	(II)Ljava/lang/String;
    //   35: astore 24
    //   37: aload 24
    //   39: bipush 47
    //   41: invokevirtual 1660	java/lang/String:lastIndexOf	(I)I
    //   44: istore 25
    //   46: iload 25
    //   48: iconst_m1
    //   49: if_icmpeq +395 -> 444
    //   52: aload 24
    //   54: iconst_0
    //   55: iload 25
    //   57: invokevirtual 1658	java/lang/String:substring	(II)Ljava/lang/String;
    //   60: astore 26
    //   62: new 525	java/lang/StringBuilder
    //   65: dup
    //   66: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   69: aload 26
    //   71: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: ldc_w 1662
    //   77: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   83: astore 27
    //   85: aload 27
    //   87: astore_3
    //   88: aload_3
    //   89: invokevirtual 1638	java/lang/String:length	()I
    //   92: ifeq +505 -> 597
    //   95: new 548	java/io/File
    //   98: dup
    //   99: new 525	java/lang/StringBuilder
    //   102: dup
    //   103: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   106: aload_3
    //   107: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: aload_1
    //   111: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   120: invokevirtual 556	java/io/File:exists	()Z
    //   123: ifeq +382 -> 505
    //   126: new 525	java/lang/StringBuilder
    //   129: dup
    //   130: ldc_w 2012
    //   133: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   136: aload_3
    //   137: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: aload_1
    //   141: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: pop
    //   148: new 525	java/lang/StringBuilder
    //   151: dup
    //   152: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   155: aload_3
    //   156: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload_1
    //   160: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: invokestatic 1671	java/lang/System:load	(Ljava/lang/String;)V
    //   169: iconst_1
    //   170: istore 8
    //   172: iload 8
    //   174: ifne +480 -> 654
    //   177: aload_1
    //   178: ldc_w 1673
    //   181: invokevirtual 1655	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   184: ifne +470 -> 654
    //   187: new 525	java/lang/StringBuilder
    //   190: dup
    //   191: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   194: aload_1
    //   195: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: ldc_w 1673
    //   201: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   207: astore 9
    //   209: new 548	java/io/File
    //   212: dup
    //   213: new 525	java/lang/StringBuilder
    //   216: dup
    //   217: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   220: aload_3
    //   221: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: aload 9
    //   226: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   232: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   235: invokevirtual 556	java/io/File:exists	()Z
    //   238: ifeq +51 -> 289
    //   241: new 525	java/lang/StringBuilder
    //   244: dup
    //   245: ldc_w 2012
    //   248: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   251: aload_3
    //   252: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: aload 9
    //   257: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   263: pop
    //   264: new 525	java/lang/StringBuilder
    //   267: dup
    //   268: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   271: aload_3
    //   272: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: aload 9
    //   277: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   283: invokestatic 1671	java/lang/System:load	(Ljava/lang/String;)V
    //   286: iconst_1
    //   287: istore 8
    //   289: iload 8
    //   291: ifne +273 -> 564
    //   294: aload 9
    //   296: ldc_w 1675
    //   299: invokevirtual 1634	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   302: ifne +262 -> 564
    //   305: new 525	java/lang/StringBuilder
    //   308: dup
    //   309: ldc_w 1675
    //   312: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   315: aload 9
    //   317: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   320: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   323: astore 14
    //   325: new 548	java/io/File
    //   328: dup
    //   329: new 525	java/lang/StringBuilder
    //   332: dup
    //   333: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   336: aload_3
    //   337: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   340: aload 14
    //   342: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   348: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   351: invokevirtual 556	java/io/File:exists	()Z
    //   354: ifeq +210 -> 564
    //   357: new 525	java/lang/StringBuilder
    //   360: dup
    //   361: ldc_w 2012
    //   364: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   367: aload_3
    //   368: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: aload 14
    //   373: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   379: pop
    //   380: new 525	java/lang/StringBuilder
    //   383: dup
    //   384: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   387: aload_3
    //   388: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   391: aload 14
    //   393: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   396: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   399: invokestatic 1671	java/lang/System:load	(Ljava/lang/String;)V
    //   402: iconst_1
    //   403: istore 10
    //   405: iload 10
    //   407: ifne +31 -> 438
    //   410: new 525	java/lang/StringBuilder
    //   413: dup
    //   414: ldc_w 2012
    //   417: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   420: aload_1
    //   421: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   424: ldc_w 1677
    //   427: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   430: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   433: pop
    //   434: aload_1
    //   435: invokestatic 1680	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   438: iconst_1
    //   439: istore 6
    //   441: iload 6
    //   443: ireturn
    //   444: ldc 253
    //   446: astore_3
    //   447: goto -359 -> 88
    //   450: astore_2
    //   451: new 525	java/lang/StringBuilder
    //   454: dup
    //   455: ldc_w 1682
    //   458: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   461: aload_0
    //   462: invokevirtual 148	android/content/Context:getPackageName	()Ljava/lang/String;
    //   465: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   468: ldc_w 1662
    //   471: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   474: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   477: astore_3
    //   478: goto -390 -> 88
    //   481: astore 21
    //   483: new 525	java/lang/StringBuilder
    //   486: dup
    //   487: ldc_w 2014
    //   490: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   493: aload_3
    //   494: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: aload_1
    //   498: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   504: pop
    //   505: iconst_0
    //   506: istore 8
    //   508: goto -336 -> 172
    //   511: astore 18
    //   513: new 525	java/lang/StringBuilder
    //   516: dup
    //   517: ldc_w 2014
    //   520: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   523: aload_3
    //   524: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   527: aload 9
    //   529: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   532: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   535: pop
    //   536: goto -247 -> 289
    //   539: astore 15
    //   541: new 525	java/lang/StringBuilder
    //   544: dup
    //   545: ldc_w 2014
    //   548: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   551: aload_3
    //   552: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   555: aload 14
    //   557: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   560: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   563: pop
    //   564: iload 8
    //   566: istore 10
    //   568: goto -163 -> 405
    //   571: astore 11
    //   573: new 525	java/lang/StringBuilder
    //   576: dup
    //   577: ldc_w 2014
    //   580: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   583: aload_1
    //   584: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   587: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   590: pop
    //   591: iconst_0
    //   592: istore 6
    //   594: goto -153 -> 441
    //   597: new 525	java/lang/StringBuilder
    //   600: dup
    //   601: ldc_w 2012
    //   604: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   607: aload_1
    //   608: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   611: ldc_w 1677
    //   614: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   617: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   620: pop
    //   621: aload_1
    //   622: invokestatic 1680	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   625: goto -187 -> 438
    //   628: astore 4
    //   630: new 525	java/lang/StringBuilder
    //   633: dup
    //   634: ldc_w 2014
    //   637: invokespecial 635	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   640: aload_1
    //   641: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   644: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   647: pop
    //   648: iconst_0
    //   649: istore 6
    //   651: goto -210 -> 441
    //   654: aload_1
    //   655: astore 9
    //   657: goto -368 -> 289
    //
    // Exception table:
    //   from	to	target	type
    //   0	85	450	java/lang/Exception
    //   126	169	481	java/lang/UnsatisfiedLinkError
    //   241	286	511	java/lang/UnsatisfiedLinkError
    //   357	402	539	java/lang/UnsatisfiedLinkError
    //   410	438	571	java/lang/UnsatisfiedLinkError
    //   597	625	628	java/lang/UnsatisfiedLinkError
  }

  public static byte[] c(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = f(paramArrayOfByte2);
    if ((paramArrayOfByte1 == null) || (arrayOfByte == null) || (paramArrayOfByte1.length == 0));
    while (true)
    {
      return paramArrayOfByte1;
      if ((paramArrayOfByte1.length % 4 != 0) || (paramArrayOfByte1.length < 8))
      {
        paramArrayOfByte1 = null;
      }
      else
      {
        int[] arrayOfInt1 = new int[paramArrayOfByte1.length >>> 2];
        a(paramArrayOfByte1, arrayOfInt1);
        int i;
        label64: int[] arrayOfInt2;
        if (arrayOfByte.length % 4 == 0)
        {
          i = arrayOfByte.length >>> 2;
          if (i < 4)
            i = 4;
          arrayOfInt2 = new int[i];
        }
        int k;
        int n;
        int i1;
        int i8;
        for (int j = 0; ; j++)
        {
          if (j >= i)
          {
            a(arrayOfByte, arrayOfInt2);
            k = -1 + arrayOfInt1.length;
            int m = arrayOfInt1[0];
            n = -1640531527 * (6 + 52 / (k + 1));
            i1 = m;
            if (n != 0)
              break label183;
            i8 = arrayOfInt1[(-1 + arrayOfInt1.length)];
            if ((i8 >= 0) && (i8 <= -1 + arrayOfInt1.length << 2))
              break label339;
            paramArrayOfByte1 = null;
            break;
            i = 1 + (arrayOfByte.length >>> 2);
            break label64;
          }
          arrayOfInt2[j] = 0;
        }
        label183: int i2 = 0x3 & n >>> 2;
        int i3 = i1;
        for (int i4 = k; ; i4--)
        {
          if (i4 <= 0)
          {
            int i6 = arrayOfInt1[k];
            int i7 = arrayOfInt1[0] - ((i6 >>> 5 ^ i3 << 2) + (i3 >>> 3 ^ i6 << 4) ^ (i3 ^ n) + (i6 ^ arrayOfInt2[(i2 ^ i4 & 0x3)]));
            arrayOfInt1[0] = i7;
            n -= 31161;
            i1 = i7;
            break;
          }
          int i5 = arrayOfInt1[(i4 - 1)];
          i3 = arrayOfInt1[i4] - ((i5 >>> 5 ^ i3 << 2) + (i3 >>> 3 ^ i5 << 4) ^ (i3 ^ n) + (i5 ^ arrayOfInt2[(i2 ^ i4 & 0x3)]));
          arrayOfInt1[i4] = i3;
        }
        label339: paramArrayOfByte1 = new byte[i8];
        a(arrayOfInt1, -1 + arrayOfInt1.length, paramArrayOfByte1);
      }
    }
  }

  public static Bitmap d(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    int i = paramContext.getResources().getConfiguration().orientation;
    int j = localDisplayMetrics.widthPixels;
    int k = localDisplayMetrics.heightPixels;
    if (i == 2);
    while (true)
    {
      ScreenShot.ByteBufferWrap localByteBufferWrap = ScreenShot.createByteBufferWrap(ByteBuffer.allocateDirect(k * j << 2));
      int n = localByteBufferWrap.getAddress();
      Bitmap localBitmap;
      int i1;
      if (n > 0)
      {
        ScriptHelper.runScriptAsRoot(new String[] { "chmod 777 /dev/graphics/fb0" });
        if (ScreenShot.snapScreen(n, k * j) > 0)
        {
          localBitmap = Bitmap.createBitmap(k, j, Bitmap.Config.ARGB_8888);
          localBitmap.copyPixelsFromBuffer(localByteBufferWrap.bytebuffer());
          i1 = 0;
          if (i1 < 4)
            if (localByteBufferWrap.bytebuffer().get(i1) == 0);
        }
      }
      while (true)
      {
        return localBitmap;
        i1++;
        break;
        localBitmap = null;
      }
      int m = j;
      j = k;
      k = m;
    }
  }

  public static String d(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramArrayOfByte.length);
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte.length)
        return localStringBuffer.toString();
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() < 2)
        localStringBuffer.append(0);
      localStringBuffer.append(str.toUpperCase());
    }
  }

  public static List<la> d(List<CategoryEx> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      CategoryEx localCategoryEx = (CategoryEx)localIterator1.next();
      Category localCategory = localCategoryEx.category;
      la localla = new la();
      localla.a(localCategory.getId());
      localla.b(localCategory.getName());
      localla.b(localCategory.getCount());
      localla.a(localCategory.getIcon());
      if (localCategory.getVecSubtitle() != null)
      {
        Iterator localIterator2 = localCategory.getVecSubtitle().iterator();
        String str2;
        for (String str1 = ""; localIterator2.hasNext(); str1 = str1 + str2 + ",")
          str2 = (String)localIterator2.next();
        localla.c(str1.substring(0, -1 + str1.length()));
      }
      localla.a(localCategoryEx.expand.updatetime);
      localla.e(localCategoryEx.expand.ispush);
      localArrayList.add(localla);
    }
    return localArrayList;
  }

  public static void d()
  {
    ho localho = ho.a();
    String str = localho.n();
    if ((str != null) && (!str.equals("")));
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
        localho.c("");
      return;
    }
  }

  public static void d(Menu paramMenu)
  {
    if (paramMenu.findItem(54) == null)
      paramMenu.add(0, 54, 2, QQPimApplication.a().getResources().getString(2131428119)).setIcon(2130838012);
  }

  // ERROR //
  private static boolean d(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: iconst_1
    //   3: istore_3
    //   4: new 548	java/io/File
    //   7: dup
    //   8: new 525	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 526	java/lang/StringBuilder:<init>	()V
    //   15: invokestatic 2134	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   18: invokevirtual 546	android/content/Context:getFilesDir	()Ljava/io/File;
    //   21: invokevirtual 2137	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   24: getstatic 552	java/io/File:separator	Ljava/lang/String;
    //   27: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: aload_1
    //   31: invokevirtual 534	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 535	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: invokespecial 553	java/io/File:<init>	(Ljava/lang/String;)V
    //   40: astore 4
    //   42: aload 4
    //   44: invokevirtual 556	java/io/File:exists	()Z
    //   47: ifne +5 -> 52
    //   50: iload_3
    //   51: ireturn
    //   52: aload_0
    //   53: invokevirtual 568	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   56: invokevirtual 574	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   59: aload_1
    //   60: iconst_1
    //   61: invokevirtual 580	android/content/res/AssetManager:open	(Ljava/lang/String;I)Ljava/io/InputStream;
    //   64: astore 18
    //   66: aload 18
    //   68: astore 6
    //   70: aload 6
    //   72: invokestatic 2139	a:b	(Ljava/io/InputStream;)Lfh;
    //   75: getfield 1806	fh:a	I
    //   78: istore 19
    //   80: aload 6
    //   82: ifnull +246 -> 328
    //   85: aload 6
    //   87: invokevirtual 596	java/io/InputStream:close	()V
    //   90: iload 19
    //   92: istore 9
    //   94: iload 9
    //   96: ifne +89 -> 185
    //   99: iconst_0
    //   100: istore_3
    //   101: goto -51 -> 50
    //   104: astore 20
    //   106: aload 20
    //   108: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   111: iload 19
    //   113: istore 9
    //   115: goto -21 -> 94
    //   118: astore 8
    //   120: aconst_null
    //   121: astore 6
    //   123: aload 8
    //   125: invokevirtual 68	java/lang/Exception:printStackTrace	()V
    //   128: aload 6
    //   130: ifnull +192 -> 322
    //   133: aload 6
    //   135: invokevirtual 596	java/io/InputStream:close	()V
    //   138: iconst_0
    //   139: istore 9
    //   141: goto -47 -> 94
    //   144: astore 17
    //   146: aload 17
    //   148: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   151: iconst_0
    //   152: istore 9
    //   154: goto -60 -> 94
    //   157: astore 5
    //   159: aconst_null
    //   160: astore 6
    //   162: aload 6
    //   164: ifnull +8 -> 172
    //   167: aload 6
    //   169: invokevirtual 596	java/io/InputStream:close	()V
    //   172: aload 5
    //   174: athrow
    //   175: astore 7
    //   177: aload 7
    //   179: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   182: goto -10 -> 172
    //   185: new 1980	java/io/FileInputStream
    //   188: dup
    //   189: aload 4
    //   191: invokespecial 2140	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   194: astore 10
    //   196: aload 10
    //   198: invokestatic 2139	a:b	(Ljava/io/InputStream;)Lfh;
    //   201: getfield 1806	fh:a	I
    //   204: istore 14
    //   206: aload 10
    //   208: invokevirtual 2141	java/io/FileInputStream:close	()V
    //   211: iload 9
    //   213: iload 14
    //   215: if_icmpgt -165 -> 50
    //   218: iconst_0
    //   219: istore_3
    //   220: goto -170 -> 50
    //   223: astore 16
    //   225: aload 16
    //   227: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   230: goto -19 -> 211
    //   233: astore 11
    //   235: aload 11
    //   237: invokevirtual 68	java/lang/Exception:printStackTrace	()V
    //   240: aload_2
    //   241: ifnull +75 -> 316
    //   244: aload_2
    //   245: invokevirtual 2141	java/io/FileInputStream:close	()V
    //   248: iconst_0
    //   249: istore 14
    //   251: goto -40 -> 211
    //   254: astore 15
    //   256: aload 15
    //   258: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   261: iconst_0
    //   262: istore 14
    //   264: goto -53 -> 211
    //   267: astore 12
    //   269: aload_2
    //   270: ifnull +7 -> 277
    //   273: aload_2
    //   274: invokevirtual 2141	java/io/FileInputStream:close	()V
    //   277: aload 12
    //   279: athrow
    //   280: astore 13
    //   282: aload 13
    //   284: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   287: goto -10 -> 277
    //   290: astore 12
    //   292: aload 10
    //   294: astore_2
    //   295: goto -26 -> 269
    //   298: astore 11
    //   300: aload 10
    //   302: astore_2
    //   303: goto -68 -> 235
    //   306: astore 5
    //   308: goto -146 -> 162
    //   311: astore 8
    //   313: goto -190 -> 123
    //   316: iconst_0
    //   317: istore 14
    //   319: goto -108 -> 211
    //   322: iconst_0
    //   323: istore 9
    //   325: goto -231 -> 94
    //   328: iload 19
    //   330: istore 9
    //   332: goto -238 -> 94
    //
    // Exception table:
    //   from	to	target	type
    //   85	90	104	java/io/IOException
    //   52	66	118	java/lang/Exception
    //   133	138	144	java/io/IOException
    //   52	66	157	finally
    //   167	172	175	java/io/IOException
    //   206	211	223	java/io/IOException
    //   185	196	233	java/lang/Exception
    //   244	248	254	java/io/IOException
    //   185	196	267	finally
    //   235	240	267	finally
    //   273	277	280	java/io/IOException
    //   196	206	290	finally
    //   196	206	298	java/lang/Exception
    //   70	80	306	finally
    //   123	128	306	finally
    //   70	80	311	java/lang/Exception
  }

  public static boolean d(String paramString)
  {
    File localFile1 = new File(paramString);
    boolean bool1 = localFile1.exists();
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      if (localFile1.isFile())
      {
        File localFile2 = new File(paramString);
        boolean bool3 = localFile2.isFile();
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = localFile2.exists();
          bool2 = false;
          if (bool4)
            bool2 = localFile2.delete();
        }
      }
      else
      {
        bool2 = e(paramString);
      }
    }
  }

  public static boolean d(String paramString1, String paramString2)
  {
    boolean bool1 = true;
    jj localjj = new jj();
    String[] arrayOfString = new String[bool1];
    arrayOfString[0] = paramString1;
    mg localmg = localjj.a("privacy_secret_info", "Module=?", arrayOfString, "Module ASC");
    if (localmg == null);
    label93: 
    while (true)
    {
      return bool1;
      String str = localmg.a();
      if ((str != null) && (!str.equals("")));
      for (boolean bool2 = bool1; ; bool2 = false)
      {
        if ((!bool2) || (paramString2.equals(str)))
          break label93;
        bool1 = false;
        break;
      }
    }
  }

  public static byte[] d(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    arrayOfByte[0] = ((byte)paramInt);
    arrayOfByte[1] = ((byte)(paramInt >> 8));
    arrayOfByte[2] = ((byte)(paramInt >> 16));
    arrayOfByte[3] = ((byte)(paramInt >> 24));
    return arrayOfByte;
  }

  public static int e(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    int j = 0;
    if (i != 4);
    while (true)
    {
      return j;
      j = 0xFF & paramArrayOfByte[0] | (0xFF & paramArrayOfByte[1]) << 8 | (0xFF & paramArrayOfByte[2]) << 16 | (0xFF & paramArrayOfByte[3]) << 24;
    }
  }

  public static long e(List<File> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      for (l = 0L; localIterator.hasNext(); l += ((File)localIterator.next()).length());
    }
    long l = 0L;
    return l;
  }

  private static BitmapFactory.Options e()
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
    localOptions.inPurgeable = true;
    localOptions.inInputShareable = true;
    localOptions.inTargetDensity = QQPimApplication.a().getResources().getDisplayMetrics().densityDpi;
    return localOptions;
  }

  public static void e(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, HelpActivity.class);
    localIntent.putExtra("title", 2131429007);
    localIntent.putExtra("info", 2131429009);
    paramContext.startActivity(localIntent);
  }

  public static void e(Menu paramMenu)
  {
    if (paramMenu.findItem(17) == null)
      paramMenu.add(0, 17, 2, QQPimApplication.a().getResources().getString(2131428662)).setIcon(2130838007);
  }

  public static boolean e(String paramString)
  {
    if (!paramString.endsWith(File.separator))
      paramString = paramString + File.separator;
    File localFile1 = new File(paramString);
    boolean bool1 = localFile1.exists();
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = localFile1.isDirectory();
      bool2 = false;
      if (bool3);
    }
    else
    {
      return bool2;
    }
    File[] arrayOfFile = localFile1.listFiles();
    int i = 0;
    boolean bool4 = true;
    while (true)
    {
      if (i < arrayOfFile.length)
      {
        if (!arrayOfFile[i].isFile())
          break label173;
        File localFile2 = new File(arrayOfFile[i].getAbsolutePath());
        if ((!localFile2.isFile()) || (!localFile2.exists()))
          break label167;
        bool4 = localFile2.delete();
        label137: if (bool4)
          break label191;
      }
      label167: label173: 
      do
      {
        bool2 = false;
        if (!bool4)
          break;
        boolean bool5 = localFile1.delete();
        bool2 = false;
        if (!bool5)
          break;
        bool2 = true;
        break;
        bool4 = false;
        break label137;
        bool4 = e(arrayOfFile[i].getAbsolutePath());
      }
      while (!bool4);
      label191: i++;
    }
  }

  private static boolean e(String paramString1, String paramString2)
  {
    boolean bool = false;
    File localFile1 = new File(paramString1);
    File localFile2 = new File(paramString2);
    if (localFile2.exists())
      new StringBuilder().append(paramString1).append(" move failed with target already exist").toString();
    while (true)
    {
      return bool;
      if (localFile1.renameTo(localFile2))
      {
        new StringBuilder().append(paramString1).append(" renameTo ").append(paramString2).append(" OK").toString();
        bool = true;
      }
      else
      {
        new StringBuilder().append(paramString1).append(" renameTo ").append(paramString2).append(" failed").toString();
        bool = false;
      }
    }
  }

  public static void f(Context paramContext)
  {
    b(paramContext, SecureService.class);
    b(paramContext, ConnectionDetector.class);
    b(paramContext, BlueToothReceiver.class);
    b(paramContext, InOutCallReceiver.class);
    b(paramContext, BatteryEventReceiver.class);
    b(paramContext, TimedTaskReceiver.class);
    b(paramContext, FastBootReceiver.class);
    b(paramContext, MMSReceiver.class);
    b(paramContext, NetWorkEventReceiver.class);
    b(paramContext, NetworkStateChangeReceiver.class);
    b(paramContext, ScreenEventReceiver.class);
    b(paramContext, TMSBootReceiver.class);
    b(paramContext, RootBroadcast.class);
    b(paramContext, UssdBlockedReceiver.class);
    b(paramContext, WidgetUpdateBoradcastReceiver.class);
    b(paramContext, ConnectionDetector.class);
    b(paramContext, NetSetWidgetProvider.class);
    b(paramContext, TaskManagerWidgetProvider.class);
    b(paramContext, OperatorDataSyncTaskReceiver.class);
    b(paramContext, BootReceiver.class);
  }

  // ERROR //
  public static boolean f(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 1980	java/io/FileInputStream
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 1981	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   10: astore_2
    //   11: new 2246	java/util/zip/ZipInputStream
    //   14: dup
    //   15: new 2248	java/io/BufferedInputStream
    //   18: dup
    //   19: aload_2
    //   20: invokespecial 2249	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   23: invokespecial 2250	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   26: astore_3
    //   27: aload_3
    //   28: invokevirtual 2254	java/util/zip/ZipInputStream:getNextEntry	()Ljava/util/zip/ZipEntry;
    //   31: ifnull +54 -> 85
    //   34: aload_3
    //   35: sipush 8192
    //   38: newarray byte
    //   40: iconst_0
    //   41: sipush 8192
    //   44: invokevirtual 2257	java/util/zip/ZipInputStream:read	([BII)I
    //   47: pop
    //   48: goto -21 -> 27
    //   51: astore 7
    //   53: aload_2
    //   54: astore 8
    //   56: aload 7
    //   58: invokevirtual 68	java/lang/Exception:printStackTrace	()V
    //   61: aload 8
    //   63: ifnull +8 -> 71
    //   66: aload 8
    //   68: invokevirtual 2141	java/io/FileInputStream:close	()V
    //   71: iconst_0
    //   72: istore 9
    //   74: aload_3
    //   75: ifnull +7 -> 82
    //   78: aload_3
    //   79: invokevirtual 2258	java/util/zip/ZipInputStream:close	()V
    //   82: iload 9
    //   84: ireturn
    //   85: aload_2
    //   86: invokevirtual 2141	java/io/FileInputStream:close	()V
    //   89: aload_3
    //   90: invokevirtual 2258	java/util/zip/ZipInputStream:close	()V
    //   93: iconst_1
    //   94: istore 9
    //   96: goto -14 -> 82
    //   99: astore 12
    //   101: aload 12
    //   103: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   106: goto -17 -> 89
    //   109: astore 13
    //   111: aload 13
    //   113: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   116: goto -23 -> 93
    //   119: astore 11
    //   121: aload 11
    //   123: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   126: goto -55 -> 71
    //   129: astore 10
    //   131: aload 10
    //   133: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   136: iconst_0
    //   137: istore 9
    //   139: goto -57 -> 82
    //   142: astore 4
    //   144: aconst_null
    //   145: astore_2
    //   146: aload_2
    //   147: ifnull +7 -> 154
    //   150: aload_2
    //   151: invokevirtual 2141	java/io/FileInputStream:close	()V
    //   154: aload_1
    //   155: ifnull +7 -> 162
    //   158: aload_1
    //   159: invokevirtual 2258	java/util/zip/ZipInputStream:close	()V
    //   162: aload 4
    //   164: athrow
    //   165: astore 6
    //   167: aload 6
    //   169: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   172: goto -18 -> 154
    //   175: astore 5
    //   177: aload 5
    //   179: invokevirtual 1043	java/io/IOException:printStackTrace	()V
    //   182: goto -20 -> 162
    //   185: astore 4
    //   187: aconst_null
    //   188: astore_1
    //   189: goto -43 -> 146
    //   192: astore 4
    //   194: aload_3
    //   195: astore_1
    //   196: goto -50 -> 146
    //   199: astore 4
    //   201: aload 8
    //   203: astore_2
    //   204: aload_3
    //   205: astore_1
    //   206: goto -60 -> 146
    //   209: astore 7
    //   211: aconst_null
    //   212: astore_3
    //   213: aconst_null
    //   214: astore 8
    //   216: goto -160 -> 56
    //   219: astore 7
    //   221: aload_2
    //   222: astore 8
    //   224: aconst_null
    //   225: astore_3
    //   226: goto -170 -> 56
    //
    // Exception table:
    //   from	to	target	type
    //   27	48	51	java/lang/Exception
    //   85	89	99	java/io/IOException
    //   89	93	109	java/io/IOException
    //   66	71	119	java/io/IOException
    //   78	82	129	java/io/IOException
    //   2	11	142	finally
    //   150	154	165	java/io/IOException
    //   158	162	175	java/io/IOException
    //   11	27	185	finally
    //   27	48	192	finally
    //   56	61	199	finally
    //   2	11	209	java/lang/Exception
    //   11	27	219	java/lang/Exception
  }

  private static boolean f(String paramString1, String paramString2)
  {
    boolean bool1 = true;
    File localFile1 = new File(paramString1);
    File localFile2 = new File(paramString2);
    boolean bool2 = u(paramString2);
    a(localFile2);
    if (!localFile1.exists());
    while (true)
    {
      return bool1;
      if (!bool2)
      {
        bool1 = false;
      }
      else
      {
        ArrayList localArrayList1 = new ArrayList();
        ArrayList localArrayList2 = new ArrayList();
        HashMap localHashMap1 = new HashMap();
        HashMap localHashMap2 = new HashMap();
        AtomicBoolean localAtomicBoolean = new AtomicBoolean();
        if (!a(localFile1, localArrayList1, localArrayList2, localAtomicBoolean))
        {
          bool1 = false;
        }
        else if (localArrayList1.size() == 0)
        {
          if (localAtomicBoolean.get())
          {
            new StringBuilder("safely delete directory ").append(paramString1).append(" with filePathList.size()=0").toString();
            e(paramString1);
          }
        }
        else
        {
          a(localArrayList1, localArrayList2, paramString2, localHashMap1, localHashMap2);
          if (localHashMap1.size() > 0)
          {
            ArrayList localArrayList3 = new ArrayList(localHashMap1.values());
            ArrayList localArrayList4 = new ArrayList(localHashMap2.values());
            AtomicInteger localAtomicInteger = new AtomicInteger();
            if (!a(paramString2, localArrayList3, false, localAtomicInteger))
            {
              localHashMap1.clear();
              localHashMap2.clear();
              a(localArrayList3, localArrayList4, paramString1, localHashMap1, localHashMap2);
              if (localHashMap1.size() != localArrayList3.size())
              {
                new StringBuilder("moveFileList back to ").append(paramString1).append(" mismatch size").toString();
                localHashMap1.toString();
              }
              bool1 = false;
            }
            else
            {
              new StringBuilder("updateDatabase with items:").append(localAtomicInteger.get()).toString();
              if ((localAtomicBoolean.get()) && (localAtomicInteger.get() == localArrayList3.size()))
              {
                new StringBuilder("safely delete directory ").append(paramString1).append("with all updateDatabase.").toString();
                e(paramString1);
              }
              else
              {
                new StringBuilder("directory ").append(paramString1).append(" cann't be deleted!").toString();
              }
            }
          }
          else
          {
            bool1 = false;
          }
        }
      }
    }
  }

  private static byte[] f(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 16));
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      byte[] arrayOfByte = localMessageDigest.digest();
      paramArrayOfByte = arrayOfByte;
      return paramArrayOfByte;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
        paramArrayOfByte = null;
    }
  }

  public static fl g(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    fl localfl;
    if ((localNetworkInfo == null) || ((localNetworkInfo.getState() != NetworkInfo.State.CONNECTING) && (localNetworkInfo.getState() != NetworkInfo.State.CONNECTED)))
      localfl = fl.d;
    while (true)
    {
      return localfl;
      if (localNetworkInfo.getType() == 1)
        localfl = fl.a;
      else if (localNetworkInfo.getType() == 0)
      {
        if ((Proxy.getDefaultHost() != null) || (Proxy.getHost(paramContext) != null))
        {
          Proxy.getDefaultHost();
          localfl = fl.b;
        }
        else
        {
          localfl = fl.c;
        }
      }
      else
        localfl = fl.d;
    }
  }

  public static void g(String paramString)
  {
    long l1 = System.currentTimeMillis();
    ho localho = ho.a();
    String str1 = localho.cd();
    String str2 = localho.ci();
    mg localmg1 = new jj().a("privacy_secret_info", "Module=?", new String[] { paramString }, "Module ASC");
    boolean bool1 = false;
    jj localjj;
    ContentValues localContentValues;
    String str5;
    String str6;
    String str7;
    if (localmg1 == null)
    {
      new StringBuilder("isSecretAllSameWithSD:").append(bool1).toString();
      if (!bool1)
      {
        mg localmg2 = new mg(str1, str2, paramString);
        localjj = new jj();
        localContentValues = new ContentValues();
        localContentValues.clear();
        str5 = localmg2.a();
        str6 = localmg2.b();
        str7 = localmg2.c();
        if (str5 == null)
          break label455;
        label144: localContentValues.put("PP", str5);
        if (str6 == null)
          break label462;
      }
    }
    label295: label455: label462: for (String str8 = str6; ; str8 = "")
    {
      localContentValues.put("PQ", str8);
      localContentValues.put("Module", str7);
      if (localjj.a.b("privacy_secret_info", localContentValues) == -1L)
        localjj.a.b("privacy_secret_info", localContentValues);
      localjj.a.d();
      long l2 = System.currentTimeMillis();
      new StringBuilder().append(paramString).append(" updatePrivacySecretPhoneToSD time:").toString();
      new StringBuilder().append(l2 - l1).toString();
      return;
      String str3 = localmg1.a();
      int i;
      String str4;
      int j;
      if ((str3 != null) && (!str3.equals("")))
      {
        i = 1;
        bool1 = false;
        if (i == 0)
          break;
        boolean bool2 = str1.equals(str3);
        bool1 = false;
        if (!bool2)
          break;
        str4 = localmg1.b();
        if ((str2 == null) || (str2.equals("")))
          break label405;
        j = 1;
        label345: if (j == 0)
          break label417;
        if ((str4 == null) || (str4.equals("")))
          break label411;
      }
      for (int m = 1; ; m = 0)
      {
        bool1 = false;
        if (m == 0)
          break;
        boolean bool3 = str2.equals(str4);
        bool1 = false;
        if (!bool3)
          break;
        bool1 = true;
        break;
        i = 0;
        break label295;
        j = 0;
        break label345;
      }
      if ((str4 != null) && (!str4.equals("")));
      for (int k = 1; ; k = 0)
      {
        bool1 = false;
        if (k != 0)
          break;
        bool1 = true;
        break;
      }
      str5 = "";
      break label144;
    }
  }

  public static String h(String paramString)
  {
    byte[] arrayOfByte = i(paramString);
    StringBuffer localStringBuffer;
    if ((arrayOfByte != null) && (arrayOfByte.length > 0))
    {
      localStringBuffer = new StringBuffer();
      for (int i = 0; i < arrayOfByte.length; i++)
      {
        int j = 0xFF & arrayOfByte[i];
        if (j < 16)
          localStringBuffer.append("0");
        localStringBuffer.append(Integer.toHexString(j));
      }
    }
    for (String str = localStringBuffer.toString(); ; str = "")
      return str;
  }

  public static boolean h(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager != null)
    {
      NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if ((localNetworkInfo == null) || (localNetworkInfo.getState() != NetworkInfo.State.CONNECTED));
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static byte[] i(String paramString)
  {
    try
    {
      byte[] arrayOfByte2 = paramString.getBytes("UTF-8");
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(arrayOfByte2);
      byte[] arrayOfByte3 = localMessageDigest.digest();
      arrayOfByte1 = arrayOfByte3;
      return arrayOfByte1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }

  public static boolean j(String paramString)
  {
    boolean bool = false;
    if (paramString != null)
    {
      int i = paramString.trim().length();
      bool = false;
      if (i >= 3);
    }
    else
    {
      return bool;
    }
    char[] arrayOfChar = { 47, 35, 44, 59, 46, 40, 41, 78, 42 };
    int j = arrayOfChar.length;
    for (int k = 0; ; k++)
    {
      if (k >= j)
      {
        bool = true;
        break;
      }
      int m = paramString.indexOf(arrayOfChar[k]);
      bool = false;
      if (m >= 0)
        break;
    }
  }

  public static int k(String paramString)
  {
    int i = 0;
    String[] arrayOfString = { "+86", "12593", "17909", "17951", "17911", "10193", "12583", "12520", "96688" };
    String str1 = paramString.replaceAll("[ -]", "");
    int j = 0;
    String str2;
    label88: int k;
    int m;
    if (j >= arrayOfString.length)
    {
      str2 = str1;
      if (str2.length() > 8)
        str2 = str2.substring(-8 + str2.length());
      k = str2.length();
      m = 0;
    }
    while (true)
    {
      if (i >= k)
      {
        return m;
        if (str1.startsWith(arrayOfString[j]))
        {
          str2 = str1.substring(arrayOfString[j].length());
          break label88;
        }
        j++;
        break;
      }
      m = 0xF & '￐' + str2.charAt(i) | m << 4;
      i++;
    }
  }

  public static String l(String paramString)
  {
    int i = 0;
    String str1;
    if (paramString == null)
      str1 = null;
    label145: 
    while (true)
    {
      return str1;
      str1 = paramString.replaceAll("[ -]", "");
      String[] arrayOfString = { "+86", "0086", "12593", "17901", "17909", "17951", "17911", "17910", "10193", "12583", "12520", "96688" };
      int j = arrayOfString.length;
      while (true)
      {
        if (i >= j)
          break label145;
        String str2 = arrayOfString[i];
        if (str1.startsWith(str2))
        {
          str1 = str1.substring(str2.length());
          break;
        }
        i++;
      }
    }
  }

  public static boolean m(String paramString)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = ("chmod 755 " + paramString);
    arrayOfString[1] = (paramString + " is-chain-inited");
    String str = ScriptHelper.runScript(arrayOfString);
    boolean bool = false;
    if (str == null);
    while (true)
    {
      return bool;
      bool = str.contains("true");
    }
  }

  public static boolean n(String paramString)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("pm install " + paramString);
      int i = ScriptHelper.runScriptAsRoot(localArrayList);
      if (i == 0)
      {
        bool = true;
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  public static boolean o(String paramString)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("mount -o remount,rw /");
      localArrayList.add("chmod 0777 " + paramString);
      localArrayList.add("rm " + paramString);
      int i = ScriptHelper.runScriptAsRoot(localArrayList);
      File localFile = new File(paramString);
      if (localFile.exists())
        localFile.delete();
      if (i == 0)
      {
        bool = true;
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  public static boolean p(String paramString)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("pm uninstall " + paramString);
      int i = ScriptHelper.runScriptAsRoot(localArrayList);
      if (i == 0)
      {
        bool = true;
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  public static boolean q(String paramString)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("pm disable " + paramString);
      localArrayList.add("pm enable " + paramString);
      int i = ScriptHelper.runScriptAsRoot(localArrayList);
      if (i == 0)
      {
        bool = true;
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  public static boolean r(String paramString)
  {
    boolean bool = true;
    try
    {
      int i = ScriptHelper.runScriptAsRoot(new String[] { paramString });
      if (i == 0)
        return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        bool = false;
      }
    }
  }

  private static boolean s(String paramString)
  {
    File localFile = new File(paramString);
    int i;
    int j;
    do
      try
      {
        if ((!localFile.exists()) || (!localFile.isDirectory()))
          break;
        File[] arrayOfFile = localFile.listFiles();
        i = localFile.listFiles().length;
        j = 0;
        continue;
        if (arrayOfFile[j].isDirectory())
          s(arrayOfFile[j].getAbsolutePath());
        arrayOfFile[j].delete();
        j++;
      }
      catch (Exception localException)
      {
        dk.c("FileUtil", "delAllFiles filepath=" + paramString);
        bool = false;
        break label118;
      }
    while (j < i);
    boolean bool = true;
    label118: return bool;
  }

  private static Bitmap t(String paramString)
  {
    try
    {
      Bitmap localBitmap2 = BitmapFactory.decodeFile(paramString, null);
      localBitmap1 = localBitmap2;
      return localBitmap1;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      while (true)
      {
        System.gc();
        Bitmap localBitmap1 = null;
      }
    }
  }

  private static boolean u(String paramString)
  {
    File localFile = new File(paramString);
    boolean bool;
    if (!localFile.exists())
      bool = localFile.mkdirs();
    while (true)
    {
      return bool;
      if (!localFile.isDirectory())
      {
        bool = localFile.delete();
        if (bool)
          bool = localFile.mkdirs();
      }
      else
      {
        bool = true;
      }
    }
  }

  public final void a(Handler paramHandler)
  {
    if ((this.a != null) && (this.c))
    {
      this.e.a(paramHandler, 2);
      this.a.setOneShotPreviewCallback(this.e);
    }
  }

  public final void b(Handler paramHandler)
  {
    if ((this.a != null) && (this.c) && (this.d))
    {
      this.f.a(paramHandler, 1);
      this.a.autoFocus(this.f);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a
 * JD-Core Version:    0.6.2
 */