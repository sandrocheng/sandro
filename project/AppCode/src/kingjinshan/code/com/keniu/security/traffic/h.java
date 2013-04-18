package com.keniu.security.traffic;

import com.keniu.security.malware.bz;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;

final class h extends Thread
{
  public int a = -1;
  private final File b;
  private final String c;
  private final StringBuilder d;
  private final boolean e;

  public h(File paramFile, String paramString, StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    this.b = paramFile;
    this.c = paramString;
    this.d = paramStringBuilder;
    this.e = paramBoolean;
  }

  public final void run()
  {
    try
    {
      this.b.createNewFile();
      String str = this.b.getAbsolutePath();
      e.j.d("chmod 777 " + str + "\n");
      OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(new FileOutputStream(this.b));
      if (new File("/system/bin/sh").exists())
        localOutputStreamWriter.write("#!/system/bin/sh\n");
      localOutputStreamWriter.write(this.c);
      if (!this.c.endsWith("\n"))
        localOutputStreamWriter.write("\n");
      localOutputStreamWriter.write("exit\n");
      localOutputStreamWriter.flush();
      localOutputStreamWriter.close();
      if ((e.j.e()) && (e.j.d(str + "\n")))
        this.a = 0;
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException = localException;
        if (this.d != null)
          this.d.append("\n" + localException);
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.h
 * JD-Core Version:    0.6.2
 */