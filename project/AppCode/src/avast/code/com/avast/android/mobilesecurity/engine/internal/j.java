package com.avast.android.mobilesecurity.engine.internal;

import com.avast.android.mobilesecurity.engine.r;
import java.io.File;
import java.io.OutputStream;
import org.apache.http.entity.FileEntity;

public class j extends FileEntity
{
  private r a;

  public j(File paramFile, String paramString, r paramr)
  {
    super(paramFile, paramString);
    this.a = paramr;
  }

  public void writeTo(OutputStream paramOutputStream)
  {
    long l = -1L;
    if (this.file != null)
      l = this.file.length();
    super.writeTo(new l(paramOutputStream, l, this.a));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.j
 * JD-Core Version:    0.6.2
 */