package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class LotteryColorEggs extends JceStruct
  implements Cloneable
{
  static LotteryPrize cache_prize;
  public String activityid = "";
  public String checkurl = "";
  public String eggurl = "";
  public int orbit = 0;
  public LotteryPrize prize = null;
  public String prizeurl = "";
  public String wording = "";

  static
  {
    if (!LotteryColorEggs.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public LotteryColorEggs()
  {
    setActivityid(this.activityid);
    setEggurl(this.eggurl);
    setOrbit(this.orbit);
    setWording(this.wording);
    setCheckurl(this.checkurl);
    setPrizeurl(this.prizeurl);
    setPrize(this.prize);
  }

  public LotteryColorEggs(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4, String paramString5, LotteryPrize paramLotteryPrize)
  {
    setActivityid(paramString1);
    setEggurl(paramString2);
    setOrbit(paramInt);
    setWording(paramString3);
    setCheckurl(paramString4);
    setPrizeurl(paramString5);
    setPrize(paramLotteryPrize);
  }

  public final String className()
  {
    return "QQPIM.LotteryColorEggs";
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
    localJceDisplayer.display(this.activityid, "activityid");
    localJceDisplayer.display(this.eggurl, "eggurl");
    localJceDisplayer.display(this.orbit, "orbit");
    localJceDisplayer.display(this.wording, "wording");
    localJceDisplayer.display(this.checkurl, "checkurl");
    localJceDisplayer.display(this.prizeurl, "prizeurl");
    localJceDisplayer.display(this.prize, "prize");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      LotteryColorEggs localLotteryColorEggs = (LotteryColorEggs)paramObject;
      boolean bool2 = JceUtil.equals(this.activityid, localLotteryColorEggs.activityid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.eggurl, localLotteryColorEggs.eggurl);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.orbit, localLotteryColorEggs.orbit);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.wording, localLotteryColorEggs.wording);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.checkurl, localLotteryColorEggs.checkurl);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.prizeurl, localLotteryColorEggs.prizeurl);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.prize, localLotteryColorEggs.prize);
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
    return "QQPIM.LotteryColorEggs";
  }

  public final String getActivityid()
  {
    return this.activityid;
  }

  public final String getCheckurl()
  {
    return this.checkurl;
  }

  public final String getEggurl()
  {
    return this.eggurl;
  }

  public final int getOrbit()
  {
    return this.orbit;
  }

  public final LotteryPrize getPrize()
  {
    return this.prize;
  }

  public final String getPrizeurl()
  {
    return this.prizeurl;
  }

  public final String getWording()
  {
    return this.wording;
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
    this.activityid = paramJceInputStream.readString(0, true);
    this.eggurl = paramJceInputStream.readString(1, true);
    this.orbit = paramJceInputStream.read(this.orbit, 2, true);
    this.wording = paramJceInputStream.readString(3, true);
    this.checkurl = paramJceInputStream.readString(4, false);
    this.prizeurl = paramJceInputStream.readString(5, false);
    if (cache_prize == null)
      cache_prize = new LotteryPrize();
    this.prize = ((LotteryPrize)paramJceInputStream.read(cache_prize, 6, false));
  }

  public final void setActivityid(String paramString)
  {
    this.activityid = paramString;
  }

  public final void setCheckurl(String paramString)
  {
    this.checkurl = paramString;
  }

  public final void setEggurl(String paramString)
  {
    this.eggurl = paramString;
  }

  public final void setOrbit(int paramInt)
  {
    this.orbit = paramInt;
  }

  public final void setPrize(LotteryPrize paramLotteryPrize)
  {
    this.prize = paramLotteryPrize;
  }

  public final void setPrizeurl(String paramString)
  {
    this.prizeurl = paramString;
  }

  public final void setWording(String paramString)
  {
    this.wording = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.activityid, 0);
    paramJceOutputStream.write(this.eggurl, 1);
    paramJceOutputStream.write(this.orbit, 2);
    paramJceOutputStream.write(this.wording, 3);
    if (this.checkurl != null)
      paramJceOutputStream.write(this.checkurl, 4);
    if (this.prizeurl != null)
      paramJceOutputStream.write(this.prizeurl, 5);
    if (this.prize != null)
      paramJceOutputStream.write(this.prize, 6);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.LotteryColorEggs
 * JD-Core Version:    0.6.2
 */