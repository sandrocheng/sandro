package com.tencent.qqpimsecure.uilib.common;

import android.os.Environment;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class AutoTestUtil
{
  private final String LOG_PATH = Environment.getExternalStorageDirectory() + File.separator + "autotest" + File.separator;
  private final String SYMBOL_ENTER = "\n";
  private final String[] TITLES = { "页面", "cpu占用率", "总占用内存", "有效内存", "内存碎片" };
  private int mCount;
  private File mFile;
  private List<String> mLineContentList = new ArrayList();
  private boolean mStop = false;

  private File createLogFile(String paramString, long paramLong)
  {
    try
    {
      File localFile1 = new File(this.LOG_PATH);
      if (!localFile1.exists())
        localFile1.mkdir();
      localFile2 = new File(this.LOG_PATH + paramString + "_" + paramLong + ".txt");
      if (!localFile2.exists())
      {
        localFile2.createNewFile();
        return localFile2;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        File localFile2 = null;
      }
    }
  }

  private int getCpuScale(Runtime paramRuntime)
    throws Exception
  {
    Process localProcess = Runtime.getRuntime().exec("top -n 1");
    StringBuilder localStringBuilder = new StringBuilder();
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localProcess.getInputStream()));
    String str;
    do
    {
      str = localBufferedReader.readLine();
      i = 0;
      if (str == null)
        break;
    }
    while (str.trim().length() <= 0);
    String[] arrayOfString = str.split("%")[0].split("User");
    localStringBuilder.append("CPU:" + arrayOfString[1].trim() + "\n");
    int i = Integer.parseInt(arrayOfString[1].trim());
    return i;
  }

  private void writeContent(String paramString, Runtime paramRuntime)
  {
    if (paramRuntime == null);
    while (true)
    {
      return;
      long l1 = paramRuntime.totalMemory();
      long l2 = paramRuntime.freeMemory();
      long l3 = l1 - l2;
      try
      {
        int j = getCpuScale(paramRuntime);
        i = j;
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(paramString).append(";");
        localStringBuilder.append(i).append(";");
        localStringBuilder.append(l1).append(";");
        localStringBuilder.append(l3).append(";");
        localStringBuilder.append(l2).append("\n");
        this.mLineContentList.add(localStringBuilder.toString());
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
  }

  private void writeTitle()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String[] arrayOfString = this.TITLES;
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      localStringBuilder.append(arrayOfString[j]).append(";");
    String str1 = localStringBuilder.toString();
    String str2 = str1.substring(0, -1 + str1.length()) + "\n";
    this.mLineContentList.add(str2);
  }

  // ERROR //
  private void writeToLog()
  {
    // Byte code:
    //   0: new 221	java/io/FileOutputStream
    //   3: dup
    //   4: aload_0
    //   5: getfield 80	com/tencent/qqpimsecure/uilib/common/AutoTestUtil:mFile	Ljava/io/File;
    //   8: invokespecial 224	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   11: astore_1
    //   12: aload_0
    //   13: getfield 74	com/tencent/qqpimsecure/uilib/common/AutoTestUtil:mLineContentList	Ljava/util/List;
    //   16: invokeinterface 228 1 0
    //   21: astore 6
    //   23: aload 6
    //   25: invokeinterface 233 1 0
    //   30: ifeq +39 -> 69
    //   33: aload_1
    //   34: aload 6
    //   36: invokeinterface 237 1 0
    //   41: checkcast 24	java/lang/String
    //   44: invokevirtual 241	java/lang/String:getBytes	()[B
    //   47: invokevirtual 245	java/io/FileOutputStream:write	([B)V
    //   50: goto -27 -> 23
    //   53: astore 4
    //   55: aload 4
    //   57: invokevirtual 215	java/lang/Exception:printStackTrace	()V
    //   60: aload_1
    //   61: ifnull +7 -> 68
    //   64: aload_1
    //   65: invokevirtual 248	java/io/FileOutputStream:close	()V
    //   68: return
    //   69: aload_1
    //   70: invokevirtual 248	java/io/FileOutputStream:close	()V
    //   73: goto -5 -> 68
    //   76: astore 7
    //   78: aload 7
    //   80: invokevirtual 135	java/io/IOException:printStackTrace	()V
    //   83: goto -15 -> 68
    //   86: astore 5
    //   88: aload 5
    //   90: invokevirtual 135	java/io/IOException:printStackTrace	()V
    //   93: goto -25 -> 68
    //   96: astore_2
    //   97: aconst_null
    //   98: astore_1
    //   99: aload_1
    //   100: ifnull +7 -> 107
    //   103: aload_1
    //   104: invokevirtual 248	java/io/FileOutputStream:close	()V
    //   107: aload_2
    //   108: athrow
    //   109: astore_3
    //   110: aload_3
    //   111: invokevirtual 135	java/io/IOException:printStackTrace	()V
    //   114: goto -7 -> 107
    //   117: astore_2
    //   118: goto -19 -> 99
    //   121: astore 4
    //   123: aconst_null
    //   124: astore_1
    //   125: goto -70 -> 55
    //
    // Exception table:
    //   from	to	target	type
    //   12	50	53	java/lang/Exception
    //   69	73	76	java/io/IOException
    //   64	68	86	java/io/IOException
    //   0	12	96	finally
    //   103	107	109	java/io/IOException
    //   12	50	117	finally
    //   55	60	117	finally
    //   0	12	121	java/lang/Exception
  }

  public void startAnalysis(String paramString, long paramLong, Runtime paramRuntime)
  {
    new AutoTestUtil.1(this, paramString, paramLong, paramRuntime).start();
  }

  public void stopAnalysis()
  {
    this.mStop = true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.common.AutoTestUtil
 * JD-Core Version:    0.6.2
 */