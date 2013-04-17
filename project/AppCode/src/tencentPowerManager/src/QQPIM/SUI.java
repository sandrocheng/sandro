package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class SUI extends JceStruct
  implements Cloneable
{
  static ArrayList<Integer> cache_ivalues;
  public String desc = "";
  public int id = 0;
  public ArrayList<Integer> ivalues = null;
  public String paramvalues = "";
  public int time = 0;

  static
  {
    if (!SUI.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SUI()
  {
    setId(this.id);
    setTime(this.time);
    setDesc(this.desc);
    setIvalues(this.ivalues);
    setParamvalues(this.paramvalues);
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
    localJceDisplayer.display(this.time, "time");
    localJceDisplayer.display(this.desc, "desc");
    localJceDisplayer.display(this.ivalues, "ivalues");
    localJceDisplayer.display(this.paramvalues, "paramvalues");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SUI localSUI = (SUI)paramObject;
      boolean bool2 = JceUtil.equals(this.id, localSUI.id);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.time, localSUI.time);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.desc, localSUI.desc);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.ivalues, localSUI.ivalues);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.paramvalues, localSUI.paramvalues);
              bool1 = false;
              if (bool6)
                bool1 = true;
            }
          }
        }
      }
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
    this.id = paramJceInputStream.read(this.id, 0, true);
    this.time = paramJceInputStream.read(this.time, 1, true);
    this.desc = paramJceInputStream.readString(2, true);
    if (cache_ivalues == null)
    {
      cache_ivalues = new ArrayList();
      Integer localInteger = Integer.valueOf(0);
      cache_ivalues.add(localInteger);
    }
    setIvalues((ArrayList)paramJceInputStream.read(cache_ivalues, 3, false));
    setParamvalues(paramJceInputStream.readString(4, false));
  }

  public final void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public final void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public final void setIvalues(ArrayList<Integer> paramArrayList)
  {
    this.ivalues = paramArrayList;
  }

  public final void setParamvalues(String paramString)
  {
    this.paramvalues = paramString;
  }

  public final void setTime(int paramInt)
  {
    this.time = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.id, 0);
    paramJceOutputStream.write(this.time, 1);
    paramJceOutputStream.write(this.desc, 2);
    if (this.ivalues != null)
      paramJceOutputStream.write(this.ivalues, 3);
    if (this.paramvalues != null)
      paramJceOutputStream.write(this.paramvalues, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.SUI
 * JD-Core Version:    0.6.2
 */