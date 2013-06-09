package org.antivirus.core.telephony;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;

public class TelephonyInfo
{
  private String a;
  private String b;
  private String c;

  public TelephonyInfo(Context paramContext)
  {
  }

  // ERROR //
  private static String a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 20
    //   2: astore_1
    //   3: new 22	java/io/BufferedReader
    //   6: dup
    //   7: new 24	java/io/InputStreamReader
    //   10: dup
    //   11: invokestatic 30	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   14: ldc 32
    //   16: invokevirtual 36	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   19: invokevirtual 42	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   22: invokespecial 45	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   25: sipush 2000
    //   28: invokespecial 48	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   31: astore_2
    //   32: ldc2_w 49
    //   35: invokestatic 56	java/lang/Thread:sleep	(J)V
    //   38: aload_2
    //   39: invokevirtual 60	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   42: astore 10
    //   44: aload 10
    //   46: astore 4
    //   48: aload 4
    //   50: ifnull +134 -> 184
    //   53: aload_2
    //   54: invokevirtual 63	java/io/BufferedReader:close	()V
    //   57: aload 4
    //   59: invokestatic 69	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   62: ifeq +18 -> 80
    //   65: aload_0
    //   66: invokevirtual 75	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   69: ldc 77
    //   71: invokestatic 83	android/provider/Settings$System:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   74: astore 8
    //   76: aload 8
    //   78: astore 4
    //   80: aload 4
    //   82: invokestatic 69	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   85: ifeq +53 -> 138
    //   88: invokestatic 89	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   91: invokevirtual 92	java/util/UUID:toString	()Ljava/lang/String;
    //   94: astore 6
    //   96: aload 6
    //   98: areturn
    //   99: astore 9
    //   101: invokestatic 96	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   104: invokevirtual 99	java/lang/Thread:interrupt	()V
    //   107: goto -69 -> 38
    //   110: astore_3
    //   111: aload_1
    //   112: astore 4
    //   114: aload_3
    //   115: astore 5
    //   117: aload 5
    //   119: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   122: goto -65 -> 57
    //   125: astore 7
    //   127: aload 7
    //   129: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   132: aconst_null
    //   133: astore 4
    //   135: goto -55 -> 80
    //   138: new 107	java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial 108	java/lang/StringBuilder:<init>	()V
    //   145: invokestatic 89	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   148: invokevirtual 92	java/util/UUID:toString	()Ljava/lang/String;
    //   151: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: ldc 114
    //   156: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload 4
    //   161: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: ldc 117
    //   169: ldc 20
    //   171: invokevirtual 123	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   174: astore 6
    //   176: goto -80 -> 96
    //   179: astore 5
    //   181: goto -64 -> 117
    //   184: aload 4
    //   186: astore_1
    //   187: goto -149 -> 38
    //
    // Exception table:
    //   from	to	target	type
    //   32	38	99	java/lang/InterruptedException
    //   3	32	110	java/lang/Exception
    //   32	38	110	java/lang/Exception
    //   38	44	110	java/lang/Exception
    //   101	107	110	java/lang/Exception
    //   65	76	125	java/lang/Exception
    //   53	57	179	java/lang/Exception
  }

  public static String getUniqueId(Context paramContext, EngineSettings paramEngineSettings)
  {
    String str = paramEngineSettings.getUniqueId();
    if (!TextUtils.isEmpty(str))
      if (str.equals("9774d56d682e549c"))
      {
        str = a(paramContext);
        paramEngineSettings.setUniqueId(str, paramContext);
      }
    while (true)
    {
      return str;
      str = paramEngineSettings.getHiddenUniqueId(paramContext);
      if (TextUtils.isEmpty(str))
      {
        str = a(paramContext);
        paramEngineSettings.setUniqueId(str, paramContext);
      }
    }
  }

  public String getLine1Number()
  {
    return this.b;
  }

  public String getNonUniqueDeviceId(Context paramContext)
  {
    if (TextUtils.isEmpty(this.a))
      this.a = a(paramContext);
    return this.a;
  }

  public String getSimNumber()
  {
    return this.c;
  }

  public boolean grabLineAndSimNumbers(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager != null);
    while (true)
    {
      try
      {
        String str4 = localTelephonyManager.getLine1Number();
        str1 = str4;
        if (str1 == null)
          str1 = localTelephonyManager.getSubscriberId();
        if (str1 == null)
          str1 = "";
      }
      catch (Exception localException1)
      {
        try
        {
          String str3 = localTelephonyManager.getSimSerialNumber();
          str2 = str3;
          if (str2 == null)
            str2 = "unknown";
          this.a = a(paramContext);
          if (this.a.matches("^0+$"))
            this.a = (str1 + "_" + str2);
          this.b = str1;
          this.c = str2;
          bool = true;
          return bool;
          localException1 = localException1;
          Logger.log(localException1);
          String str1 = null;
        }
        catch (Exception localException2)
        {
          Logger.log(localException2);
          String str2 = "unknown";
          continue;
        }
      }
      boolean bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.telephony.TelephonyInfo
 * JD-Core Version:    0.6.2
 */