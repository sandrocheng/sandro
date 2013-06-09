package com.google.zxing.common.reedsolomon;

public final class GenericGF
{
  public static final GenericGF AZTEC_DATA_10;
  public static final GenericGF AZTEC_DATA_12 = new GenericGF(4201, 4096);
  public static final GenericGF AZTEC_DATA_6;
  public static final GenericGF AZTEC_DATA_8 = localGenericGF;
  public static final GenericGF AZTEC_PARAM;
  public static final GenericGF DATA_MATRIX_FIELD_256;
  private static final int INITIALIZATION_THRESHOLD;
  public static final GenericGF MAXICODE_FIELD_64 = AZTEC_DATA_6;
  public static final GenericGF QR_CODE_FIELD_256;
  private int[] expTable;
  private boolean initialized = false;
  private int[] logTable;
  private GenericGFPoly one;
  private final int primitive;
  private final int size;
  private GenericGFPoly zero;

  static
  {
    AZTEC_DATA_10 = new GenericGF(1033, 1024);
    AZTEC_DATA_6 = new GenericGF(67, 64);
    AZTEC_PARAM = new GenericGF(19, 16);
    QR_CODE_FIELD_256 = new GenericGF(285, 256);
    GenericGF localGenericGF = new GenericGF(301, 256);
    DATA_MATRIX_FIELD_256 = localGenericGF;
  }

  public GenericGF(int paramInt1, int paramInt2)
  {
    this.primitive = paramInt1;
    this.size = paramInt2;
    if (paramInt2 <= 0)
      initialize();
  }

  static int addOrSubtract(int paramInt1, int paramInt2)
  {
    return paramInt1 ^ paramInt2;
  }

  private void checkInit()
  {
    if (!this.initialized)
      initialize();
  }

  private void initialize()
  {
    this.expTable = new int[this.size];
    this.logTable = new int[this.size];
    int i = 0;
    int j = 1;
    if (i >= this.size);
    for (int k = 0; ; k++)
    {
      if (k >= -1 + this.size)
      {
        this.zero = new GenericGFPoly(this, new int[1]);
        this.one = new GenericGFPoly(this, new int[] { 1 });
        this.initialized = true;
        return;
        this.expTable[i] = j;
        j <<= 1;
        if (j >= this.size)
          j = (j ^ this.primitive) & -1 + this.size;
        i++;
        break;
      }
      this.logTable[this.expTable[k]] = k;
    }
  }

  final GenericGFPoly buildMonomial(int paramInt1, int paramInt2)
  {
    checkInit();
    if (paramInt1 < 0)
      throw new IllegalArgumentException();
    if (paramInt2 == 0);
    int[] arrayOfInt;
    for (GenericGFPoly localGenericGFPoly = this.zero; ; localGenericGFPoly = new GenericGFPoly(this, arrayOfInt))
    {
      return localGenericGFPoly;
      arrayOfInt = new int[paramInt1 + 1];
      arrayOfInt[0] = paramInt2;
    }
  }

  final int exp(int paramInt)
  {
    checkInit();
    return this.expTable[paramInt];
  }

  final GenericGFPoly getOne()
  {
    checkInit();
    return this.one;
  }

  public final int getSize()
  {
    return this.size;
  }

  final GenericGFPoly getZero()
  {
    checkInit();
    return this.zero;
  }

  final int inverse(int paramInt)
  {
    checkInit();
    if (paramInt == 0)
      throw new ArithmeticException();
    return this.expTable[(-1 + (this.size - this.logTable[paramInt]))];
  }

  final int log(int paramInt)
  {
    checkInit();
    if (paramInt == 0)
      throw new IllegalArgumentException();
    return this.logTable[paramInt];
  }

  final int multiply(int paramInt1, int paramInt2)
  {
    checkInit();
    if ((paramInt1 == 0) || (paramInt2 == 0));
    int j;
    for (int i = 0; ; i = this.expTable[(j % this.size + j / this.size)])
    {
      return i;
      if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt1 >= this.size) || (paramInt2 >= this.size))
        paramInt1++;
      j = this.logTable[paramInt1] + this.logTable[paramInt2];
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.GenericGF
 * JD-Core Version:    0.6.2
 */