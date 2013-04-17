package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class STCloudOrderBak extends JceStruct
  implements Cloneable
{
  static ArrayList<STQueryInfo> cache_vecCodeUpdate;
  static ArrayList<String> cache_vecPort;
  public int nAct = 0;
  public int nFrequncy = 0;
  public int nTimeOut = 0;
  public int nTimes = 0;
  public String strTime = "";
  public ArrayList<STQueryInfo> vecCodeUpdate = null;
  public ArrayList<String> vecPort = null;

  static
  {
    if (!STCloudOrderBak.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STCloudOrderBak()
  {
    setNAct(this.nAct);
    setVecCodeUpdate(this.vecCodeUpdate);
    setNFrequncy(this.nFrequncy);
    setStrTime(this.strTime);
    setNTimes(this.nTimes);
    setNTimeOut(this.nTimeOut);
    setVecPort(this.vecPort);
  }

  public STCloudOrderBak(int paramInt1, ArrayList<STQueryInfo> paramArrayList, int paramInt2, String paramString, int paramInt3, int paramInt4, ArrayList<String> paramArrayList1)
  {
    setNAct(paramInt1);
    setVecCodeUpdate(paramArrayList);
    setNFrequncy(paramInt2);
    setStrTime(paramString);
    setNTimes(paramInt3);
    setNTimeOut(paramInt4);
    setVecPort(paramArrayList1);
  }

  public final String className()
  {
    return "QQPIM.STCloudOrderBak";
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
    localJceDisplayer.display(this.nAct, "nAct");
    localJceDisplayer.display(this.vecCodeUpdate, "vecCodeUpdate");
    localJceDisplayer.display(this.nFrequncy, "nFrequncy");
    localJceDisplayer.display(this.strTime, "strTime");
    localJceDisplayer.display(this.nTimes, "nTimes");
    localJceDisplayer.display(this.nTimeOut, "nTimeOut");
    localJceDisplayer.display(this.vecPort, "vecPort");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      STCloudOrderBak localSTCloudOrderBak = (STCloudOrderBak)paramObject;
      boolean bool2 = JceUtil.equals(this.nAct, localSTCloudOrderBak.nAct);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.vecCodeUpdate, localSTCloudOrderBak.vecCodeUpdate);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.nFrequncy, localSTCloudOrderBak.nFrequncy);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.strTime, localSTCloudOrderBak.strTime);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.nTimes, localSTCloudOrderBak.nTimes);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.nTimeOut, localSTCloudOrderBak.nTimeOut);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.vecPort, localSTCloudOrderBak.vecPort);
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
    return "QQPIM.STCloudOrderBak";
  }

  public final int getNAct()
  {
    return this.nAct;
  }

  public final int getNFrequncy()
  {
    return this.nFrequncy;
  }

  public final int getNTimeOut()
  {
    return this.nTimeOut;
  }

  public final int getNTimes()
  {
    return this.nTimes;
  }

  public final String getStrTime()
  {
    return this.strTime;
  }

  public final ArrayList<STQueryInfo> getVecCodeUpdate()
  {
    return this.vecCodeUpdate;
  }

  public final ArrayList<String> getVecPort()
  {
    return this.vecPort;
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
    this.nAct = paramJceInputStream.read(this.nAct, 0, false);
    if (cache_vecCodeUpdate == null)
    {
      cache_vecCodeUpdate = new ArrayList();
      STQueryInfo localSTQueryInfo = new STQueryInfo();
      cache_vecCodeUpdate.add(localSTQueryInfo);
    }
    setVecCodeUpdate((ArrayList)paramJceInputStream.read(cache_vecCodeUpdate, 1, false));
    setNFrequncy(paramJceInputStream.read(this.nFrequncy, 3, false));
    setStrTime(paramJceInputStream.readString(4, false));
    setNTimes(paramJceInputStream.read(this.nTimes, 5, false));
    setNTimeOut(paramJceInputStream.read(this.nTimeOut, 6, false));
    if (cache_vecPort == null)
    {
      cache_vecPort = new ArrayList();
      cache_vecPort.add("");
    }
    setVecPort((ArrayList)paramJceInputStream.read(cache_vecPort, 7, false));
  }

  public final void setNAct(int paramInt)
  {
    this.nAct = paramInt;
  }

  public final void setNFrequncy(int paramInt)
  {
    this.nFrequncy = paramInt;
  }

  public final void setNTimeOut(int paramInt)
  {
    this.nTimeOut = paramInt;
  }

  public final void setNTimes(int paramInt)
  {
    this.nTimes = paramInt;
  }

  public final void setStrTime(String paramString)
  {
    this.strTime = paramString;
  }

  public final void setVecCodeUpdate(ArrayList<STQueryInfo> paramArrayList)
  {
    this.vecCodeUpdate = paramArrayList;
  }

  public final void setVecPort(ArrayList<String> paramArrayList)
  {
    this.vecPort = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.nAct, 0);
    if (this.vecCodeUpdate != null)
      paramJceOutputStream.write(this.vecCodeUpdate, 1);
    paramJceOutputStream.write(this.nFrequncy, 3);
    if (this.strTime != null)
      paramJceOutputStream.write(this.strTime, 4);
    paramJceOutputStream.write(this.nTimes, 5);
    paramJceOutputStream.write(this.nTimeOut, 6);
    if (this.vecPort != null)
      paramJceOutputStream.write(this.vecPort, 7);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STCloudOrderBak
 * JD-Core Version:    0.6.2
 */