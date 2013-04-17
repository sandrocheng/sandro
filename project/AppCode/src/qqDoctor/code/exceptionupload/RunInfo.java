package exceptionupload;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RunInfo extends JceStruct
  implements Cloneable
{
  private float a = 0.0F;
  private float b = 0.0F;
  private long c = 0L;
  private long d = 0L;
  private long e = 0L;

  static
  {
    if (!RunInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      f = bool;
      return;
    }
  }

  public final void a(float paramFloat)
  {
    this.a = paramFloat;
  }

  public final void a(long paramLong)
  {
    this.c = paramLong;
  }

  public final void b(float paramFloat)
  {
    this.b = paramFloat;
  }

  public final void b(long paramLong)
  {
    this.d = paramLong;
  }

  public final void c(long paramLong)
  {
    this.e = paramLong;
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
        bool = f;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "battery");
    localJceDisplayer.display(this.b, "cpu");
    localJceDisplayer.display(this.c, "freeMem");
    localJceDisplayer.display(this.d, "freeStorage");
    localJceDisplayer.display(this.e, "freeSDCard");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      RunInfo localRunInfo = (RunInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.a, localRunInfo.a);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.b, localRunInfo.b);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.c, localRunInfo.c);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.d, localRunInfo.d);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.e, localRunInfo.e);
              bool1 = false;
              if (bool6)
                bool1 = true;
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
    this.a = paramJceInputStream.read(this.a, 0, true);
    this.b = paramJceInputStream.read(this.b, 1, true);
    this.c = paramJceInputStream.read(this.c, 2, true);
    this.d = paramJceInputStream.read(this.d, 3, true);
    this.e = paramJceInputStream.read(this.e, 4, true);
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
    paramJceOutputStream.write(this.b, 1);
    paramJceOutputStream.write(this.c, 2);
    paramJceOutputStream.write(this.d, 3);
    paramJceOutputStream.write(this.e, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     exceptionupload.RunInfo
 * JD-Core Version:    0.6.2
 */