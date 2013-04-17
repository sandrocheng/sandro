package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class stRemoteOpLog extends JceStruct
  implements Cloneable
{
  static ArrayList<stOpLogList> cache_veclog;
  public short subplatform = 0;
  public String ua = "";
  public String useragent = "";
  public ArrayList<stOpLogList> veclog = null;

  static
  {
    if (!stRemoteOpLog.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public stRemoteOpLog()
  {
    setSubplatform(this.subplatform);
    setUa(this.ua);
    setVeclog(this.veclog);
    setUseragent(this.useragent);
  }

  public stRemoteOpLog(short paramShort, String paramString1, ArrayList<stOpLogList> paramArrayList, String paramString2)
  {
    setSubplatform(paramShort);
    setUa(paramString1);
    setVeclog(paramArrayList);
    setUseragent(paramString2);
  }

  public final String className()
  {
    return "QQPIM.stRemoteOpLog";
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
    localJceDisplayer.display(this.subplatform, "subplatform");
    localJceDisplayer.display(this.ua, "ua");
    localJceDisplayer.display(this.veclog, "veclog");
    localJceDisplayer.display(this.useragent, "useragent");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      stRemoteOpLog localstRemoteOpLog = (stRemoteOpLog)paramObject;
      boolean bool2 = JceUtil.equals(this.subplatform, localstRemoteOpLog.subplatform);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.ua, localstRemoteOpLog.ua);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.veclog, localstRemoteOpLog.veclog);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.useragent, localstRemoteOpLog.useragent);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.stRemoteOpLog";
  }

  public final short getSubplatform()
  {
    return this.subplatform;
  }

  public final String getUa()
  {
    return this.ua;
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
    this.subplatform = paramJceInputStream.read(this.subplatform, 0, true);
    this.ua = paramJceInputStream.readString(1, false);
    if (cache_veclog == null)
    {
      cache_veclog = new ArrayList();
      stOpLogList localstOpLogList = new stOpLogList();
      cache_veclog.add(localstOpLogList);
    }
    setVeclog((ArrayList)paramJceInputStream.read(cache_veclog, 2, false));
    setUseragent(paramJceInputStream.readString(3, false));
  }

  public final void setSubplatform(short paramShort)
  {
    this.subplatform = paramShort;
  }

  public final void setUa(String paramString)
  {
    this.ua = paramString;
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
    paramJceOutputStream.write(this.subplatform, 0);
    if (this.ua != null)
      paramJceOutputStream.write(this.ua, 1);
    if (this.veclog != null)
      paramJceOutputStream.write(this.veclog, 2);
    if (this.useragent != null)
      paramJceOutputStream.write(this.useragent, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.stRemoteOpLog
 * JD-Core Version:    0.6.2
 */