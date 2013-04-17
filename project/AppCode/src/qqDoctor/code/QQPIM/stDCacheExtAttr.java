package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class stDCacheExtAttr extends JceStruct
  implements Cloneable
{
  static ArrayList<stOpLogList> cache_veclog;
  public String bindphone = "";
  public String changephone = "";
  public int chsimtime = 0;
  public String memo = "";
  public String urgentphone = "";
  public String useragent = "";
  public ArrayList<stOpLogList> veclog = null;

  static
  {
    if (!stDCacheExtAttr.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public stDCacheExtAttr()
  {
    setBindphone(this.bindphone);
    setChangephone(this.changephone);
    setMemo(this.memo);
    setVeclog(this.veclog);
    setChsimtime(this.chsimtime);
    setUseragent(this.useragent);
    setUrgentphone(this.urgentphone);
  }

  public stDCacheExtAttr(String paramString1, String paramString2, String paramString3, ArrayList<stOpLogList> paramArrayList, int paramInt, String paramString4, String paramString5)
  {
    setBindphone(paramString1);
    setChangephone(paramString2);
    setMemo(paramString3);
    setVeclog(paramArrayList);
    setChsimtime(paramInt);
    setUseragent(paramString4);
    setUrgentphone(paramString5);
  }

  public final String className()
  {
    return "QQPIM.stDCacheExtAttr";
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
    localJceDisplayer.display(this.bindphone, "bindphone");
    localJceDisplayer.display(this.changephone, "changephone");
    localJceDisplayer.display(this.memo, "memo");
    localJceDisplayer.display(this.veclog, "veclog");
    localJceDisplayer.display(this.chsimtime, "chsimtime");
    localJceDisplayer.display(this.useragent, "useragent");
    localJceDisplayer.display(this.urgentphone, "urgentphone");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      stDCacheExtAttr localstDCacheExtAttr = (stDCacheExtAttr)paramObject;
      boolean bool2 = JceUtil.equals(this.bindphone, localstDCacheExtAttr.bindphone);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.changephone, localstDCacheExtAttr.changephone);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.memo, localstDCacheExtAttr.memo);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.veclog, localstDCacheExtAttr.veclog);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.chsimtime, localstDCacheExtAttr.chsimtime);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.useragent, localstDCacheExtAttr.useragent);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.urgentphone, localstDCacheExtAttr.urgentphone);
                  bool1 = false;
                  if (bool8)
                    bool1 = true;
                }
              }
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.stDCacheExtAttr";
  }

  public final String getBindphone()
  {
    return this.bindphone;
  }

  public final String getChangephone()
  {
    return this.changephone;
  }

  public final int getChsimtime()
  {
    return this.chsimtime;
  }

  public final String getMemo()
  {
    return this.memo;
  }

  public final String getUrgentphone()
  {
    return this.urgentphone;
  }

  public final String getUseragent()
  {
    return this.useragent;
  }

  public final ArrayList<stOpLogList> getVeclog()
  {
    return this.veclog;
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
    this.bindphone = paramJceInputStream.readString(0, false);
    this.changephone = paramJceInputStream.readString(1, false);
    this.memo = paramJceInputStream.readString(2, false);
    if (cache_veclog == null)
    {
      cache_veclog = new ArrayList();
      stOpLogList localstOpLogList = new stOpLogList();
      cache_veclog.add(localstOpLogList);
    }
    setVeclog((ArrayList)paramJceInputStream.read(cache_veclog, 3, false));
    setChsimtime(paramJceInputStream.read(this.chsimtime, 4, false));
    setUseragent(paramJceInputStream.readString(5, false));
    setUrgentphone(paramJceInputStream.readString(6, false));
  }

  public final void setBindphone(String paramString)
  {
    this.bindphone = paramString;
  }

  public final void setChangephone(String paramString)
  {
    this.changephone = paramString;
  }

  public final void setChsimtime(int paramInt)
  {
    this.chsimtime = paramInt;
  }

  public final void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public final void setUrgentphone(String paramString)
  {
    this.urgentphone = paramString;
  }

  public final void setUseragent(String paramString)
  {
    this.useragent = paramString;
  }

  public final void setVeclog(ArrayList<stOpLogList> paramArrayList)
  {
    this.veclog = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.bindphone != null)
      paramJceOutputStream.write(this.bindphone, 0);
    if (this.changephone != null)
      paramJceOutputStream.write(this.changephone, 1);
    if (this.memo != null)
      paramJceOutputStream.write(this.memo, 2);
    if (this.veclog != null)
      paramJceOutputStream.write(this.veclog, 3);
    paramJceOutputStream.write(this.chsimtime, 4);
    if (this.useragent != null)
      paramJceOutputStream.write(this.useragent, 5);
    if (this.urgentphone != null)
      paramJceOutputStream.write(this.urgentphone, 6);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.stDCacheExtAttr
 * JD-Core Version:    0.6.2
 */