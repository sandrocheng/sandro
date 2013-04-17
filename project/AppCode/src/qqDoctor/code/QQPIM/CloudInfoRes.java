package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class CloudInfoRes extends JceStruct
  implements Cloneable
{
  static ArrayList<CloudCmdRes> cache_cmdres;
  public int action = 0;
  public ArrayList<CloudCmdRes> cmdres = null;
  public int confirmtype = 0;
  public int phase = 0;
  public int res = 0;
  public int time = 0;
  public String tipsid = "";

  static
  {
    if (!CloudInfoRes.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public CloudInfoRes()
  {
    setTipsid(this.tipsid);
    setAction(this.action);
    setRes(this.res);
    setCmdres(this.cmdres);
    setPhase(this.phase);
    setConfirmtype(this.confirmtype);
    setTime(this.time);
  }

  public CloudInfoRes(String paramString, int paramInt1, int paramInt2, ArrayList<CloudCmdRes> paramArrayList, int paramInt3, int paramInt4, int paramInt5)
  {
    setTipsid(paramString);
    setAction(paramInt1);
    setRes(paramInt2);
    setCmdres(paramArrayList);
    setPhase(paramInt3);
    setConfirmtype(paramInt4);
    setTime(paramInt5);
  }

  public final String className()
  {
    return "QQPIM.CloudInfoRes";
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
    localJceDisplayer.display(this.tipsid, "tipsid");
    localJceDisplayer.display(this.action, "action");
    localJceDisplayer.display(this.res, "res");
    localJceDisplayer.display(this.cmdres, "cmdres");
    localJceDisplayer.display(this.phase, "phase");
    localJceDisplayer.display(this.confirmtype, "confirmtype");
    localJceDisplayer.display(this.time, "time");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      CloudInfoRes localCloudInfoRes = (CloudInfoRes)paramObject;
      boolean bool2 = JceUtil.equals(this.tipsid, localCloudInfoRes.tipsid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.action, localCloudInfoRes.action);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.res, localCloudInfoRes.res);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.cmdres, localCloudInfoRes.cmdres);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.phase, localCloudInfoRes.phase);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.confirmtype, localCloudInfoRes.confirmtype);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.time, localCloudInfoRes.time);
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
    return "QQPIM.CloudInfoRes";
  }

  public final int getAction()
  {
    return this.action;
  }

  public final ArrayList<CloudCmdRes> getCmdres()
  {
    return this.cmdres;
  }

  public final int getConfirmtype()
  {
    return this.confirmtype;
  }

  public final int getPhase()
  {
    return this.phase;
  }

  public final int getRes()
  {
    return this.res;
  }

  public final int getTime()
  {
    return this.time;
  }

  public final String getTipsid()
  {
    return this.tipsid;
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
    this.tipsid = paramJceInputStream.readString(1, true);
    this.action = paramJceInputStream.read(this.action, 2, true);
    this.res = paramJceInputStream.read(this.res, 3, true);
    if (cache_cmdres == null)
    {
      cache_cmdres = new ArrayList();
      CloudCmdRes localCloudCmdRes = new CloudCmdRes();
      cache_cmdres.add(localCloudCmdRes);
    }
    setCmdres((ArrayList)paramJceInputStream.read(cache_cmdres, 4, true));
    setPhase(paramJceInputStream.read(this.phase, 5, false));
    setConfirmtype(paramJceInputStream.read(this.confirmtype, 6, false));
    setTime(paramJceInputStream.read(this.time, 7, false));
  }

  public final void setAction(int paramInt)
  {
    this.action = paramInt;
  }

  public final void setCmdres(ArrayList<CloudCmdRes> paramArrayList)
  {
    this.cmdres = paramArrayList;
  }

  public final void setConfirmtype(int paramInt)
  {
    this.confirmtype = paramInt;
  }

  public final void setPhase(int paramInt)
  {
    this.phase = paramInt;
  }

  public final void setRes(int paramInt)
  {
    this.res = paramInt;
  }

  public final void setTime(int paramInt)
  {
    this.time = paramInt;
  }

  public final void setTipsid(String paramString)
  {
    this.tipsid = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.tipsid, 1);
    paramJceOutputStream.write(this.action, 2);
    paramJceOutputStream.write(this.res, 3);
    paramJceOutputStream.write(this.cmdres, 4);
    paramJceOutputStream.write(this.phase, 5);
    paramJceOutputStream.write(this.confirmtype, 6);
    paramJceOutputStream.write(this.time, 7);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.CloudInfoRes
 * JD-Core Version:    0.6.2
 */