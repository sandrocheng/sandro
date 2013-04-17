package com.qq.taf.jce.dynamic;

import java.util.Arrays;
import java.util.Comparator;

public class StructField extends JceField
{
  private static final Comparator<JceField> tagComp = new Comparator()
  {
    public int compare(JceField paramAnonymousJceField1, JceField paramAnonymousJceField2)
    {
      return paramAnonymousJceField1.getTag() - paramAnonymousJceField2.getTag();
    }
  };
  private JceField[] data;

  StructField(JceField[] paramArrayOfJceField, int paramInt)
  {
    super(paramInt);
    this.data = paramArrayOfJceField;
  }

  public JceField[] get()
  {
    return this.data;
  }

  public JceField getFieldByTag(int paramInt)
  {
    int i = Arrays.binarySearch(this.data, JceField.createZero(paramInt), tagComp);
    if (i >= 0);
    for (JceField localJceField = this.data[i]; ; localJceField = null)
      return localJceField;
  }

  public boolean setByTag(int paramInt, JceField paramJceField)
  {
    int i = Arrays.binarySearch(this.data, JceField.createZero(paramInt), tagComp);
    if (i >= 0)
      this.data[i] = paramJceField;
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      int j = -1 + -i;
      JceField[] arrayOfJceField = new JceField[1 + this.data.length];
      for (int k = 0; k < j; k++)
        arrayOfJceField[k] = this.data[k];
      arrayOfJceField[j] = paramJceField;
      for (int m = j; m < this.data.length; m++)
        arrayOfJceField[(m + 1)] = this.data[m];
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.qq.taf.jce.dynamic.StructField
 * JD-Core Version:    0.6.2
 */