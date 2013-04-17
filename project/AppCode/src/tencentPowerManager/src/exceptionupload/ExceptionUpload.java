package exceptionupload;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class ExceptionUpload extends JceStruct
{
  private static ArrayList l;
  private static MobileDetail m;
  private static RunInfo n;
  private static ContactInfo o;
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

  static
  {
    if (!ExceptionUpload.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      p = bool;
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
        bool = p;
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
  }

  public final void e(String paramString)
  {
    this.g = paramString;
  }

  public final boolean equals(Object paramObject)
  {
    ExceptionUpload localExceptionUpload = (ExceptionUpload)paramObject;
    if ((JceUtil.equals(this.a, localExceptionUpload.a)) && (JceUtil.equals(this.b, localExceptionUpload.b)) && (JceUtil.equals(this.c, localExceptionUpload.c)) && (JceUtil.equals(this.d, localExceptionUpload.d)) && (JceUtil.equals(this.e, localExceptionUpload.e)) && (JceUtil.equals(this.f, localExceptionUpload.f)) && (JceUtil.equals(this.g, localExceptionUpload.g)) && (JceUtil.equals(this.h, localExceptionUpload.h)) && (JceUtil.equals(this.i, localExceptionUpload.i)) && (JceUtil.equals(this.j, localExceptionUpload.j)) && (JceUtil.equals(this.k, localExceptionUpload.k)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void f(String paramString)
  {
    this.h = paramString;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.a = paramJceInputStream.readString(0, true);
    this.b = paramJceInputStream.readString(1, false);
    this.c = paramJceInputStream.readString(2, false);
    this.d = paramJceInputStream.read(this.d, 3, true);
    if (l == null)
    {
      l = new ArrayList();
      Attachment localAttachment = new Attachment();
      l.add(localAttachment);
    }
    this.e = ((ArrayList)paramJceInputStream.read(l, 4, true));
    this.f = paramJceInputStream.readString(5, false);
    this.g = paramJceInputStream.readString(6, false);
    this.h = paramJceInputStream.readString(7, false);
    if (m == null)
      m = new MobileDetail();
    this.i = ((MobileDetail)paramJceInputStream.read(m, 8, false));
    if (n == null)
      n = new RunInfo();
    this.j = ((RunInfo)paramJceInputStream.read(n, 9, false));
    if (o == null)
      o = new ContactInfo();
    this.k = ((ContactInfo)paramJceInputStream.read(o, 10, false));
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
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     exceptionupload.ExceptionUpload
 * JD-Core Version:    0.6.2
 */