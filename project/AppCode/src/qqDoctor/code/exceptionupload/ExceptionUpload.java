package exceptionupload;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class ExceptionUpload extends JceStruct
  implements Cloneable
{
  private static ArrayList m;
  private static MobileDetail n;
  private static RunInfo o;
  private static ContactInfo p;
  private String a = "";
  private String b = "";
  private String c = "";
  private long d = 0L;
  private ArrayList e = null;
  private String f = "";
  private String g = "";
  private String h = "";
  private MobileDetail i = null;
  private RunInfo j = null;
  private ContactInfo k = null;
  private String l = "";

  static
  {
    if (!ExceptionUpload.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      q = bool;
      return;
    }
  }

  public final void a(long paramLong)
  {
    this.d = paramLong;
  }

  public final void a(ContactInfo paramContactInfo)
  {
    this.k = paramContactInfo;
  }

  public final void a(MobileDetail paramMobileDetail)
  {
    this.i = paramMobileDetail;
  }

  public final void a(RunInfo paramRunInfo)
  {
    this.j = paramRunInfo;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final void a(ArrayList paramArrayList)
  {
    this.e = paramArrayList;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
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
        bool = q;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void d(String paramString)
  {
    this.f = paramString;
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "exceptionType");
    localJceDisplayer.display(this.b, "excepitonAddress");
    localJceDisplayer.display(this.c, "hash");
    localJceDisplayer.display(this.d, "cashTime");
    localJceDisplayer.display(this.e, "attachmentList");
    localJceDisplayer.display(this.f, "threadName");
    localJceDisplayer.display(this.g, "callStack");
    localJceDisplayer.display(this.h, "causeBy");
    localJceDisplayer.display(this.i, "mobile");
    localJceDisplayer.display(this.j, "runInfo");
    localJceDisplayer.display(this.k, "contact");
    localJceDisplayer.display(this.l, "crashDetail");
  }

  public final void e(String paramString)
  {
    this.g = paramString;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ExceptionUpload localExceptionUpload = (ExceptionUpload)paramObject;
      boolean bool2 = JceUtil.equals(this.a, localExceptionUpload.a);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.b, localExceptionUpload.b);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.c, localExceptionUpload.c);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.d, localExceptionUpload.d);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.e, localExceptionUpload.e);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.f, localExceptionUpload.f);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.g, localExceptionUpload.g);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.h, localExceptionUpload.h);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.i, localExceptionUpload.i);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.j, localExceptionUpload.j);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.k, localExceptionUpload.k);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.l, localExceptionUpload.l);
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

  public final void f(String paramString)
  {
    this.h = paramString;
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
    this.b = paramJceInputStream.readString(1, false);
    this.c = paramJceInputStream.readString(2, false);
    this.d = paramJceInputStream.read(this.d, 3, true);
    if (m == null)
    {
      m = new ArrayList();
      Attachment localAttachment = new Attachment();
      m.add(localAttachment);
    }
    this.e = ((ArrayList)paramJceInputStream.read(m, 4, true));
    this.f = paramJceInputStream.readString(5, false);
    this.g = paramJceInputStream.readString(6, false);
    this.h = paramJceInputStream.readString(7, false);
    if (n == null)
      n = new MobileDetail();
    this.i = ((MobileDetail)paramJceInputStream.read(n, 8, false));
    if (o == null)
      o = new RunInfo();
    this.j = ((RunInfo)paramJceInputStream.read(o, 9, false));
    if (p == null)
      p = new ContactInfo();
    this.k = ((ContactInfo)paramJceInputStream.read(p, 10, false));
    this.l = paramJceInputStream.readString(11, false);
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
    if (this.b != null)
      paramJceOutputStream.write(this.b, 1);
    if (this.c != null)
      paramJceOutputStream.write(this.c, 2);
    paramJceOutputStream.write(this.d, 3);
    paramJceOutputStream.write(this.e, 4);
    if (this.f != null)
      paramJceOutputStream.write(this.f, 5);
    if (this.g != null)
      paramJceOutputStream.write(this.g, 6);
    if (this.h != null)
      paramJceOutputStream.write(this.h, 7);
    if (this.i != null)
      paramJceOutputStream.write(this.i, 8);
    if (this.j != null)
      paramJceOutputStream.write(this.j, 9);
    if (this.k != null)
      paramJceOutputStream.write(this.k, 10);
    if (this.l != null)
      paramJceOutputStream.write(this.l, 11);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     exceptionupload.ExceptionUpload
 * JD-Core Version:    0.6.2
 */