package kdebug;

import java.io.DataOutput;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.CRC32;

public final class b
{
  private static final int a = 1048576;

  private static int a(DataOutput paramDataOutput, int paramInt)
  {
    paramDataOutput.write(paramInt & 0xFF);
    paramDataOutput.write(0xFF & paramInt >> 8);
    return paramInt;
  }

  private static long a(DataOutput paramDataOutput, long paramLong)
  {
    paramDataOutput.write((int)(0xFF & paramLong));
    paramDataOutput.write(0xFF & (int)(paramLong >> 8));
    paramDataOutput.write(0xFF & (int)(paramLong >> 16));
    paramDataOutput.write(0xFF & (int)(paramLong >> 24));
    return paramLong;
  }

  public static void a(HashMap paramHashMap, File paramFile)
  {
    byte[] arrayOfByte1 = new byte[1048576];
    RandomAccessFile localRandomAccessFile;
    int i;
    long[] arrayOfLong1;
    byte[][] arrayOfByte;
    File[] arrayOfFile;
    long[] arrayOfLong2;
    int j;
    File localFile;
    byte[] arrayOfByte2;
    long l3;
    CRC32 localCRC32;
    FileInputStream localFileInputStream;
    try
    {
      localRandomAccessFile = new RandomAccessFile(paramFile, "rw");
      i = paramHashMap.size();
      arrayOfLong1 = new long[i];
      arrayOfByte = new byte[i][];
      arrayOfFile = new File[i];
      arrayOfLong2 = new long[i];
      Iterator localIterator = paramHashMap.keySet().iterator();
      j = 0;
      if (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        localFile = new File(str1);
        String str2 = (String)paramHashMap.get(str1) + "_" + localFile.getName();
        String str3 = new String(str2.getBytes("8859_1"), "GB2312");
        arrayOfByte2 = str3.getBytes();
        arrayOfLong2[j] = localRandomAccessFile.getFilePointer();
        a(localRandomAccessFile, 67324752L);
        a(localRandomAccessFile, 10);
        a(localRandomAccessFile, 0);
        a(localRandomAccessFile, 0);
        a(localRandomAccessFile, 0);
        a(localRandomAccessFile, 0);
        l3 = localRandomAccessFile.getFilePointer();
        a(localRandomAccessFile, 0L);
        a(localRandomAccessFile, localFile.length());
        a(localRandomAccessFile, localFile.length());
        a(localRandomAccessFile, arrayOfByte2.length);
        a(localRandomAccessFile, 0);
        localRandomAccessFile.write(arrayOfByte2);
        localCRC32 = new CRC32();
        localFileInputStream = new FileInputStream(localFile);
        while (true)
        {
          int m = localFileInputStream.read(arrayOfByte1);
          if (m <= 0)
            break;
          localCRC32.update(arrayOfByte1, 0, m);
          localRandomAccessFile.write(arrayOfByte1, 0, m);
        }
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    while (true)
    {
      return;
      localFileInputStream.close();
      long l4 = localRandomAccessFile.getFilePointer();
      localRandomAccessFile.seek(l3);
      a(localRandomAccessFile, localCRC32.getValue());
      localRandomAccessFile.seek(l4);
      arrayOfLong1[j] = localCRC32.getValue();
      arrayOfByte[j] = arrayOfByte2;
      arrayOfFile[j] = localFile;
      j++;
      break;
      long l1 = localRandomAccessFile.getFilePointer();
      for (int k = 0; k < i; k++)
      {
        a(localRandomAccessFile, 33639248L);
        a(localRandomAccessFile, 20);
        a(localRandomAccessFile, 10);
        a(localRandomAccessFile, 0);
        a(localRandomAccessFile, 0);
        a(localRandomAccessFile, 0);
        a(localRandomAccessFile, 0);
        a(localRandomAccessFile, arrayOfLong1[k]);
        a(localRandomAccessFile, arrayOfFile[k].length());
        a(localRandomAccessFile, arrayOfFile[k].length());
        a(localRandomAccessFile, arrayOfByte[k].length);
        a(localRandomAccessFile, 0);
        a(localRandomAccessFile, 0);
        a(localRandomAccessFile, 0);
        a(localRandomAccessFile, 0);
        a(localRandomAccessFile, 0L);
        a(localRandomAccessFile, arrayOfLong2[k]);
        localRandomAccessFile.write(arrayOfByte[k]);
      }
      long l2 = localRandomAccessFile.getFilePointer();
      a(localRandomAccessFile, 101010256L);
      a(localRandomAccessFile, 0);
      a(localRandomAccessFile, 0);
      a(localRandomAccessFile, paramHashMap.size());
      a(localRandomAccessFile, paramHashMap.size());
      a(localRandomAccessFile, l2 - l1);
      a(localRandomAccessFile, l1);
      a(localRandomAccessFile, 0);
      localRandomAccessFile.close();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     kdebug.b
 * JD-Core Version:    0.6.2
 */