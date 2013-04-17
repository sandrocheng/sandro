package exceptionupload;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class ExceptionUploadPackage extends JceStruct
  implements Cloneable
{
  private static ArrayList b;
  private ArrayList a = null;

  static
  {
    if (!ExceptionUploadPackage.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      c = bool;
      return;
    }
  }

  public final void a(ArrayList paramArrayList)
  {
    this.a = paramArrayList;
  }

  public final Object clone()
  {
    try
    {
      Object localObject2 = super.clone();
      localObject1 = localObject2;
      return localObject1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      boolean bool;
      do
      {
        bool = c;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    new JceDisplayer(paramStringBuilder, paramInt).display(this.a, "list");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    ExceptionUploadPackage localExceptionUploadPackage;
    for (boolean bool = false; ; bool = JceUtil.equals(this.a, localExceptionUploadPackage.a))
    {
      return bool;
      localExceptionUploadPackage = (ExceptionUploadPackage)paramObject;
    }
  }

  public final int hashCode()
  {
    try
    {
      throw new Exception("Need define key first!");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (b == null)
    {
      b = new ArrayList();
      ExceptionUpload localExceptionUpload = new ExceptionUpload();
      b.add(localExceptionUpload);
    }
    this.a = ((ArrayList)paramJceInputStream.read(b, 0, true));
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     exceptionupload.ExceptionUploadPackage
 * JD-Core Version:    0.6.2
 */