package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Cell extends JceStruct
{
  public int iCellId = -1;
  public int iLac = -1;
  public short shMcc = -1;
  public short shMnc = -1;

  static
  {
    if (!Cell.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Cell()
  {
    setShMcc(this.shMcc);
    setShMnc(this.shMnc);
    setILac(this.iLac);
    setICellId(this.iCellId);
  }

  public Cell(short paramShort1, short paramShort2, int paramInt1, int paramInt2)
  {
    setShMcc(paramShort1);
    setShMnc(paramShort2);
    setILac(paramInt1);
    setICellId(paramInt2);
  }

  public String className()
  {
    return "LBSAPIProtocol.Cell";
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
    localJceDisplayer.display(this.shMcc, "shMcc");
    localJceDisplayer.display(this.shMnc, "shMnc");
    localJceDisplayer.display(this.iLac, "iLac");
    localJceDisplayer.display(this.iCellId, "iCellId");
  }

  public boolean equals(Object paramObject)
  {
    Cell localCell = (Cell)paramObject;
    if ((JceUtil.equals(this.shMcc, localCell.shMcc)) && (JceUtil.equals(this.shMnc, localCell.shMnc)) && (JceUtil.equals(this.iLac, localCell.iLac)) && (JceUtil.equals(this.iCellId, localCell.iCellId)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int getICellId()
  {
    return this.iCellId;
  }

  public int getILac()
  {
    return this.iLac;
  }

  public short getShMcc()
  {
    return this.shMcc;
  }

  public short getShMnc()
  {
    return this.shMnc;
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    setShMcc(paramJceInputStream.read(this.shMcc, 0, true));
    setShMnc(paramJceInputStream.read(this.shMnc, 1, true));
    setILac(paramJceInputStream.read(this.iLac, 2, true));
    setICellId(paramJceInputStream.read(this.iCellId, 3, true));
  }

  public void setICellId(int paramInt)
  {
    this.iCellId = paramInt;
  }

  public void setILac(int paramInt)
  {
    this.iLac = paramInt;
  }

  public void setShMcc(short paramShort)
  {
    this.shMcc = paramShort;
  }

  public void setShMnc(short paramShort)
  {
    this.shMnc = paramShort;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.shMcc, 0);
    paramJceOutputStream.write(this.shMnc, 1);
    paramJceOutputStream.write(this.iLac, 2);
    paramJceOutputStream.write(this.iCellId, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.Cell
 * JD-Core Version:    0.6.2
 */