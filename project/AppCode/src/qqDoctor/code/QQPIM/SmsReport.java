package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class SmsReport extends JceStruct
  implements Cloneable
{
  static int cache_ucAction;
  static int cache_ucContentType;
  static ArrayList<RuleTypeID> cache_vecHitRule;
  static ArrayList<UserActionTime> cache_vecUserAction;
  public String comment = "";
  public int matchTime = 0;
  public int product = 0;
  public String sender = "";
  public String sms = "";
  public int smsType = 0;
  public int ucAction = 0;
  public int ucActionReason = 0;
  public int ucContentType = 0;
  public int ucMinusMark = 0;
  public ArrayList<RuleTypeID> vecHitRule = null;
  public ArrayList<UserActionTime> vecUserAction = null;

  static
  {
    if (!SmsReport.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SmsReport()
  {
    setSender(this.sender);
    setSms(this.sms);
    setMatchTime(this.matchTime);
    setUcAction(this.ucAction);
    setUcActionReason(this.ucActionReason);
    setUcContentType(this.ucContentType);
    setVecHitRule(this.vecHitRule);
    setUcMinusMark(this.ucMinusMark);
    setVecUserAction(this.vecUserAction);
    setComment(this.comment);
    setSmsType(this.smsType);
    setProduct(this.product);
  }

  public SmsReport(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, ArrayList<RuleTypeID> paramArrayList, int paramInt5, ArrayList<UserActionTime> paramArrayList1, String paramString3, int paramInt6, int paramInt7)
  {
    setSender(paramString1);
    setSms(paramString2);
    setMatchTime(paramInt1);
    setUcAction(paramInt2);
    setUcActionReason(paramInt3);
    setUcContentType(paramInt4);
    setVecHitRule(paramArrayList);
    setUcMinusMark(paramInt5);
    setVecUserAction(paramArrayList1);
    setComment(paramString3);
    setSmsType(paramInt6);
    setProduct(paramInt7);
  }

  public final String className()
  {
    return "QQPIM.SmsReport";
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
    localJceDisplayer.display(this.sender, "sender");
    localJceDisplayer.display(this.sms, "sms");
    localJceDisplayer.display(this.matchTime, "matchTime");
    localJceDisplayer.display(this.ucAction, "ucAction");
    localJceDisplayer.display(this.ucActionReason, "ucActionReason");
    localJceDisplayer.display(this.ucContentType, "ucContentType");
    localJceDisplayer.display(this.vecHitRule, "vecHitRule");
    localJceDisplayer.display(this.ucMinusMark, "ucMinusMark");
    localJceDisplayer.display(this.vecUserAction, "vecUserAction");
    localJceDisplayer.display(this.comment, "comment");
    localJceDisplayer.display(this.smsType, "smsType");
    localJceDisplayer.display(this.product, "product");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SmsReport localSmsReport = (SmsReport)paramObject;
      boolean bool2 = JceUtil.equals(this.sender, localSmsReport.sender);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.sms, localSmsReport.sms);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.matchTime, localSmsReport.matchTime);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.ucAction, localSmsReport.ucAction);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.ucActionReason, localSmsReport.ucActionReason);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.ucContentType, localSmsReport.ucContentType);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.vecHitRule, localSmsReport.vecHitRule);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.ucMinusMark, localSmsReport.ucMinusMark);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.vecUserAction, localSmsReport.vecUserAction);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.comment, localSmsReport.comment);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.smsType, localSmsReport.smsType);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.product, localSmsReport.product);
                            bool1 = false;
                            if (bool13)
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
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.SmsReport";
  }

  public final String getComment()
  {
    return this.comment;
  }

  public final int getMatchTime()
  {
    return this.matchTime;
  }

  public final int getProduct()
  {
    return this.product;
  }

  public final String getSender()
  {
    return this.sender;
  }

  public final String getSms()
  {
    return this.sms;
  }

  public final int getSmsType()
  {
    return this.smsType;
  }

  public final int getUcAction()
  {
    return this.ucAction;
  }

  public final int getUcActionReason()
  {
    return this.ucActionReason;
  }

  public final int getUcContentType()
  {
    return this.ucContentType;
  }

  public final int getUcMinusMark()
  {
    return this.ucMinusMark;
  }

  public final ArrayList<RuleTypeID> getVecHitRule()
  {
    return this.vecHitRule;
  }

  public final ArrayList<UserActionTime> getVecUserAction()
  {
    return this.vecUserAction;
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
    this.sender = paramJceInputStream.readString(0, true);
    this.sms = paramJceInputStream.readString(1, true);
    this.matchTime = paramJceInputStream.read(this.matchTime, 2, true);
    this.ucAction = paramJceInputStream.read(this.ucAction, 3, true);
    this.ucActionReason = paramJceInputStream.read(this.ucActionReason, 4, true);
    this.ucContentType = paramJceInputStream.read(this.ucContentType, 5, false);
    if (cache_vecHitRule == null)
    {
      cache_vecHitRule = new ArrayList();
      RuleTypeID localRuleTypeID = new RuleTypeID();
      cache_vecHitRule.add(localRuleTypeID);
    }
    setVecHitRule((ArrayList)paramJceInputStream.read(cache_vecHitRule, 6, false));
    setUcMinusMark(paramJceInputStream.read(this.ucMinusMark, 7, false));
    if (cache_vecUserAction == null)
    {
      cache_vecUserAction = new ArrayList();
      UserActionTime localUserActionTime = new UserActionTime();
      cache_vecUserAction.add(localUserActionTime);
    }
    setVecUserAction((ArrayList)paramJceInputStream.read(cache_vecUserAction, 8, false));
    setComment(paramJceInputStream.readString(9, false));
    setSmsType(paramJceInputStream.read(this.smsType, 10, false));
    setProduct(paramJceInputStream.read(this.product, 11, false));
  }

  public final void setComment(String paramString)
  {
    this.comment = paramString;
  }

  public final void setMatchTime(int paramInt)
  {
    this.matchTime = paramInt;
  }

  public final void setProduct(int paramInt)
  {
    this.product = paramInt;
  }

  public final void setSender(String paramString)
  {
    this.sender = paramString;
  }

  public final void setSms(String paramString)
  {
    this.sms = paramString;
  }

  public final void setSmsType(int paramInt)
  {
    this.smsType = paramInt;
  }

  public final void setUcAction(int paramInt)
  {
    this.ucAction = paramInt;
  }

  public final void setUcActionReason(int paramInt)
  {
    this.ucActionReason = paramInt;
  }

  public final void setUcContentType(int paramInt)
  {
    this.ucContentType = paramInt;
  }

  public final void setUcMinusMark(int paramInt)
  {
    this.ucMinusMark = paramInt;
  }

  public final void setVecHitRule(ArrayList<RuleTypeID> paramArrayList)
  {
    this.vecHitRule = paramArrayList;
  }

  public final void setVecUserAction(ArrayList<UserActionTime> paramArrayList)
  {
    this.vecUserAction = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.sender, 0);
    paramJceOutputStream.write(this.sms, 1);
    paramJceOutputStream.write(this.matchTime, 2);
    paramJceOutputStream.write(this.ucAction, 3);
    paramJceOutputStream.write(this.ucActionReason, 4);
    paramJceOutputStream.write(this.ucContentType, 5);
    if (this.vecHitRule != null)
      paramJceOutputStream.write(this.vecHitRule, 6);
    paramJceOutputStream.write(this.ucMinusMark, 7);
    if (this.vecUserAction != null)
      paramJceOutputStream.write(this.vecUserAction, 8);
    if (this.comment != null)
      paramJceOutputStream.write(this.comment, 9);
    paramJceOutputStream.write(this.smsType, 10);
    paramJceOutputStream.write(this.product, 11);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SmsReport
 * JD-Core Version:    0.6.2
 */