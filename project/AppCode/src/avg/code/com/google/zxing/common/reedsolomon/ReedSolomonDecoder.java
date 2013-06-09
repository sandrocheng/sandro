package com.google.zxing.common.reedsolomon;

public final class ReedSolomonDecoder
{
  private final GenericGF field;

  public ReedSolomonDecoder(GenericGF paramGenericGF)
  {
    this.field = paramGenericGF;
  }

  private int[] findErrorLocations(GenericGFPoly paramGenericGFPoly)
  {
    int i = 0;
    int j = 1;
    int k = paramGenericGFPoly.getDegree();
    int[] arrayOfInt2;
    if (k == j)
    {
      arrayOfInt2 = new int[j];
      arrayOfInt2[0] = paramGenericGFPoly.getCoefficient(j);
    }
    int[] arrayOfInt1;
    for (Object localObject = arrayOfInt2; ; localObject = arrayOfInt1)
    {
      return localObject;
      arrayOfInt1 = new int[k];
      while (true)
      {
        if ((j >= this.field.getSize()) || (i >= k))
        {
          if (i == k)
            break;
          throw new ReedSolomonException("Error locator degree does not match number of roots");
        }
        if (paramGenericGFPoly.evaluateAt(j) == 0)
        {
          arrayOfInt1[i] = this.field.inverse(j);
          i++;
        }
        j++;
      }
    }
  }

