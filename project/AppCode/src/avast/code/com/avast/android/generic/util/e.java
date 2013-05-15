package com.avast.android.generic.util;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class e
{
  public static Object a(byte[] paramArrayOfByte, ByteOrder paramByteOrder, Class paramClass, int paramInt)
  {
    return b(paramArrayOfByte, paramByteOrder, paramClass, paramInt);
  }

  public static String a(byte[] paramArrayOfByte)
  {
    String str;
    if (paramArrayOfByte == null)
      str = null;
    while (true)
    {
      return str;
      str = "";
      for (int i = 0; i < paramArrayOfByte.length; i++)
        str = str + Integer.toString(256 + (0xFF & paramArrayOfByte[i]), 16).substring(1);
    }
  }

  // ERROR //
  public static byte[] a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: ifnonnull +5 -> 8
    //   6: aload_1
    //   7: areturn
    //   8: new 40	java/io/ByteArrayOutputStream
    //   11: dup
    //   12: invokespecial 41	java/io/ByteArrayOutputStream:<init>	()V
    //   15: astore_2
    //   16: aload_0
    //   17: invokevirtual 45	java/lang/String:length	()I
    //   20: istore 4
    //   22: iconst_0
    //   23: istore 5
    //   25: iload 5
    //   27: iload 4
    //   29: if_icmpge +82 -> 111
    //   32: iload 5
    //   34: iconst_1
    //   35: iadd
    //   36: iload 4
    //   38: if_icmpge +38 -> 76
    //   41: aload_2
    //   42: aload_0
    //   43: iload 5
    //   45: invokevirtual 49	java/lang/String:charAt	(I)C
    //   48: bipush 16
    //   50: invokestatic 55	java/lang/Character:digit	(CI)I
    //   53: iconst_4
    //   54: ishl
    //   55: aload_0
    //   56: iload 5
    //   58: iconst_1
    //   59: iadd
    //   60: invokevirtual 49	java/lang/String:charAt	(I)C
    //   63: bipush 16
    //   65: invokestatic 55	java/lang/Character:digit	(CI)I
    //   68: iadd
    //   69: i2b
    //   70: invokevirtual 59	java/io/ByteArrayOutputStream:write	(I)V
    //   73: goto +71 -> 144
    //   76: aload_2
    //   77: aload_0
    //   78: iload 5
    //   80: invokevirtual 49	java/lang/String:charAt	(I)C
    //   83: bipush 16
    //   85: invokestatic 55	java/lang/Character:digit	(CI)I
    //   88: iconst_4
    //   89: ishl
    //   90: i2b
    //   91: invokevirtual 59	java/io/ByteArrayOutputStream:write	(I)V
    //   94: goto +50 -> 144
    //   97: astore_3
    //   98: iconst_1
    //   99: anewarray 61	java/io/Closeable
    //   102: dup
    //   103: iconst_0
    //   104: aload_2
    //   105: aastore
    //   106: invokestatic 66	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   109: aload_3
    //   110: athrow
    //   111: aload_2
    //   112: invokevirtual 70	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   115: astore 6
    //   117: aload 6
    //   119: astore_1
    //   120: iconst_1
    //   121: anewarray 61	java/io/Closeable
    //   124: dup
    //   125: iconst_0
    //   126: aload_2
    //   127: aastore
    //   128: invokestatic 66	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   131: goto -125 -> 6
    //   134: astore 7
    //   136: aload 7
    //   138: astore_3
    //   139: aconst_null
    //   140: astore_2
    //   141: goto -43 -> 98
    //   144: iinc 5 2
    //   147: goto -122 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   16	94	97	finally
    //   111	117	97	finally
    //   8	16	134	finally
  }

  // ERROR //
  public static byte[] a(byte[] paramArrayOfByte, String paramString)
  {
    // Byte code:
    //   0: new 40	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 41	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_2
    //   8: aload_2
    //   9: aload_0
    //   10: invokevirtual 76	java/io/ByteArrayOutputStream:write	([B)V
    //   13: aload_2
    //   14: aload_1
    //   15: invokestatic 78	com/avast/android/generic/util/e:a	(Ljava/lang/String;)[B
    //   18: invokevirtual 76	java/io/ByteArrayOutputStream:write	([B)V
    //   21: aload_2
    //   22: invokevirtual 70	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   25: astore 5
    //   27: iconst_1
    //   28: anewarray 61	java/io/Closeable
    //   31: dup
    //   32: iconst_0
    //   33: aload_2
    //   34: aastore
    //   35: invokestatic 66	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   38: aload 5
    //   40: areturn
    //   41: astore_3
    //   42: aconst_null
    //   43: astore_2
    //   44: aload_3
    //   45: athrow
    //   46: astore 4
    //   48: iconst_1
    //   49: anewarray 61	java/io/Closeable
    //   52: dup
    //   53: iconst_0
    //   54: aload_2
    //   55: aastore
    //   56: invokestatic 66	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   59: aload 4
    //   61: athrow
    //   62: astore 4
    //   64: aconst_null
    //   65: astore_2
    //   66: goto -18 -> 48
    //   69: astore_3
    //   70: goto -26 -> 44
    //
    // Exception table:
    //   from	to	target	type
    //   0	8	41	java/io/IOException
    //   8	27	46	finally
    //   44	46	46	finally
    //   0	8	62	finally
    //   8	27	69	java/io/IOException
  }

  private static Object b(byte[] paramArrayOfByte, ByteOrder paramByteOrder, Class paramClass, int paramInt)
  {
    int i = 2;
    int j = 4;
    if ((paramArrayOfByte == null) || (paramClass == null))
      throw new NullPointerException("Provided byte array and/or primitive type class is null");
    if (paramArrayOfByte.length < paramInt + 1)
      throw new IndexOutOfBoundsException("Byte array length is " + paramArrayOfByte.length + ", requested index " + paramInt);
    if (paramClass.equals(Integer.TYPE))
      i = 1;
    while (true)
      if ((j == 0) || (i == 0))
      {
        throw new IllegalArgumentException("Class is not a primitive type class");
        if (paramClass.equals(Double.TYPE))
        {
          j = 8;
        }
        else if (paramClass.equals(Short.TYPE))
        {
          j = i;
          i = 3;
        }
        else if (paramClass.equals(Long.TYPE))
        {
          i = j;
          j = 8;
        }
        else if (paramClass.equals(Float.TYPE))
        {
          i = 5;
        }
        else if (paramClass.equals(Character.TYPE))
        {
          i = 6;
          j = 1;
        }
        else if (paramClass.equals(Boolean.TYPE))
        {
          i = 7;
          j = 1;
        }
        else if (paramClass.equals(Byte.TYPE))
        {
          i = 8;
          j = 1;
        }
      }
      else
      {
        if (paramArrayOfByte.length < j)
          throw new IllegalArgumentException("Provided byte array (" + paramArrayOfByte.length + ") is smaller than the primitive type requires (" + j + ")");
        if (paramArrayOfByte.length < paramInt + j)
          throw new IllegalArgumentException("Can't parse requested primitive type from given position");
        Object localObject;
        if (i == 8)
          localObject = Byte.valueOf(paramArrayOfByte[paramInt]);
        while (true)
        {
          return localObject;
          if (i == 7)
          {
            if (paramArrayOfByte[paramInt] == 0)
              localObject = Boolean.valueOf(false);
            else
              localObject = Boolean.valueOf(true);
          }
          else
          {
            ByteBuffer localByteBuffer = ByteBuffer.wrap(paramArrayOfByte, paramInt, j);
            localByteBuffer.order(paramByteOrder);
            switch (i)
            {
            default:
              throw new IllegalStateException("Terrible failure happened, primitive type recognized, but wrong value set somehow, this should never happen :>");
            case 1:
              localObject = Integer.valueOf(localByteBuffer.getInt());
              break;
            case 2:
              localObject = Double.valueOf(localByteBuffer.getDouble());
              break;
            case 3:
              localObject = Short.valueOf(localByteBuffer.getShort());
              break;
            case 4:
              localObject = Long.valueOf(localByteBuffer.getLong());
              break;
            case 5:
              localObject = Float.valueOf(localByteBuffer.getFloat());
              break;
            case 6:
              localObject = Character.valueOf(localByteBuffer.getChar());
            }
          }
        }
        i = 0;
        j = 0;
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.e
 * JD-Core Version:    0.6.2
 */