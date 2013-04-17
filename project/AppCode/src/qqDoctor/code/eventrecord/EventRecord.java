package eventrecord;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class EventRecord extends JceStruct
  implements Cloneable
{
  private String a = "";
  private String b = "";
  private String c = "";
  private boolean d = true;
  private long e = 0L;
  private long f = 0L;
  private String g = "";
  private long h = 0L;

  static
  {
    if (!EventRecord.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      i = bool;
      return;
    }
  }

  public final void a(long paramLong)
  {
    this.e = paramLong;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public final void b(long paramLong)
  {
    this.f = paramLong;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
  }

  public final void c(long paramLong)
  {
    this.h = paramLong;
  }

  public final void c(String paramString)
  {
    this.c = paramString;
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
        bool = i;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void d(String paramString)
  {
    this.g = paramString;
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "apn");
    localJceDisplayer.display(this.b, "srcIp");
    localJceDisplayer.display(this.c, "eventName");
    localJceDisplayer.display(this.d, "eventResult");
    localJceDisplayer.display(this.e, "packageSize");
    localJceDisplayer.display(this.f, "cosumeTime");
    localJceDisplayer.display(this.g, "eventValue");
    localJceDisplayer.display(this.h, "eventTime");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      EventRecord localEventRecord = (EventRecord)paramObject;
      boolean bool2 = JceUtil.equals(this.a, localEventRecord.a);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.b, localEventRecord.b);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.c, localEventRecord.c);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.d, localEventRecord.d);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.e, localEventRecord.e);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.f, localEventRecord.f);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.g, localEventRecord.g);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.h, localEventRecord.h);
                    bool1 = false;
                    if (bool9)
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
    this.a = paramJceInputStream.readString(0, true);
    this.b = paramJceInputStream.readString(1, true);
    this.c = paramJceInputStream.readString(2, true);
    this.d = paramJceInputStream.read(this.d, 3, true);
    this.e = paramJceInputStream.read(this.e, 4, true);
    this.f = paramJceInputStream.read(this.f, 5, true);
    this.g = paramJceInputStream.readString(6, true);
    this.h = paramJceInputStream.read(this.h, 7, true);
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
    paramJceOutputStream.write(this.b, 1);
    paramJceOutputStream.write(this.c, 2);
    paramJceOutputStream.write(this.d, 3);
    paramJceOutputStream.write(this.e, 4);
    paramJceOutputStream.write(this.f, 5);
    paramJceOutputStream.write(this.g, 6);
    paramJceOutputStream.write(this.h, 7);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     eventrecord.EventRecord
 * JD-Core Version:    0.6.2
 */