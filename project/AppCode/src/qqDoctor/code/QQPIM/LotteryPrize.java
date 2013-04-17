package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class LotteryPrize extends JceStruct
  implements Cloneable
{
  public boolean lucky = true;
  public String prize = "";
  public String prizeid = "";

  static
  {
    if (!LotteryPrize.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public LotteryPrize()
  {
    setLucky(this.lucky);
    setPrizeid(this.prizeid);
    setPrize(this.prize);
  }

  public LotteryPrize(boolean paramBoolean, String paramString1, String paramString2)
  {
    setLucky(paramBoolean);
    setPrizeid(paramString1);
    setPrize(paramString2);
  }

  public final String className()
  {
    return "QQPIM.LotteryPrize";
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
    localJceDisplayer.display(this.lucky, "lucky");
    localJceDisplayer.display(this.prizeid, "prizeid");
    localJceDisplayer.display(this.prize, "prize");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      LotteryPrize localLotteryPrize = (LotteryPrize)paramObject;
      boolean bool2 = JceUtil.equals(this.lucky, localLotteryPrize.lucky);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.prizeid, localLotteryPrize.prizeid);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.prize, localLotteryPrize.prize);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.LotteryPrize";
  }

  public final boolean getLucky()
  {
    return this.lucky;
  }

  public final String getPrize()
  {
    return this.prize;
  }

  public final String getPrizeid()
  {
    return this.prizeid;
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
    this.lucky = paramJceInputStream.read(this.lucky, 0, false);
    this.prizeid = paramJceInputStream.readString(1, false);
    this.prize = paramJceInputStream.readString(2, false);
  }

  public final void setLucky(boolean paramBoolean)
  {
    this.lucky = paramBoolean;
  }

  public final void setPrize(String paramString)
  {
    this.prize = paramString;
  }

  public final void setPrizeid(String paramString)
  {
    this.prizeid = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.lucky, 0);
    if (this.prizeid != null)
      paramJceOutputStream.write(this.prizeid, 1);
    if (this.prize != null)
      paramJceOutputStream.write(this.prize, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.LotteryPrize
 * JD-Core Version:    0.6.2
 */