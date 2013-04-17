package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class DeleteFileInfo extends JceStruct
  implements Cloneable
{
  public String file = "";

  static
  {
    if (!DeleteFileInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public DeleteFileInfo()
  {
    setFile(this.file);
  }

  public DeleteFileInfo(String paramString)
  {
    setFile(paramString);
  }

  public final String className()
  {
    return "QQPIM.DeleteFileInfo";
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
        bool = $assertionsDisabled;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    new JceDisplayer(paramStringBuilder, paramInt).display(this.file, "file");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    DeleteFileInfo localDeleteFileInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.file, localDeleteFileInfo.file))
    {
      return bool;
      localDeleteFileInfo = (DeleteFileInfo)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.DeleteFileInfo";
  }

  public final String getFile()
  {
    return this.file;
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
    this.file = paramJceInputStream.readString(0, true);
  }

  public final void setFile(String paramString)
  {
    this.file = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.file, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.DeleteFileInfo
 * JD-Core Version:    0.6.2
 */