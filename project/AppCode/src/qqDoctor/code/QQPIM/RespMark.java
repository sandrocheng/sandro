package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class RespMark extends JceStruct
  implements Cloneable
{
  static ArrayList<Mark> cache_marks;
  static ArrayList<TopList> cache_toplists;
  public String localaddr = "";
  public ArrayList<Mark> marks = null;
  public ArrayList<TopList> toplists = null;

  static
  {
    if (!RespMark.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RespMark()
  {
    setMarks(this.marks);
    setToplists(this.toplists);
    setLocaladdr(this.localaddr);
  }

  public RespMark(ArrayList<Mark> paramArrayList, ArrayList<TopList> paramArrayList1, String paramString)
  {
    setMarks(paramArrayList);
    setToplists(paramArrayList1);
    setLocaladdr(paramString);
  }

  public final String className()
  {
    return "QQPIM.RespMark";
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
    localJceDisplayer.display(this.marks, "marks");
    localJceDisplayer.display(this.toplists, "toplists");
    localJceDisplayer.display(this.localaddr, "localaddr");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      RespMark localRespMark = (RespMark)paramObject;
      boolean bool2 = JceUtil.equals(this.marks, localRespMark.marks);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.toplists, localRespMark.toplists);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.localaddr, localRespMark.localaddr);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.RespMark";
  }

  public final String getLocaladdr()
  {
    return this.localaddr;
  }

  public final ArrayList<Mark> getMarks()
  {
    return this.marks;
  }

  public final ArrayList<TopList> getToplists()
  {
    return this.toplists;
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
    if (cache_marks == null)
    {
      cache_marks = new ArrayList();
      Mark localMark = new Mark();
      cache_marks.add(localMark);
    }
    setMarks((ArrayList)paramJceInputStream.read(cache_marks, 0, true));
    if (cache_toplists == null)
    {
      cache_toplists = new ArrayList();
      TopList localTopList = new TopList();
      cache_toplists.add(localTopList);
    }
    setToplists((ArrayList)paramJceInputStream.read(cache_toplists, 1, true));
    setLocaladdr(paramJceInputStream.readString(2, false));
  }

  public final void setLocaladdr(String paramString)
  {
    this.localaddr = paramString;
  }

  public final void setMarks(ArrayList<Mark> paramArrayList)
  {
    this.marks = paramArrayList;
  }

  public final void setToplists(ArrayList<TopList> paramArrayList)
  {
    this.toplists = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.marks, 0);
    paramJceOutputStream.write(this.toplists, 1);
    if (this.localaddr != null)
      paramJceOutputStream.write(this.localaddr, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.RespMark
 * JD-Core Version:    0.6.2
 */