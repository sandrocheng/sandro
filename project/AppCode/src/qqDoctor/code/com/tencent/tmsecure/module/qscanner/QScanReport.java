package com.tencent.tmsecure.module.qscanner;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class QScanReport extends JceStruct
  implements Cloneable
{
  private static ArrayList<QScanRecord> a;
  public long id = 0L;
  public ArrayList<QScanRecord> records = null;
  public int riskFound = 0;
  public String tips = "";
  public int type = 0;
  public int virusCured = 0;
  public int virusFound = 0;
  public int waitDealing = 0;

  static
  {
    if (!QScanReport.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      b = bool;
      return;
    }
  }

  public QScanReport()
  {
    setId(this.id);
    setRecords(this.records);
    setType(this.type);
    setVirusFound(this.virusFound);
    setVirusCured(this.virusCured);
    setWaitDealing(this.waitDealing);
    setRiskFound(this.riskFound);
    setTips(this.tips);
  }

  public QScanReport(long paramLong, ArrayList<QScanRecord> paramArrayList, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, String paramString)
  {
    setId(paramLong);
    setRecords(paramArrayList);
    setType(paramInt1);
    setVirusFound(paramInt2);
    setVirusCured(paramInt3);
    setWaitDealing(paramInt4);
    setRiskFound(paramInt5);
    setTips(paramString);
  }

  public final String className()
  {
    return "QQPIM.QScanReport";
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
        bool = b;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.id, "id");
    localJceDisplayer.display(this.records, "records");
    localJceDisplayer.display(this.type, "type");
    localJceDisplayer.display(this.virusFound, "virusFound");
    localJceDisplayer.display(this.virusCured, "virusCured");
    localJceDisplayer.display(this.waitDealing, "waitDealing");
    localJceDisplayer.display(this.riskFound, "riskFound");
    localJceDisplayer.display(this.tips, "tips");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject != null)
    {
      boolean bool2 = paramObject instanceof QScanReport;
      bool1 = false;
      if (bool2)
      {
        QScanReport localQScanReport = (QScanReport)paramObject;
        bool1 = false;
        if (localQScanReport != null)
        {
          boolean bool3 = JceUtil.equals(this.id, localQScanReport.id);
          bool1 = false;
          if (bool3)
          {
            boolean bool4 = JceUtil.equals(this.records, localQScanReport.records);
            bool1 = false;
            if (bool4)
            {
              boolean bool5 = JceUtil.equals(this.type, localQScanReport.type);
              bool1 = false;
              if (bool5)
              {
                boolean bool6 = JceUtil.equals(this.virusFound, localQScanReport.virusFound);
                bool1 = false;
                if (bool6)
                {
                  boolean bool7 = JceUtil.equals(this.virusCured, localQScanReport.virusCured);
                  bool1 = false;
                  if (bool7)
                  {
                    boolean bool8 = JceUtil.equals(this.waitDealing, localQScanReport.waitDealing);
                    bool1 = false;
                    if (bool8)
                    {
                      boolean bool9 = JceUtil.equals(this.riskFound, localQScanReport.riskFound);
                      bool1 = false;
                      if (bool9)
                      {
                        boolean bool10 = JceUtil.equals(this.tips, localQScanReport.tips);
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
    return bool1;
  }

  public final String fullClassName()
  {
    return "QQPIM.QScanReport";
  }

  public final long getId()
  {
    return this.id;
  }

  public final ArrayList<QScanRecord> getRecords()
  {
    return this.records;
  }

  public final int getRiskFound()
  {
    return this.riskFound;
  }

  public final String getTips()
  {
    return this.tips;
  }

  public final int getType()
  {
    return this.type;
  }

  public final int getVirusCured()
  {
    return this.virusCured;
  }

  public final int getVirusFound()
  {
    return this.virusFound;
  }

  public final int getWaitDealing()
  {
    return this.waitDealing;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.id = paramJceInputStream.read(this.id, 0, true);
    if (a == null)
    {
      a = new ArrayList();
      QScanRecord localQScanRecord = new QScanRecord();
      a.add(localQScanRecord);
    }
    setRecords((ArrayList)paramJceInputStream.read(a, 1, true));
    setType(paramJceInputStream.read(this.type, 2, true));
    setVirusFound(paramJceInputStream.read(this.virusFound, 3, false));
    setVirusCured(paramJceInputStream.read(this.virusCured, 4, false));
    setWaitDealing(paramJceInputStream.read(this.waitDealing, 5, false));
    setRiskFound(paramJceInputStream.read(this.riskFound, 6, false));
    setTips(paramJceInputStream.readString(7, false));
  }

  public final void setId(long paramLong)
  {
    this.id = paramLong;
  }

  public final void setRecords(ArrayList<QScanRecord> paramArrayList)
  {
    this.records = paramArrayList;
  }

  public final void setRiskFound(int paramInt)
  {
    this.riskFound = paramInt;
  }

  public final void setTips(String paramString)
  {
    this.tips = paramString;
  }

  public final void setType(int paramInt)
  {
    this.type = paramInt;
  }

  public final void setVirusCured(int paramInt)
  {
    this.virusCured = paramInt;
  }

  public final void setVirusFound(int paramInt)
  {
    this.virusFound = paramInt;
  }

  public final void setWaitDealing(int paramInt)
  {
    this.waitDealing = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.id, 0);
    paramJceOutputStream.write(this.records, 1);
    paramJceOutputStream.write(this.type, 2);
    paramJceOutputStream.write(this.virusFound, 3);
    paramJceOutputStream.write(this.virusCured, 4);
    paramJceOutputStream.write(this.waitDealing, 5);
    paramJceOutputStream.write(this.riskFound, 6);
    if (this.tips != null)
      paramJceOutputStream.write(this.tips, 7);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.qscanner.QScanReport
 * JD-Core Version:    0.6.2
 */