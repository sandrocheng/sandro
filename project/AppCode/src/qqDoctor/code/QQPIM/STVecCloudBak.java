package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class STVecCloudBak extends JceStruct
  implements Cloneable
{
  static ArrayList<STCloudOrderBak> cache_vecbak;
  public ArrayList<STCloudOrderBak> vecbak = null;

  static
  {
    if (!STVecCloudBak.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STVecCloudBak()
  {
    setVecbak(this.vecbak);
  }

  public STVecCloudBak(ArrayList<STCloudOrderBak> paramArrayList)
  {
    setVecbak(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.STVecCloudBak";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.vecbak, "vecbak");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    STVecCloudBak localSTVecCloudBak;
    for (boolean bool = false; ; bool = JceUtil.equals(this.vecbak, localSTVecCloudBak.vecbak))
    {
      return bool;
      localSTVecCloudBak = (STVecCloudBak)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.STVecCloudBak";
  }

  public final ArrayList<STCloudOrderBak> getVecbak()
  {
    return this.vecbak;
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
    if (cache_vecbak == null)
    {
      cache_vecbak = new ArrayList();
      STCloudOrderBak localSTCloudOrderBak = new STCloudOrderBak();
      cache_vecbak.add(localSTCloudOrderBak);
    }
    setVecbak((ArrayList)paramJceInputStream.read(cache_vecbak, 0, false));
  }

  public final void setVecbak(ArrayList<STCloudOrderBak> paramArrayList)
  {
    this.vecbak = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.vecbak != null)
      paramJceOutputStream.write(this.vecbak, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STVecCloudBak
 * JD-Core Version:    0.6.2
 */