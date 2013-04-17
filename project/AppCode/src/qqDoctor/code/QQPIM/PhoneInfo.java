package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class PhoneInfo extends JceStruct
  implements Cloneable
{
  static ArrayList<Mark> cache_marks;
  static ArrayList<PhoneInfoItem> cache_phoneinfoitems;
  static byte[] cache_vLBSKeyData;
  public String localaddr = "";
  public ArrayList<Mark> marks = null;
  public ArrayList<PhoneInfoItem> phoneinfoitems = null;
  public byte[] vLBSKeyData = null;

  static
  {
    if (!PhoneInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PhoneInfo()
  {
    setPhoneinfoitems(this.phoneinfoitems);
    setMarks(this.marks);
    setVLBSKeyData(this.vLBSKeyData);
    setLocaladdr(this.localaddr);
  }

  public PhoneInfo(ArrayList<PhoneInfoItem> paramArrayList, ArrayList<Mark> paramArrayList1, byte[] paramArrayOfByte, String paramString)
  {
    setPhoneinfoitems(paramArrayList);
    setMarks(paramArrayList1);
    setVLBSKeyData(paramArrayOfByte);
    setLocaladdr(paramString);
  }

  public final String className()
  {
    return "QQPIM.PhoneInfo";
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
    localJceDisplayer.display(this.phoneinfoitems, "phoneinfoitems");
    localJceDisplayer.display(this.marks, "marks");
    localJceDisplayer.display(this.vLBSKeyData, "vLBSKeyData");
    localJceDisplayer.display(this.localaddr, "localaddr");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      PhoneInfo localPhoneInfo = (PhoneInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.phoneinfoitems, localPhoneInfo.phoneinfoitems);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.marks, localPhoneInfo.marks);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.vLBSKeyData, localPhoneInfo.vLBSKeyData);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.localaddr, localPhoneInfo.localaddr);
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
    return "QQPIM.PhoneInfo";
  }

  public final String getLocaladdr()
  {
    return this.localaddr;
  }

  public final ArrayList<Mark> getMarks()
  {
    return this.marks;
  }

  public final ArrayList<PhoneInfoItem> getPhoneinfoitems()
  {
    return this.phoneinfoitems;
  }

  public final byte[] getVLBSKeyData()
  {
    return this.vLBSKeyData;
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
    if (cache_phoneinfoitems == null)
    {
      cache_phoneinfoitems = new ArrayList();
      PhoneInfoItem localPhoneInfoItem = new PhoneInfoItem();
      cache_phoneinfoitems.add(localPhoneInfoItem);
    }
    setPhoneinfoitems((ArrayList)paramJceInputStream.read(cache_phoneinfoitems, 0, false));
    if (cache_marks == null)
    {
      cache_marks = new ArrayList();
      Mark localMark = new Mark();
      cache_marks.add(localMark);
    }
    setMarks((ArrayList)paramJceInputStream.read(cache_marks, 1, false));
    if (cache_vLBSKeyData == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_vLBSKeyData = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    setVLBSKeyData(paramJceInputStream.read(cache_vLBSKeyData, 2, false));
    setLocaladdr(paramJceInputStream.readString(3, false));
  }

  public final void setLocaladdr(String paramString)
  {
    this.localaddr = paramString;
  }

  public final void setMarks(ArrayList<Mark> paramArrayList)
  {
    this.marks = paramArrayList;
  }

  public final void setPhoneinfoitems(ArrayList<PhoneInfoItem> paramArrayList)
  {
    this.phoneinfoitems = paramArrayList;
  }

  public final void setVLBSKeyData(byte[] paramArrayOfByte)
  {
    this.vLBSKeyData = paramArrayOfByte;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.phoneinfoitems != null)
      paramJceOutputStream.write(this.phoneinfoitems, 0);
    if (this.marks != null)
      paramJceOutputStream.write(this.marks, 1);
    if (this.vLBSKeyData != null)
      paramJceOutputStream.write(this.vLBSKeyData, 2);
    if (this.localaddr != null)
      paramJceOutputStream.write(this.localaddr, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.PhoneInfo
 * JD-Core Version:    0.6.2
 */