package com.jxphone.mosecurity.d;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public final class g
{
  private static final String a = "logcat -d -v time -s *:e";
  private static final String b = "mosecurity";

  private static String a()
  {
    try
    {
      localProcess2 = Runtime.getRuntime().exec("logcat -d -v time -s *:e");
    }
    finally
    {
      try
      {
        int i = localProcess2.waitFor();
        if (i != 0)
        {
          if (localProcess2 != null)
            localProcess2.destroy();
          localObject6 = null;
          return localObject6;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        Object localObject6;
        localBufferedReader = new BufferedReader(new InputStreamReader(localProcess2.getInputStream()), 64);
        StringBuilder localStringBuilder;
        Object localObject1;
        try
        {
          localStringBuilder = new StringBuilder(256);
          while (true)
          {
            String str1 = localBufferedReader.readLine();
            if (str1 == null)
              break;
            localStringBuilder.append(str1).append('\n');
          }
        }
        finally
        {
          localProcess1 = localProcess2;
          localObject1 = localObject5;
        }
        while (true)
        {
          if (localBufferedReader != null)
            localBufferedReader.close();
          if (localProcess1 != null)
            localProcess1.destroy();
          throw localObject1;
          if ((localStringBuilder.length() > 0) && (localStringBuilder.indexOf("mosecurity") != -1))
          {
            String str2 = localStringBuilder.toString();
            localBufferedReader.close();
            if (localProcess2 != null)
              localProcess2.destroy();
            localObject6 = str2;
            break;
          }
          localBufferedReader.close();
          if (localProcess2 != null)
            localProcess2.destroy();
          localObject6 = null;
          break;
          localObject2 = finally;
          localBufferedReader = null;
          localProcess1 = null;
        }
      }
      finally
      {
        while (true)
        {
          Process localProcess2;
          Process localProcess1 = localProcess2;
          Object localObject3 = localObject4;
          BufferedReader localBufferedReader = null;
        }
      }
    }
  }

  // ERROR //
  private static void b()
  {
    // Byte code:
    //   0: invokestatic 24	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   3: ldc 81
    //   5: invokevirtual 28	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   8: astore_0
    //   9: aload_0
    //   10: invokevirtual 34	java/lang/Process:waitFor	()I
    //   13: pop
    //   14: aload_0
    //   15: invokevirtual 37	java/lang/Process:destroy	()V
    //   18: return
    //   19: astore_2
    //   20: aload_0
    //   21: invokevirtual 37	java/lang/Process:destroy	()V
    //   24: goto -6 -> 18
    //   27: astore_1
    //   28: aload_0
    //   29: invokevirtual 37	java/lang/Process:destroy	()V
    //   32: aload_1
    //   33: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   9	14	19	java/lang/InterruptedException
    //   9	14	27	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.g
 * JD-Core Version:    0.6.2
 */