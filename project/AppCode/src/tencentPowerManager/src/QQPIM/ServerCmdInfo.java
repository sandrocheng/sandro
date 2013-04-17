package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class ServerCmdInfo extends JceStruct
  implements Cloneable
{
  static ArrayList<CloudInfo> cache_cloudinfos;
  public ArrayList<CloudInfo> cloudinfos = null;
  public String newtipsid = "";
  public int nextcheckinterval = 0;

  static
  {
    if (!ServerCmdInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ServerCmdInfo()
  {
    setCloudinfos(this.cloudinfos);
    setNextcheckinterval(this.nextcheckinterval);
    setNewtipsid(this.newtipsid);
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
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.cloudinfos, "cloudinfos");
    localJceDisplayer.display(this.nextcheckinterval, "nextcheckinterval");
    localJceDisplayer.display(this.newtipsid, "newtipsid");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ServerCmdInfo localServerCmdInfo = (ServerCmdInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.cloudinfos, localServerCmdInfo.cloudinfos);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.nextcheckinterval, localServerCmdInfo.nextcheckinterval);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.newtipsid, localServerCmdInfo.newtipsid);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final ArrayList<CloudInfo> getCloudinfos()
  {
    return this.cloudinfos;
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
    if (cache_cloudinfos == null)
    {
      cache_cloudinfos = new ArrayList();
      CloudInfo localCloudInfo = new CloudInfo();
      cache_cloudinfos.add(localCloudInfo);
    }
    setCloudinfos((ArrayList)paramJceInputStream.read(cache_cloudinfos, 1, true));
    setNextcheckinterval(paramJceInputStream.read(this.nextcheckinterval, 2, true));
    setNewtipsid(paramJceInputStream.readString(3, false));
  }

  public final void setCloudinfos(ArrayList<CloudInfo> paramArrayList)
  {
    this.cloudinfos = paramArrayList;
  }

  public final void setNewtipsid(String paramString)
  {
    this.newtipsid = paramString;
  }

  public final void setNextcheckinterval(int paramInt)
  {
    this.nextcheckinterval = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.cloudinfos, 1);
    paramJceOutputStream.write(this.nextcheckinterval, 2);
    if (this.newtipsid != null)
      paramJceOutputStream.write(this.newtipsid, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.ServerCmdInfo
 * JD-Core Version:    0.6.2
 */