package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class LBSKeyData extends JceStruct
{
  static byte[] cache_vAuthName;
  static byte[] cache_vEncryptData;
  public byte[] vAuthName = null;
  public byte[] vEncryptData = null;

  static
  {
    if (!LBSKeyData.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public LBSKeyData()
  {
    setVAuthName(this.vAuthName);
    setVEncryptData(this.vEncryptData);
  }

  public LBSKeyData(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    setVAuthName(paramArrayOfByte1);
    setVEncryptData(paramArrayOfByte2);
  }

  public String className()
  {
    return "LBSAPIProtocol.LBSKeyData";
  }

  public Object clone()
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

  public void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.vAuthName, "vAuthName");
    localJceDisplayer.display(this.vEncryptData, "vEncryptData");
  }

  public boolean equals(Object paramObject)
  {
    LBSKeyData localLBSKeyData = (LBSKeyData)paramObject;
    if ((JceUtil.equals(this.vAuthName, localLBSKeyData.vAuthName)) && (JceUtil.equals(this.vEncryptData, localLBSKeyData.vEncryptData)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public byte[] getVAuthName()
  {
    return this.vAuthName;
  }

  public byte[] getVEncryptData()
  {
    return this.vEncryptData;
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_vAuthName == null)
    {
      cache_vAuthName = (byte[])new byte[1];
      ((byte[])cache_vAuthName)[0] = 0;
    }
    setVAuthName((byte[])paramJceInputStream.read(cache_vAuthName, 0, true));
    if (cache_vEncryptData == null)
    {
      cache_vEncryptData = (byte[])new byte[1];
      ((byte[])cache_vEncryptData)[0] = 0;
    }
    setVEncryptData((byte[])paramJceInputStream.read(cache_vEncryptData, 1, true));
  }

  public void setVAuthName(byte[] paramArrayOfByte)
  {
    this.vAuthName = paramArrayOfByte;
  }

  public void setVEncryptData(byte[] paramArrayOfByte)
  {
    this.vEncryptData = paramArrayOfByte;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.vAuthName, 0);
    paramJceOutputStream.write(this.vEncryptData, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.LBSKeyData
 * JD-Core Version:    0.6.2
 */