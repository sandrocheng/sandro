package com.tencent.tmsecure.module.qscanner;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class QScanRecord extends JceStruct
  implements Cloneable
{
  private static QScanResult a;
  public long id = 0L;
  public QScanResult result = null;
  public int state = 0;

  static
  {
    if (!QScanRecord.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      b = bool;
      return;
    }
  }

  public QScanRecord()
  {
    setId(this.id);
    setResult(this.result);
    setState(this.state);
  }

  public QScanRecord(long paramLong, QScanResult paramQScanResult, int paramInt)
  {
    setId(paramLong);
    setResult(paramQScanResult);
    setState(paramInt);
  }

  public final String className()
  {
    return "QQPIM.QScanRecord";
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
    localJceDisplayer.display(this.result, "result");
    localJceDisplayer.display(this.state, "state");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject != null)
    {
      boolean bool2 = paramObject instanceof QScanRecord;
      bool1 = false;
      if (bool2)
      {
        QScanRecord localQScanRecord = (QScanRecord)paramObject;
        bool1 = false;
        if (localQScanRecord != null)
        {
          boolean bool3 = JceUtil.equals(this.id, localQScanRecord.id);
          bool1 = false;
          if (bool3)
          {
            boolean bool4 = JceUtil.equals(this.result, localQScanRecord.result);
            bool1 = false;
            if (bool4)
            {
              boolean bool5 = JceUtil.equals(this.state, localQScanRecord.state);
              bool1 = false;
              if (bool5)
                bool1 = true;
            }
          }
        }
      }
    }
    return bool1;
  }

  public final String fullClassName()
  {
    return "QQPIM.QScanRecord";
  }

  public final long getId()
  {
    return this.id;
  }

  public final QScanResult getResult()
  {
    return this.result;
  }

  public final int getState()
  {
    return this.state;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.id = paramJceInputStream.read(this.id, 0, true);
    if (a == null)
      a = new QScanResult();
    this.result = ((QScanResult)paramJceInputStream.read(a, 1, true));
    this.state = paramJceInputStream.read(this.state, 2, false);
  }

  public final void setId(long paramLong)
  {
    this.id = paramLong;
  }

  public final void setResult(QScanResult paramQScanResult)
  {
    this.result = paramQScanResult;
  }

  public final void setState(int paramInt)
  {
    this.state = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.id, 0);
    paramJceOutputStream.write(this.result, 1);
    paramJceOutputStream.write(this.state, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.qscanner.QScanRecord
 * JD-Core Version:    0.6.2
 */