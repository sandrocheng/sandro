package com.google.zxing.common;

import com.google.zxing.NotFoundException;

public abstract class GridSampler
{
  private static GridSampler gridSampler = new DefaultGridSampler();

  protected static void checkAndNudgePoints(BitMatrix paramBitMatrix, float[] paramArrayOfFloat)
  {
    int i = paramBitMatrix.getWidth();
    int j = paramBitMatrix.getHeight();
    int k = 0;
    int m = 1;
    int n;
    int i1;
    int i4;
    int i5;
    if ((k >= paramArrayOfFloat.length) || (m == 0))
    {
      n = -2 + paramArrayOfFloat.length;
      i1 = 1;
      if ((n >= 0) && (i1 != 0));
    }
    else
    {
      i4 = (int)paramArrayOfFloat[k];
      i5 = (int)paramArrayOfFloat[(k + 1)];
      if ((i4 < -1) || (i4 > i) || (i5 < -1) || (i5 > j))
        throw NotFoundException.getNotFoundInstance();
      if (i4 == -1)
      {
        paramArrayOfFloat[k] = 0.0F;
        m = 1;
      }
    }
    while (true)
    {
      label107: if (i5 == -1)
      {
        paramArrayOfFloat[(k + 1)] = 0.0F;
        m = 1;
      }
      while (true)
      {
        k += 2;
        break;
        if (i4 != i)
          break label299;
        paramArrayOfFloat[k] = (i - 1);
        m = 1;
        break label107;
        if (i5 == j)
        {
          paramArrayOfFloat[(k + 1)] = (j - 1);
          m = 1;
        }
      }
      int i2 = (int)paramArrayOfFloat[n];
      int i3 = (int)paramArrayOfFloat[(n + 1)];
      if ((i2 < -1) || (i2 > i) || (i3 < -1) || (i3 > j))
        throw NotFoundException.getNotFoundInstance();
      if (i2 == -1)
      {
        paramArrayOfFloat[n] = 0.0F;
        i1 = 1;
      }
      while (true)
      {
        label229: if (i3 == -1)
        {
          paramArrayOfFloat[(n + 1)] = 0.0F;
          i1 = 1;
        }
        while (true)
        {
          n -= 2;
          break;
          if (i2 != i)
            break label293;
          paramArrayOfFloat[n] = (i - 1);
          i1 = 1;
          break label229;
          if (i3 == j)
          {
            paramArrayOfFloat[(n + 1)] = (j - 1);
            i1 = 1;
          }
        }
        label293: i1 = 0;
      }
      label299: m = 0;
    }
  }

  public static GridSampler getInstance()
  {
    return gridSampler;
  }

  public static void setGridSampler(GridSampler paramGridSampler)
  {
    gridSampler = paramGridSampler;
  }

  public abstract BitMatrix sampleGrid(BitMatrix paramBitMatrix, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, float paramFloat10, float paramFloat11, float paramFloat12, float paramFloat13, float paramFloat14, float paramFloat15, float paramFloat16);

  public abstract BitMatrix sampleGrid(BitMatrix paramBitMatrix, int paramInt1, int paramInt2, PerspectiveTransform paramPerspectiveTransform);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.common.GridSampler
 * JD-Core Version:    0.6.2
 */