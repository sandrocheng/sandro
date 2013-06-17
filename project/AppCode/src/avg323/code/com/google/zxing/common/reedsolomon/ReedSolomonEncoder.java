package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;
import java.util.List;

public final class ReedSolomonEncoder
{
  private final List cachedGenerators;
  private final GenericGF field;

  public ReedSolomonEncoder(GenericGF paramGenericGF)
  {
    if (!GenericGF.QR_CODE_FIELD_256.equals(paramGenericGF))
      throw new IllegalArgumentException("Only QR Code is supported at this time");
    this.field = paramGenericGF;
    this.cachedGenerators = new ArrayList();
    this.cachedGenerators.add(new GenericGFPoly(paramGenericGF, new int[] { 1 }));
  }

  private GenericGFPoly buildGenerator(int paramInt)
  {
    int i;
    GenericGFPoly localGenericGFPoly2;
    if (paramInt >= this.cachedGenerators.size())
    {
      GenericGFPoly localGenericGFPoly1 = (GenericGFPoly)this.cachedGenerators.get(-1 + this.cachedGenerators.size());
      i = this.cachedGenerators.size();
      localGenericGFPoly2 = localGenericGFPoly1;
    }
    for (int j = i; ; j++)
    {
      if (j > paramInt)
        return (GenericGFPoly)this.cachedGenerators.get(paramInt);
      GenericGF localGenericGF = this.field;
      int[] arrayOfInt = new int[2];
      arrayOfInt[0] = 1;
      arrayOfInt[1] = this.field.exp(j - 1);
      localGenericGFPoly2 = localGenericGFPoly2.multiply(new GenericGFPoly(localGenericGF, arrayOfInt));
      this.cachedGenerators.add(localGenericGFPoly2);
    }
  }

  public void encode(int[] paramArrayOfInt, int paramInt)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("No error correction bytes");
    int i = paramArrayOfInt.length - paramInt;
    if (i <= 0)
      throw new IllegalArgumentException("No data bytes provided");
    GenericGFPoly localGenericGFPoly = buildGenerator(paramInt);
    int[] arrayOfInt1 = new int[i];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt1, 0, i);
    int[] arrayOfInt2 = new GenericGFPoly(this.field, arrayOfInt1).multiplyByMonomial(paramInt, 1).divide(localGenericGFPoly)[1].getCoefficients();
    int j = paramInt - arrayOfInt2.length;
    for (int k = 0; ; k++)
    {
      if (k >= j)
      {
        System.arraycopy(arrayOfInt2, 0, paramArrayOfInt, i + j, arrayOfInt2.length);
        return;
      }
      paramArrayOfInt[(i + k)] = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.ReedSolomonEncoder
 * JD-Core Version:    0.6.2
 */