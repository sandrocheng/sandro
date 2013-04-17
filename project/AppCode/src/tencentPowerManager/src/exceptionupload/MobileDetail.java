package exceptionupload;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MobileDetail extends JceStruct
{
  private String a = "";
  private String b = "";

  static
  {
    if (!MobileDetail.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      c = bool;
      return;
    }
  }

  public final void a(String paramString)
  {
    this.a = paramString;
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
        bool = c;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "symbol");
    localJceDisplayer.display(this.b, "other");
  }

  public final boolean equals(Object paramObject)
  {
    MobileDetail localMobileDetail = (MobileDetail)paramObject;
    if ((JceUtil.equals(this.a, localMobileDetail.a)) && (JceUtil.equals(this.b, localMobileDetail.b)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.a = paramJceInputStream.readString(0, true);
    this.b = paramJceInputStream.readString(1, false);
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
    if (this.b != null)
      paramJceOutputStream.write(this.b, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     exceptionupload.MobileDetail
 * JD-Core Version:    0.6.2
 */