package com.keniu.security.sync;

import android.os.Build.VERSION;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public final class i
{
  private static boolean a = true;

  public static void a(Object paramObject, String paramString)
  {
    if (a);
    try
    {
      if (Integer.parseInt(Build.VERSION.SDK) > 4)
      {
        File localFile = new File(r.aL);
        if (!localFile.getParentFile().exists())
          localFile.getParentFile().mkdir();
        FileWriter localFileWriter = new FileWriter(localFile, true);
        localFileWriter.write(paramObject.getClass().getName() + ">>>>>" + paramString + "\n");
        localFileWriter.close();
      }
      label100: return;
    }
    catch (IOException localIOException)
    {
      break label100;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.i
 * JD-Core Version:    0.6.2
 */