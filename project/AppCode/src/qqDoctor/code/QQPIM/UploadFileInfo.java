package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class UploadFileInfo extends JceStruct
  implements Cloneable
{
  static ArrayList<UploadFile> cache_vecUploadFile;
  public String id = "";
  public ArrayList<UploadFile> vecUploadFile = null;

  static
  {
    if (!UploadFileInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UploadFileInfo()
  {
    setId(this.id);
    setVecUploadFile(this.vecUploadFile);
  }

  public UploadFileInfo(String paramString, ArrayList<UploadFile> paramArrayList)
  {
    setId(paramString);
    setVecUploadFile(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.UploadFileInfo";
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
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.id, "id");
    localJceDisplayer.display(this.vecUploadFile, "vecUploadFile");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      UploadFileInfo localUploadFileInfo = (UploadFileInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.id, localUploadFileInfo.id);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.vecUploadFile, localUploadFileInfo.vecUploadFile);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.UploadFileInfo";
  }

  public final String getId()
  {
    return this.id;
  }

  public final ArrayList<UploadFile> getVecUploadFile()
  {
    return this.vecUploadFile;
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
    this.id = paramJceInputStream.readString(0, true);
    if (cache_vecUploadFile == null)
    {
      cache_vecUploadFile = new ArrayList();
      UploadFile localUploadFile = new UploadFile();
      cache_vecUploadFile.add(localUploadFile);
    }
    setVecUploadFile((ArrayList)paramJceInputStream.read(cache_vecUploadFile, 1, true));
  }

  public final void setId(String paramString)
  {
    this.id = paramString;
  }

  public final void setVecUploadFile(ArrayList<UploadFile> paramArrayList)
  {
    this.vecUploadFile = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.id, 0);
    paramJceOutputStream.write(this.vecUploadFile, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.UploadFileInfo
 * JD-Core Version:    0.6.2
 */