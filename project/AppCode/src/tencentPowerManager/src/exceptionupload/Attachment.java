package exceptionupload;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Attachment extends JceStruct
{
  private static byte[] d;
  private byte a = 0;
  private String b = "";
  private byte[] c = null;

  static
  {
    if (!Attachment.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      e = bool;
      return;
    }
  }

  public final void a(byte paramByte)
  {
    this.a = paramByte;
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final void a(byte[] paramArrayOfByte)
  {
    this.c = paramArrayOfByte;
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
        bool = e;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "type");
    localJceDisplayer.display(this.b, "fileName");
    localJceDisplayer.display(this.c, "data");
  }

  public final boolean equals(Object paramObject)
  {
    Attachment localAttachment = (Attachment)paramObject;
    if ((JceUtil.equals(this.a, localAttachment.a)) && (JceUtil.equals(this.b, localAttachment.b)) && (JceUtil.equals(this.c, localAttachment.c)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.a = paramJceInputStream.read(this.a, 0, true);
    this.b = paramJceInputStream.readString(1, false);
    if (d == null)
    {
      byte[] arrayOfByte = new byte[1];
      d = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.c = paramJceInputStream.read(d, 2, true);
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
    if (this.b != null)
      paramJceOutputStream.write(this.b, 1);
    paramJceOutputStream.write(this.c, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     exceptionupload.Attachment
 * JD-Core Version:    0.6.2
 */