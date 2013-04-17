package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class HotWordResInfo extends JceStruct
  implements Cloneable
{
  static ArrayList<HotwordInfo> cache_hotwords;
  public ArrayList<HotwordInfo> hotwords = null;
  public int totalnum = 0;

  static
  {
    if (!HotWordResInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public HotWordResInfo()
  {
    setTotalnum(this.totalnum);
    setHotwords(this.hotwords);
  }

  public HotWordResInfo(int paramInt, ArrayList<HotwordInfo> paramArrayList)
  {
    setTotalnum(paramInt);
    setHotwords(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.HotWordResInfo";
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
    localJceDisplayer.display(this.totalnum, "totalnum");
    localJceDisplayer.display(this.hotwords, "hotwords");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      HotWordResInfo localHotWordResInfo = (HotWordResInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.totalnum, localHotWordResInfo.totalnum);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.hotwords, localHotWordResInfo.hotwords);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.HotWordResInfo";
  }

  public final ArrayList<HotwordInfo> getHotwords()
  {
    return this.hotwords;
  }

  public final int getTotalnum()
  {
    return this.totalnum;
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
    this.totalnum = paramJceInputStream.read(this.totalnum, 0, true);
    if (cache_hotwords == null)
    {
      cache_hotwords = new ArrayList();
      HotwordInfo localHotwordInfo = new HotwordInfo();
      cache_hotwords.add(localHotwordInfo);
    }
    setHotwords((ArrayList)paramJceInputStream.read(cache_hotwords, 1, true));
  }

  public final void setHotwords(ArrayList<HotwordInfo> paramArrayList)
  {
    this.hotwords = paramArrayList;
  }

  public final void setTotalnum(int paramInt)
  {
    this.totalnum = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.totalnum, 0);
    paramJceOutputStream.write(this.hotwords, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.HotWordResInfo
 * JD-Core Version:    0.6.2
 */