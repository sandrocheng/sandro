package b.a.a.a.a.a;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class e extends a
{
  private final File a;
  private final String b;
  private final String c;

  public e(File paramFile, String paramString)
  {
    this(paramFile, paramString, null);
  }

  public e(File paramFile, String paramString1, String paramString2)
  {
    this(paramFile, null, paramString1, paramString2);
  }

  public e(File paramFile, String paramString1, String paramString2, String paramString3)
  {
    super(paramString2);
    if (paramFile == null)
      throw new IllegalArgumentException("File may not be null");
    this.a = paramFile;
    if (paramString1 != null);
    for (this.b = paramString1; ; this.b = paramFile.getName())
    {
      this.c = paramString3;
      return;
    }
  }

  public void a(OutputStream paramOutputStream)
  {
    if (paramOutputStream == null)
      throw new IllegalArgumentException("Output stream may not be null");
    FileInputStream localFileInputStream = new FileInputStream(this.a);
    try
    {
      byte[] arrayOfByte = new byte[4096];
      while (true)
      {
        int i = localFileInputStream.read(arrayOfByte);
        if (i == -1)
          break;
        paramOutputStream.write(arrayOfByte, 0, i);
      }
    }
    finally
    {
      localFileInputStream.close();
    }
    paramOutputStream.flush();
    localFileInputStream.close();
  }

  public String b()
  {
    return this.b;
  }

  public String c()
  {
    return this.c;
  }

  public String d()
  {
    return "binary";
  }

  public long e()
  {
    return this.a.length();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     b.a.a.a.a.a.e
 * JD-Core Version:    0.6.2
 */