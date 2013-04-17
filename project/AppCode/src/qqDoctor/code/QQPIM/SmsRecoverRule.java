package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SmsRecoverRule extends JceStruct
  implements Cloneable
{
  public int begintime = 0;
  public int endtime = 0;
  public String rule = "";

  static
  {
    if (!SmsRecoverRule.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SmsRecoverRule()
  {
    setRule(this.rule);
    setBegintime(this.begintime);
    setEndtime(this.endtime);
  }

  public SmsRecoverRule(String paramString, int paramInt1, int paramInt2)
  {
    setRule(paramString);
    setBegintime(paramInt1);
    setEndtime(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.SmsRecoverRule";
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
    localJceDisplayer.display(this.rule, "rule");
    localJceDisplayer.display(this.begintime, "begintime");
    localJceDisplayer.display(this.endtime, "endtime");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SmsRecoverRule localSmsRecoverRule = (SmsRecoverRule)paramObject;
      boolean bool2 = JceUtil.equals(this.rule, localSmsRecoverRule.rule);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.begintime, localSmsRecoverRule.begintime);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.endtime, localSmsRecoverRule.endtime);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.SmsRecoverRule";
  }

  public final int getBegintime()
  {
    return this.begintime;
  }

  public final int getEndtime()
  {
    return this.endtime;
  }

  public final String getRule()
  {
    return this.rule;
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
    this.rule = paramJceInputStream.readString(0, true);
    this.begintime = paramJceInputStream.read(this.begintime, 1, true);
    this.endtime = paramJceInputStream.read(this.endtime, 2, true);
  }

  public final void setBegintime(int paramInt)
  {
    this.begintime = paramInt;
  }

  public final void setEndtime(int paramInt)
  {
    this.endtime = paramInt;
  }

  public final void setRule(String paramString)
  {
    this.rule = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.rule, 0);
    paramJceOutputStream.write(this.begintime, 1);
    paramJceOutputStream.write(this.endtime, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SmsRecoverRule
 * JD-Core Version:    0.6.2
 */