package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RuleTypeID extends JceStruct
  implements Cloneable
{
  public int ucRuleType = 0;
  public int uiRuleID = 0;

  static
  {
    if (!RuleTypeID.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RuleTypeID()
  {
    setUcRuleType(this.ucRuleType);
    setUiRuleID(this.uiRuleID);
  }

  public RuleTypeID(int paramInt1, int paramInt2)
  {
    setUcRuleType(paramInt1);
    setUiRuleID(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.RuleTypeID";
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
    localJceDisplayer.display(this.ucRuleType, "ucRuleType");
    localJceDisplayer.display(this.uiRuleID, "uiRuleID");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      RuleTypeID localRuleTypeID = (RuleTypeID)paramObject;
      boolean bool2 = JceUtil.equals(this.ucRuleType, localRuleTypeID.ucRuleType);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.uiRuleID, localRuleTypeID.uiRuleID);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.RuleTypeID";
  }

  public final int getUcRuleType()
  {
    return this.ucRuleType;
  }

  public final int getUiRuleID()
  {
    return this.uiRuleID;
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
    this.ucRuleType = paramJceInputStream.read(this.ucRuleType, 0, true);
    this.uiRuleID = paramJceInputStream.read(this.uiRuleID, 1, true);
  }

  public final void setUcRuleType(int paramInt)
  {
    this.ucRuleType = paramInt;
  }

  public final void setUiRuleID(int paramInt)
  {
    this.uiRuleID = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.ucRuleType, 0);
    paramJceOutputStream.write(this.uiRuleID, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.RuleTypeID
 * JD-Core Version:    0.6.2
 */