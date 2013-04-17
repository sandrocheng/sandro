package exceptionupload;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ContactInfo extends JceStruct
{
  private String a = "";
  private String b = "";
  private String c = "";
  private String d = "";
  private String e = "";
  private String f = "";

  static
  {
    if (!ContactInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      g = bool;
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
        bool = g;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "all");
    localJceDisplayer.display(this.b, "tel");
    localJceDisplayer.display(this.c, "qua");
    localJceDisplayer.display(this.d, "email");
    localJceDisplayer.display(this.e, "comment");
    localJceDisplayer.display(this.f, "other");
  }

  public final boolean equals(Object paramObject)
  {
    ContactInfo localContactInfo = (ContactInfo)paramObject;
    if ((JceUtil.equals(this.a, localContactInfo.a)) && (JceUtil.equals(this.b, localContactInfo.b)) && (JceUtil.equals(this.c, localContactInfo.c)) && (JceUtil.equals(this.d, localContactInfo.d)) && (JceUtil.equals(this.e, localContactInfo.e)) && (JceUtil.equals(this.f, localContactInfo.f)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.a = paramJceInputStream.readString(0, true);
    this.b = paramJceInputStream.readString(1, true);
    this.c = paramJceInputStream.readString(2, true);
    this.d = paramJceInputStream.readString(3, true);
    this.e = paramJceInputStream.readString(4, true);
    this.f = paramJceInputStream.readString(5, false);
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
    paramJceOutputStream.write(this.b, 1);
    paramJceOutputStream.write(this.c, 2);
    paramJceOutputStream.write(this.d, 3);
    paramJceOutputStream.write(this.e, 4);
    if (this.f != null)
      paramJceOutputStream.write(this.f, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     exceptionupload.ContactInfo
 * JD-Core Version:    0.6.2
 */