package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class QQInfo extends JceStruct
  implements Cloneable
{
  static ServerCmdInfo cache_cmdinfo;
  static ArrayList<ClientVersionInfo> cache_vecclient;
  public ServerCmdInfo cmdinfo = null;
  public String loginkey = "";
  public String username = "";
  public ArrayList<ClientVersionInfo> vecclient = null;

  static
  {
    if (!QQInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public QQInfo()
  {
    setUsername(this.username);
    setLoginkey(this.loginkey);
    setVecclient(this.vecclient);
    setCmdinfo(this.cmdinfo);
  }

  public QQInfo(String paramString1, String paramString2, ArrayList<ClientVersionInfo> paramArrayList, ServerCmdInfo paramServerCmdInfo)
  {
    setUsername(paramString1);
    setLoginkey(paramString2);
    setVecclient(paramArrayList);
    setCmdinfo(paramServerCmdInfo);
  }

  public final String className()
  {
    return "QQPIM.QQInfo";
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
    localJceDisplayer.display(this.username, "username");
    localJceDisplayer.display(this.loginkey, "loginkey");
    localJceDisplayer.display(this.vecclient, "vecclient");
    localJceDisplayer.display(this.cmdinfo, "cmdinfo");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      QQInfo localQQInfo = (QQInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.username, localQQInfo.username);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.loginkey, localQQInfo.loginkey);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.vecclient, localQQInfo.vecclient);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.cmdinfo, localQQInfo.cmdinfo);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.QQInfo";
  }

  public final ServerCmdInfo getCmdinfo()
  {
    return this.cmdinfo;
  }

  public final String getLoginkey()
  {
    return this.loginkey;
  }

  public final String getUsername()
  {
    return this.username;
  }

  public final ArrayList<ClientVersionInfo> getVecclient()
  {
    return this.vecclient;
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
    this.username = paramJceInputStream.readString(0, true);
    this.loginkey = paramJceInputStream.readString(1, true);
    if (cache_vecclient == null)
    {
      cache_vecclient = new ArrayList();
      ClientVersionInfo localClientVersionInfo = new ClientVersionInfo();
      cache_vecclient.add(localClientVersionInfo);
    }
    setVecclient((ArrayList)paramJceInputStream.read(cache_vecclient, 2, false));
    if (cache_cmdinfo == null)
      cache_cmdinfo = new ServerCmdInfo();
    setCmdinfo((ServerCmdInfo)paramJceInputStream.read(cache_cmdinfo, 3, false));
  }

  public final void setCmdinfo(ServerCmdInfo paramServerCmdInfo)
  {
    this.cmdinfo = paramServerCmdInfo;
  }

  public final void setLoginkey(String paramString)
  {
    this.loginkey = paramString;
  }

  public final void setUsername(String paramString)
  {
    this.username = paramString;
  }

  public final void setVecclient(ArrayList<ClientVersionInfo> paramArrayList)
  {
    this.vecclient = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.username, 0);
    paramJceOutputStream.write(this.loginkey, 1);
    if (this.vecclient != null)
      paramJceOutputStream.write(this.vecclient, 2);
    if (this.cmdinfo != null)
      paramJceOutputStream.write(this.cmdinfo, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.QQInfo
 * JD-Core Version:    0.6.2
 */