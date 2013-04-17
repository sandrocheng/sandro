package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RestoreGroupReq extends JceStruct
{
  public String sid = "";

  static
  {
    if (!RestoreGroupReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RestoreGroupReq()
  {
    setSid(this.sid);
  }

  public RestoreGroupReq(String paramString)
  {
    setSid(paramString);
  }

  public final String className()
  {
    return "WUPSYNC.RestoreGroupReq";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.sid, "sid");
  }

  public final boolean equals(Object paramObject)
  {
    RestoreGroupReq localRestoreGroupReq = (RestoreGroupReq)paramObject;
    return JceUtil.equals(this.sid, localRestoreGroupReq.sid);
  }

  public final String getSid()
  {
    return this.sid;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.sid = paramJceInputStream.readString(0, true);
  }

  public final void setSid(String paramString)
  {
    this.sid = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.sid, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.RestoreGroupReq
 * JD-Core Version:    0.6.2
 */