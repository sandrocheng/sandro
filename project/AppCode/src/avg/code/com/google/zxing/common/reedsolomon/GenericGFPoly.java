package com.google.zxing.common.reedsolomon;

final class GenericGFPoly
{
  private final int[] coefficients;
  private final GenericGF field;

  GenericGFPoly(GenericGF paramGenericGF, int[] paramArrayOfInt)
  {
    if (paramArrayOfInt.length == 0)
      throw new IllegalArgumentException();
    this.field = paramGenericGF;
    int j = paramArrayOfInt.length;
    if ((j > i) && (paramArrayOfInt[0] == 0))
      if ((i >= j) || (paramArrayOfInt[i] != 0))
      {
        if (i != j)
          break label76;
        this.coefficients = paramGenericGF.getZero().coefficients;
      }
    while (true)
    {
      return;
      i++;
      break;
      label76: this.coefficients = new int[j - i];
      System.arraycopy(paramArrayOfInt, i, this.coefficients, 0, this.coefficients.length);
      continue;
      this.coefficients = paramArrayOfInt;
    }
  }

  final GenericGFPoly addOrSubtract(GenericGFPoly paramGenericGFPoly)
  {
    if (!this.field.equals(paramGenericGFPoly.field))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if (isZero());
    while (true)
    {
      return paramGenericGFPoly;
      if (!paramGenericGFPoly.isZero())
        break;
      paramGenericGFPoly = this;
    }
    Object localObject1 = this.coefficients;
    Object localObject2 = paramGenericGFPoly.coefficients;
    if (localObject1.length > localObject2.length);
    while (true)
    {
      int[] arrayOfInt = new int[localObject1.length];
      int i = localObject1.length - localObject2.length;
      System.arraycopy(localObject1, 0, arrayOfInt, 0, i);
      for (int j = i; ; j++)
      {
        if (j >= localObject1.length)
        {
          paramGenericGFPoly = new GenericGFPoly(this.field, arrayOfInt);
          break;
        }
        arrayOfInt[j] = GenericGF.addOrSubtract(localObject2[(j - i)], localObject1[j]);
      }
      Object localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
  }

  final GenericGFPoly[] divide(GenericGFPoly paramGenericGFPoly)
  {
    if (!this.field.equals(paramGenericGFPoly.field))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if (paramGenericGFPoly.isZero())
      throw new IllegalArgumentException("Divide by 0");
    GenericGFPoly localGenericGFPoly1 = this.field.getZero();
    int i = paramGenericGFPoly.getCoefficient(paramGenericGFPoly.getDegree());
    int j = this.field.inverse(i);
    GenericGFPoly localGenericGFPoly2 = localGenericGFPoly1;
    GenericGFPoly localGenericGFPoly4;
    for (GenericGFPoly localGenericGFPoly3 = this; ; localGenericGFPoly3 = localGenericGFPoly3.addOrSubtract(localGenericGFPoly4))
    {
      if ((localGenericGFPoly3.getDegree() < paramGenericGFPoly.getDegree()) || (localGenericGFPoly3.isZero()))
        return new GenericGFPoly[] { localGenericGFPoly2, localGenericGFPoly3 };
      int k = localGenericGFPoly3.getDegree() - paramGenericGFPoly.getDegree();
      int m = this.field.multiply(localGenericGFPoly3.getCoefficient(localGenericGFPoly3.getDegree()), j);
      localGenericGFPoly4 = paramGenericGFPoly.multiplyByMonomial(k, m);
      localGenericGFPoly2 = localGenericGFPoly2.addOrSubtract(this.field.buildMonomial(k, m));
    }
  }

  final int evaluateAt(int paramInt)
  {
    int i = 0;
    int k;
    if (paramInt == 0)
      k = getCoefficient(0);
    while (true)
    {
      return k;
      int j = this.coefficients.length;
      if (paramInt == 1)
      {
        int i1;
        for (k = 0; i < j; k = i1)
        {
          i1 = GenericGF.addOrSubtract(k, this.coefficients[i]);
          i++;
        }
      }
      else
      {
        k = this.coefficients[0];
        int m = 1;
        while (m < j)
        {
          int n = GenericGF.addOrSubtract(this.field.multiply(paramInt, k), this.coefficients[m]);
          m++;
          k = n;
        }
      }
    }
  }

  final int getCoefficient(int paramInt)
  {
    return this.coefficients[(-1 + this.coefficients.length - paramInt)];
  }

  final int[] getCoefficients()
  {
    return this.coefficients;
  }

  final int getDegree()
  {
    return -1 + this.coefficients.length;
  }

  final boolean isZero()
  {
    int i = this.coefficients[0];
    boolean bool = false;
    if (i == 0)
      bool = true;
    return bool;
  }

  final GenericGFPoly multiply(int paramInt)
  {
    if (paramInt == 0)
      this = this.field.getZero();
    while (paramInt == 1)
      return this;
    int i = this.coefficients.length;
    int[] arrayOfInt = new int[i];
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        this = new GenericGFPoly(this.field, arrayOfInt);
        break;
      }
      arrayOfInt[j] = this.field.multiply(this.coefficients[j], paramInt);
    }
  }

  final GenericGFPoly multiply(GenericGFPoly paramGenericGFPoly)
  {
    if (!this.field.equals(paramGenericGFPoly.field))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if ((isZero()) || (paramGenericGFPoly.isZero()));
    int[] arrayOfInt1;
    int[] arrayOfInt2;
    int j;
    int[] arrayOfInt3;
    int k;
    for (GenericGFPoly localGenericGFPoly = this.field.getZero(); ; localGenericGFPoly = new GenericGFPoly(this.field, arrayOfInt3))
    {
      return localGenericGFPoly;
      arrayOfInt1 = this.coefficients;
      int i = arrayOfInt1.length;
      arrayOfInt2 = paramGenericGFPoly.coefficients;
      j = arrayOfInt2.length;
      arrayOfInt3 = new int[-1 + (i + j)];
      k = 0;
      if (k < i)
        break;
    }
    int m = arrayOfInt1[k];
    for (int n = 0; ; n++)
    {
      if (n >= j)
      {
        k++;
        break;
      }
      arrayOfInt3[(k + n)] = GenericGF.addOrSubtract(arrayOfInt3[(k + n)], this.field.multiply(m, arrayOfInt2[n]));
    }
  }

  final GenericGFPoly multiplyByMonomial(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException();
    GenericGFPoly localGenericGFPoly;
    if (paramInt2 == 0)
    {
      localGenericGFPoly = this.field.getZero();
      return localGenericGFPoly;
    }
    int i = this.coefficients.length;
    int[] arrayOfInt = new int[i + paramInt1];
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        localGenericGFPoly = new GenericGFPoly(this.field, arrayOfInt);
        break;
      }
      arrayOfInt[j] = this.field.multiply(this.coefficients[j], paramInt2);
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(8 * getDegree());
    int i = getDegree();
    if (i < 0)
      return localStringBuilder.toString();
    int j = getCoefficient(i);
    label53: int k;
    if (j != 0)
    {
      if (j >= 0)
        break label106;
      localStringBuilder.append(" - ");
      j = -j;
      if ((i == 0) || (j != 1))
      {
        k = this.field.log(j);
        if (k != 0)
          break label123;
        localStringBuilder.append('1');
      }
      label84: if (i != 0)
      {
        if (i != 1)
          break label156;
        localStringBuilder.append('x');
      }
    }
    while (true)
    {
      i--;
      break;
      label106: if (localStringBuilder.length() <= 0)
        break label53;
      localStringBuilder.append(" + ");
      break label53;
      label123: if (k == 1)
      {
        localStringBuilder.append('a');
        break label84;
      }
      localStringBuilder.append("a^");
      localStringBuilder.append(k);
      break label84;
      label156: localStringBuilder.append("x^");
      localStringBuilder.append(i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.GenericGFPoly
 * JD-Core Version:    0.6.2
 */