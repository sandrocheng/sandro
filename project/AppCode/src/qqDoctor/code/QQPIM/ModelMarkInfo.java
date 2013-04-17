package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class ModelMarkInfo extends JceStruct
  implements Cloneable
{
  static ArrayList<Mark> cache_marks;
  static Mobile cache_mobile;
  static PhoneInfo cache_phoneinfo;
  public int mark = 0;
  public ArrayList<Mark> marks = null;
  public Mobile mobile = null;
  public PhoneInfo phoneinfo = null;

  static
  {
    if (!ModelMarkInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ModelMarkInfo()
  {
    setMobile(this.mobile);
    setMarks(this.marks);
    setMark(this.mark);
    setPhoneinfo(this.phoneinfo);
  }

  public ModelMarkInfo(Mobile paramMobile, ArrayList<Mark> paramArrayList, int paramInt, PhoneInfo paramPhoneInfo)
  {
    setMobile(paramMobile);
    setMarks(paramArrayList);
    setMark(paramInt);
    setPhoneinfo(paramPhoneInfo);
  }

  public final String className()
  {
    return "QQPIM.ModelMarkInfo";
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
    localJceDisplayer.display(this.mobile, "mobile");
    localJceDisplayer.display(this.marks, "marks");
    localJceDisplayer.display(this.mark, "mark");
    localJceDisplayer.display(this.phoneinfo, "phoneinfo");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ModelMarkInfo localModelMarkInfo = (ModelMarkInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.mobile, localModelMarkInfo.mobile);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.marks, localModelMarkInfo.marks);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.mark, localModelMarkInfo.mark);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.phoneinfo, localModelMarkInfo.phoneinfo);
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
    return "QQPIM.ModelMarkInfo";
  }

  public final int getMark()
  {
    return this.mark;
  }

  public final ArrayList<Mark> getMarks()
  {
    return this.marks;
  }

  public final Mobile getMobile()
  {
    return this.mobile;
  }

  public final PhoneInfo getPhoneinfo()
  {
    return this.phoneinfo;
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
    if (cache_mobile == null)
      cache_mobile = new Mobile();
    this.mobile = ((Mobile)paramJceInputStream.read(cache_mobile, 0, true));
    if (cache_marks == null)
    {
      cache_marks = new ArrayList();
      Mark localMark = new Mark();
      cache_marks.add(localMark);
    }
    setMarks((ArrayList)paramJceInputStream.read(cache_marks, 1, true));
    setMark(paramJceInputStream.read(this.mark, 2, true));
    if (cache_phoneinfo == null)
      cache_phoneinfo = new PhoneInfo();
    setPhoneinfo((PhoneInfo)paramJceInputStream.read(cache_phoneinfo, 3, false));
  }

  public final void setMark(int paramInt)
  {
    this.mark = paramInt;
  }

  public final void setMarks(ArrayList<Mark> paramArrayList)
  {
    this.marks = paramArrayList;
  }

  public final void setMobile(Mobile paramMobile)
  {
    this.mobile = paramMobile;
  }

  public final void setPhoneinfo(PhoneInfo paramPhoneInfo)
  {
    this.phoneinfo = paramPhoneInfo;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.mobile, 0);
    paramJceOutputStream.write(this.marks, 1);
    paramJceOutputStream.write(this.mark, 2);
    if (this.phoneinfo != null)
      paramJceOutputStream.write(this.phoneinfo, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ModelMarkInfo
 * JD-Core Version:    0.6.2
 */