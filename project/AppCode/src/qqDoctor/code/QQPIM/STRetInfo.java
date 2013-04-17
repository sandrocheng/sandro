package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STRetInfo extends JceStruct
  implements Cloneable
{
  public int nExcess = 0;
  public int nLeft = 0;
  public int nPaMoney = 0;
  public int nPaNet = 0;
  public int nStopType = 0;
  public int nType = 0;
  public int nUsed = 0;
  public int ntime = 0;
  public String strMsg = "";

  static
  {
    if (!STRetInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STRetInfo()
  {
    setNType(this.nType);
    setNLeft(this.nLeft);
    setNUsed(this.nUsed);
    setNExcess(this.nExcess);
    setNPaNet(this.nPaNet);
    setNPaMoney(this.nPaMoney);
    setNtime(this.ntime);
    setNStopType(this.nStopType);
    setStrMsg(this.strMsg);
  }

  public STRetInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, String paramString)
  {
    setNType(paramInt1);
    setNLeft(paramInt2);
    setNUsed(paramInt3);
    setNExcess(paramInt4);
    setNPaNet(paramInt5);
    setNPaMoney(paramInt6);
    setNtime(paramInt7);
    setNStopType(paramInt8);
    setStrMsg(paramString);
  }

  public final String className()
  {
    return "QQPIM.STRetInfo";
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
    localJceDisplayer.display(this.nType, "nType");
    localJceDisplayer.display(this.nLeft, "nLeft");
    localJceDisplayer.display(this.nUsed, "nUsed");
    localJceDisplayer.display(this.nExcess, "nExcess");
    localJceDisplayer.display(this.nPaNet, "nPaNet");
    localJceDisplayer.display(this.nPaMoney, "nPaMoney");
    localJceDisplayer.display(this.ntime, "ntime");
    localJceDisplayer.display(this.nStopType, "nStopType");
    localJceDisplayer.display(this.strMsg, "strMsg");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      STRetInfo localSTRetInfo = (STRetInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.nType, localSTRetInfo.nType);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.nLeft, localSTRetInfo.nLeft);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.nUsed, localSTRetInfo.nUsed);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.nExcess, localSTRetInfo.nExcess);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.nPaNet, localSTRetInfo.nPaNet);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.nPaMoney, localSTRetInfo.nPaMoney);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.ntime, localSTRetInfo.ntime);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.nStopType, localSTRetInfo.nStopType);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.strMsg, localSTRetInfo.strMsg);
                      bool1 = false;
                      if (bool10)
                        bool1 = true;
                    }
                  }
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
    return "QQPIM.STRetInfo";
  }

  public final int getNExcess()
  {
    return this.nExcess;
  }

  public final int getNLeft()
  {
    return this.nLeft;
  }

  public final int getNPaMoney()
  {
    return this.nPaMoney;
  }

  public final int getNPaNet()
  {
    return this.nPaNet;
  }

  public final int getNStopType()
  {
    return this.nStopType;
  }

  public final int getNType()
  {
    return this.nType;
  }

  public final int getNUsed()
  {
    return this.nUsed;
  }

  public final int getNtime()
  {
    return this.ntime;
  }

  public final String getStrMsg()
  {
    return this.strMsg;
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
    this.nType = paramJceInputStream.read(this.nType, 0, true);
    this.nLeft = paramJceInputStream.read(this.nLeft, 1, true);
    this.nUsed = paramJceInputStream.read(this.nUsed, 2, true);
    this.nExcess = paramJceInputStream.read(this.nExcess, 3, true);
    this.nPaNet = paramJceInputStream.read(this.nPaNet, 4, true);
    this.nPaMoney = paramJceInputStream.read(this.nPaMoney, 5, true);
    this.ntime = paramJceInputStream.read(this.ntime, 6, true);
    this.nStopType = paramJceInputStream.read(this.nStopType, 7, false);
    this.strMsg = paramJceInputStream.readString(8, false);
  }

  public final void setNExcess(int paramInt)
  {
    this.nExcess = paramInt;
  }

  public final void setNLeft(int paramInt)
  {
    this.nLeft = paramInt;
  }

  public final void setNPaMoney(int paramInt)
  {
    this.nPaMoney = paramInt;
  }

  public final void setNPaNet(int paramInt)
  {
    this.nPaNet = paramInt;
  }

  public final void setNStopType(int paramInt)
  {
    this.nStopType = paramInt;
  }

  public final void setNType(int paramInt)
  {
    this.nType = paramInt;
  }

  public final void setNUsed(int paramInt)
  {
    this.nUsed = paramInt;
  }

  public final void setNtime(int paramInt)
  {
    this.ntime = paramInt;
  }

  public final void setStrMsg(String paramString)
  {
    this.strMsg = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.nType, 0);
    paramJceOutputStream.write(this.nLeft, 1);
    paramJceOutputStream.write(this.nUsed, 2);
    paramJceOutputStream.write(this.nExcess, 3);
    paramJceOutputStream.write(this.nPaNet, 4);
    paramJceOutputStream.write(this.nPaMoney, 5);
    paramJceOutputStream.write(this.ntime, 6);
    paramJceOutputStream.write(this.nStopType, 7);
    if (this.strMsg != null)
      paramJceOutputStream.write(this.strMsg, 8);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STRetInfo
 * JD-Core Version:    0.6.2
 */