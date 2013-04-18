package org.achartengine.d;

import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public final class a
{
  public static final double a = 1.7976931348623157E+308D;
  private static final NumberFormat b = NumberFormat.getNumberInstance();

  private static double a(double paramDouble)
  {
    int i = (int)Math.floor(Math.log10(paramDouble));
    double d = paramDouble * Math.pow(10.0D, -i);
    if (d > 5.0D)
      d = 10.0D;
    while (true)
    {
      return d * Math.pow(10.0D, i);
      if (d > 2.0D)
        d = 5.0D;
      else if (d > 1.0D)
        d = 2.0D;
    }
  }

  public static List a(double paramDouble1, double paramDouble2, int paramInt)
  {
    b.setMaximumFractionDigits(5);
    ArrayList localArrayList = new ArrayList();
    Object localObject;
    if (Math.abs(paramDouble1 - paramDouble2) < 1.000000011686097E-007D)
      localObject = new double[] { paramDouble1, paramDouble1, 0.0D };
    while (true)
    {
      int i = 1 + (int)((localObject[1] - localObject[0]) / localObject[2]);
      int j = 0;
      label68: double d1;
      if (j < i)
        d1 = localObject[0] + j * localObject[2];
      try
      {
        double d2 = b.parse(b.format(d1)).doubleValue();
        d1 = d2;
        localArrayList.add(Double.valueOf(d1));
        j++;
        break label68;
        if (paramDouble1 > paramDouble2)
        {
          k = 1;
          double d4 = Math.abs(paramDouble2 - paramDouble1) / paramInt;
          int m = (int)Math.floor(Math.log10(d4));
          double d5 = d4 * Math.pow(10.0D, -m);
          if (d5 > 5.0D)
            d5 = 10.0D;
          double d6;
          double d7;
          double d8;
          while (true)
          {
            d6 = d5 * Math.pow(10.0D, m);
            d7 = d6 * Math.ceil(paramDouble2 / d6);
            d8 = d6 * Math.floor(paramDouble1 / d6);
            if (k == 0)
              break label302;
            double[] arrayOfDouble = new double[3];
            arrayOfDouble[0] = d8;
            arrayOfDouble[1] = d7;
            arrayOfDouble[2] = (-1.0D * d6);
            localObject = arrayOfDouble;
            break;
            if (d5 > 2.0D)
              d5 = 5.0D;
            else if (d5 > 1.0D)
              d5 = 2.0D;
          }
          label302: localObject = new double[] { d7, d8, d6 };
          continue;
          return localArrayList;
        }
      }
      catch (ParseException localParseException)
      {
        while (true)
        {
          continue;
          double d3 = paramDouble2;
          paramDouble2 = paramDouble1;
          paramDouble1 = d3;
          int k = 0;
        }
      }
    }
  }

  public static float[] a(List paramList)
  {
    int i = paramList.size();
    float[] arrayOfFloat = new float[i];
    for (int j = 0; j < i; j++)
      arrayOfFloat[j] = ((Float)paramList.get(j)).floatValue();
    return arrayOfFloat;
  }

  private static double[] b(double paramDouble1, double paramDouble2, int paramInt)
  {
    double[] arrayOfDouble;
    if (Math.abs(paramDouble1 - paramDouble2) < 1.000000011686097E-007D)
    {
      arrayOfDouble = new double[] { paramDouble1, paramDouble1, 0.0D };
      return arrayOfDouble;
    }
    double d1;
    double d2;
    if (paramDouble1 > paramDouble2)
    {
      d1 = paramDouble2;
      d2 = paramDouble1;
    }
    for (int i = 1; ; i = 0)
    {
      double d3 = Math.abs(d1 - d2) / paramInt;
      int j = (int)Math.floor(Math.log10(d3));
      double d4 = d3 * Math.pow(10.0D, -j);
      if (d4 > 5.0D)
        d4 = 10.0D;
      double d5;
      double d6;
      double d7;
      while (true)
      {
        d5 = d4 * Math.pow(10.0D, j);
        d6 = d5 * Math.ceil(d1 / d5);
        d7 = d5 * Math.floor(d2 / d5);
        if (i == 0)
          break label209;
        arrayOfDouble = new double[3];
        arrayOfDouble[0] = d7;
        arrayOfDouble[1] = d6;
        arrayOfDouble[2] = (-1.0D * d5);
        break;
        if (d4 > 2.0D)
          d4 = 5.0D;
        else if (d4 > 1.0D)
          d4 = 2.0D;
      }
      label209: arrayOfDouble = new double[] { d6, d7, d5 };
      break;
      d1 = paramDouble1;
      d2 = paramDouble2;
    }
  }

  private static double[] b(List paramList)
  {
    if (paramList.size() == 0);
    double d2;
    double d3;
    for (double[] arrayOfDouble = new double[2]; ; arrayOfDouble = new double[] { d3, d2 })
    {
      return arrayOfDouble;
      double d1 = ((Double)paramList.get(0)).doubleValue();
      int i = paramList.size();
      d2 = d1;
      d3 = d1;
      for (int j = 1; j < i; j++)
      {
        double d4 = ((Double)paramList.get(j)).doubleValue();
        d3 = Math.min(d3, d4);
        d2 = Math.max(d2, d4);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.d.a
 * JD-Core Version:    0.6.2
 */