  private int[] findErrorMagnitudes(GenericGFPoly paramGenericGFPoly, int[] paramArrayOfInt, boolean paramBoolean)
  {
    int i = paramArrayOfInt.length;
    int[] arrayOfInt = new int[i];
    int k;
    int m;
    int n;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return arrayOfInt;
      k = this.field.inverse(paramArrayOfInt[j]);
      m = 1;
      n = 0;
      if (n < i)
        break;
      arrayOfInt[j] = this.field.multiply(paramGenericGFPoly.evaluateAt(k), this.field.inverse(m));
      if (paramBoolean)
        arrayOfInt[j] = this.field.multiply(arrayOfInt[j], k);
    }
    int i2;
    int i3;
    if (j != n)
    {
      i2 = this.field.multiply(paramArrayOfInt[n], k);
      if ((i2 & 0x1) == 0)
        i3 = i2 | 0x1;
    }
    label140: for (int i1 = this.field.multiply(m, i3); ; i1 = m)
    {
      n++;
      m = i1;
      break;
      i3 = i2 & 0xFFFFFFFE;
      break label140;
    }
  }

  private GenericGFPoly[] runEuclideanAlgorithm(GenericGFPoly paramGenericGFPoly1, GenericGFPoly paramGenericGFPoly2, int paramInt)
  {
    if (paramGenericGFPoly1.getDegree() < paramGenericGFPoly2.getDegree());
    while (true)
    {
      Object localObject1 = this.field.getOne();
      Object localObject2 = this.field.getZero();
      Object localObject3 = this.field.getZero();
      Object localObject4 = this.field.getOne();
      Object localObject5 = paramGenericGFPoly1;
      int n;
      if (((GenericGFPoly)localObject5).getDegree() < paramInt / 2)
      {
        n = ((GenericGFPoly)localObject4).getCoefficient(0);
        if (n == 0)
          throw new ReedSolomonException("sigmaTilde(0) was zero");
      }
      else
      {
        if (((GenericGFPoly)localObject5).isZero())
          throw new ReedSolomonException("r_{i-1} was zero");
        GenericGFPoly localGenericGFPoly2 = this.field.getZero();
        int i = ((GenericGFPoly)localObject5).getCoefficient(((GenericGFPoly)localObject5).getDegree());
        int j = this.field.inverse(i);
        int k;
        int m;
        for (GenericGFPoly localGenericGFPoly3 = paramGenericGFPoly2; ; localGenericGFPoly3 = localGenericGFPoly3.addOrSubtract(((GenericGFPoly)localObject5).multiplyByMonomial(k, m)))
        {
          if ((localGenericGFPoly3.getDegree() < ((GenericGFPoly)localObject5).getDegree()) || (localGenericGFPoly3.isZero()))
          {
            GenericGFPoly localGenericGFPoly4 = localGenericGFPoly2.multiply((GenericGFPoly)localObject2).addOrSubtract((GenericGFPoly)localObject1);
            GenericGFPoly localGenericGFPoly5 = localGenericGFPoly2.multiply((GenericGFPoly)localObject4).addOrSubtract((GenericGFPoly)localObject3);
            paramGenericGFPoly2 = (GenericGFPoly)localObject5;
            localObject5 = localGenericGFPoly3;
            localObject1 = localObject2;
            localObject2 = localGenericGFPoly4;
            localObject3 = localObject4;
            localObject4 = localGenericGFPoly5;
            break;
          }
          k = localGenericGFPoly3.getDegree() - ((GenericGFPoly)localObject5).getDegree();
          m = this.field.multiply(localGenericGFPoly3.getCoefficient(localGenericGFPoly3.getDegree()), j);
          localGenericGFPoly2 = localGenericGFPoly2.addOrSubtract(this.field.buildMonomial(k, m));
        }
      }
      int i1 = this.field.inverse(n);
      return new GenericGFPoly[] { ((GenericGFPoly)localObject4).multiply(i1), ((GenericGFPoly)localObject5).multiply(i1) };
      GenericGFPoly localGenericGFPoly1 = paramGenericGFPoly2;
      paramGenericGFPoly2 = paramGenericGFPoly1;
      paramGenericGFPoly1 = localGenericGFPoly1;
    }
  }

  public final void decode(int[] paramArrayOfInt, int paramInt)
  {
    int i = 0;
    GenericGFPoly localGenericGFPoly1 = new GenericGFPoly(this.field, paramArrayOfInt);
    int[] arrayOfInt1 = new int[paramInt];
    boolean bool = this.field.equals(GenericGF.DATA_MATRIX_FIELD_256);
    int j = 0;
    int k = 1;
    label50: int m;
    if (j >= paramInt)
    {
      if (k == 0);
    }
    else
    {
      GenericGF localGenericGF = this.field;
      if (bool)
      {
        m = j + 1;
        label68: int n = localGenericGFPoly1.evaluateAt(localGenericGF.exp(m));
        arrayOfInt1[(-1 + arrayOfInt1.length - j)] = n;
        if (n == 0)
          break label246;
      }
    }
    label246: for (int i1 = 0; ; i1 = k)
    {
      j++;
      k = i1;
      break;
      m = j;
      break label68;
      GenericGFPoly localGenericGFPoly2 = new GenericGFPoly(this.field, arrayOfInt1);
      GenericGFPoly[] arrayOfGenericGFPoly = runEuclideanAlgorithm(this.field.buildMonomial(paramInt, 1), localGenericGFPoly2, paramInt);
      GenericGFPoly localGenericGFPoly3 = arrayOfGenericGFPoly[0];
      GenericGFPoly localGenericGFPoly4 = arrayOfGenericGFPoly[1];
      int[] arrayOfInt2 = findErrorLocations(localGenericGFPoly3);
      int[] arrayOfInt3 = findErrorMagnitudes(localGenericGFPoly4, arrayOfInt2, bool);
      while (i < arrayOfInt2.length)
      {
        int i2 = -1 + paramArrayOfInt.length - this.field.log(arrayOfInt2[i]);
        if (i2 < 0)
          throw new ReedSolomonException("Bad error location");
        paramArrayOfInt[i2] = GenericGF.addOrSubtract(paramArrayOfInt[i2], arrayOfInt3[i]);
        i++;
      }
      break label50;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.ReedSolomonDecoder
 * JD-Core Version:    0.6.2
 */