package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Mark extends JceStruct
  implements Cloneable
{
  public int draw = 0;
  public int lose = 0;
  public int mark = 0;
  public int markid = 0;
  public int nrank = 0;
  public int rank = 0;
  public int win = 0;

  static
  {
    if (!Mark.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Mark()
  {
    setMarkid(this.markid);
    setMark(this.mark);
    setRank(this.rank);
    setNrank(this.nrank);
    setWin(this.win);
    setLose(this.lose);
    setDraw(this.draw);
  }

  public Mark(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    setMarkid(paramInt1);
    setMark(paramInt2);
    setRank(paramInt3);
    setNrank(paramInt4);
    setWin(paramInt5);
    setLose(paramInt6);
    setDraw(paramInt7);
  }

  public final String className()
  {
    return "QQPIM.Mark";
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
    localJceDisplayer.display(this.markid, "markid");
    localJceDisplayer.display(this.mark, "mark");
    localJceDisplayer.display(this.rank, "rank");
    localJceDisplayer.display(this.nrank, "nrank");
    localJceDisplayer.display(this.win, "win");
    localJceDisplayer.display(this.lose, "lose");
    localJceDisplayer.display(this.draw, "draw");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      Mark localMark = (Mark)paramObject;
      boolean bool2 = JceUtil.equals(this.markid, localMark.markid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.mark, localMark.mark);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.rank, localMark.rank);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.nrank, localMark.nrank);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.win, localMark.win);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.lose, localMark.lose);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.draw, localMark.draw);
                  bool1 = false;
                  if (bool8)
                    bool1 = true;
                }
              }
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.Mark";
  }

  public final int getDraw()
  {
    return this.draw;
  }

  public final int getLose()
  {
    return this.lose;
  }

  public final int getMark()
  {
    return this.mark;
  }

  public final int getMarkid()
  {
    return this.markid;
  }

  public final int getNrank()
  {
    return this.nrank;
  }

  public final int getRank()
  {
    return this.rank;
  }

  public final int getWin()
  {
    return this.win;
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
    this.markid = paramJceInputStream.read(this.markid, 0, true);
    this.mark = paramJceInputStream.read(this.mark, 1, true);
    this.rank = paramJceInputStream.read(this.rank, 2, false);
    this.nrank = paramJceInputStream.read(this.nrank, 3, false);
    this.win = paramJceInputStream.read(this.win, 4, false);
    this.lose = paramJceInputStream.read(this.lose, 5, false);
    this.draw = paramJceInputStream.read(this.draw, 6, false);
  }

  public final void setDraw(int paramInt)
  {
    this.draw = paramInt;
  }

  public final void setLose(int paramInt)
  {
    this.lose = paramInt;
  }

  public final void setMark(int paramInt)
  {
    this.mark = paramInt;
  }

  public final void setMarkid(int paramInt)
  {
    this.markid = paramInt;
  }

  public final void setNrank(int paramInt)
  {
    this.nrank = paramInt;
  }

  public final void setRank(int paramInt)
  {
    this.rank = paramInt;
  }

  public final void setWin(int paramInt)
  {
    this.win = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.markid, 0);
    paramJceOutputStream.write(this.mark, 1);
    paramJceOutputStream.write(this.rank, 2);
    paramJceOutputStream.write(this.nrank, 3);
    paramJceOutputStream.write(this.win, 4);
    paramJceOutputStream.write(this.lose, 5);
    paramJceOutputStream.write(this.draw, 6);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.Mark
 * JD-Core Version:    0.6.2
 */