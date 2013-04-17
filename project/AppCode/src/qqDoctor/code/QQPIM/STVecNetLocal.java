package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class STVecNetLocal extends JceStruct
  implements Cloneable
{
  static ArrayList<STNetLocal> cache_veclocal;
  public ArrayList<STNetLocal> veclocal = null;

  static
  {
    if (!STVecNetLocal.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STVecNetLocal()
  {
    setVeclocal(this.veclocal);
  }

  public STVecNetLocal(ArrayList<STNetLocal> paramArrayList)
  {
    setVeclocal(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.STVecNetLocal";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.veclocal, "veclocal");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    STVecNetLocal localSTVecNetLocal;
    for (boolean bool = false; ; bool = JceUtil.equals(this.veclocal, localSTVecNetLocal.veclocal))
    {
      return bool;
      localSTVecNetLocal = (STVecNetLocal)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.STVecNetLocal";
  }

  public final ArrayList<STNetLocal> getVeclocal()
  {
    return this.veclocal;
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
    if (cache_veclocal == null)
    {
      cache_veclocal = new ArrayList();
      STNetLocal localSTNetLocal = new STNetLocal();
      cache_veclocal.add(localSTNetLocal);
    }
    setVeclocal((ArrayList)paramJceInputStream.read(cache_veclocal, 0, false));
  }

  public final void setVeclocal(ArrayList<STNetLocal> paramArrayList)
  {
    this.veclocal = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.veclocal != null)
      paramJceOutputStream.write(this.veclocal, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STVecNetLocal
 * JD-Core Version:    0.6.2
 */