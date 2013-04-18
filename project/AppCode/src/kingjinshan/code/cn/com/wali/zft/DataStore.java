package cn.com.wali.zft;

import java.io.File;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.Calendar;

final class DataStore
{
  private static final int ITEM_SIZE = 48;
  private static final int MAX_SIZE = 5000;
  private MemShareBuffer msb;

  private int find_blank()
  {
    int i = 0;
    MappedByteBuffer localMappedByteBuffer = this.msb.getMap();
    int j;
    if (localMappedByteBuffer == null)
      j = -1;
    while (true)
    {
      return j;
      localMappedByteBuffer.position(0);
      while (true)
      {
        if (i >= 100)
          break label65;
        if (localMappedByteBuffer.get() == 0)
        {
          j = localMappedByteBuffer.position() - 1;
          break;
        }
        i++;
        localMappedByteBuffer.position(i * 48);
      }
      label65: j = -1;
    }
  }

  private int find_item(String paramString)
  {
    int j;
    if (this.msb == null)
      j = -1;
    while (true)
    {
      return j;
      MappedByteBuffer localMappedByteBuffer = this.msb.getMap();
      if (localMappedByteBuffer == null)
      {
        j = -1;
      }
      else
      {
        byte[] arrayOfByte = new byte[41];
        localMappedByteBuffer.position(0);
        int i = 0;
        while (true)
        {
          if (i >= 100)
            break label111;
          localMappedByteBuffer.get(arrayOfByte);
          if (arrayOfByte[0] == 0)
            break label111;
          if (paramString.equals(new String(arrayOfByte, 0, 20).trim()))
          {
            j = i * 48;
            break;
          }
          i++;
          localMappedByteBuffer.position(i * 48);
        }
        label111: j = find_blank();
      }
    }
  }

  private long readLong(byte[] paramArrayOfByte, int paramInt)
  {
    int i = (0xFF & paramArrayOfByte[(paramInt + 0)]) << 24 | (0xFF & paramArrayOfByte[(paramInt + 1)]) << 16 | (0xFF & paramArrayOfByte[(paramInt + 2)]) << 8 | 0xFF & paramArrayOfByte[(paramInt + 3)];
    int j = (0xFF & paramArrayOfByte[(paramInt + 4)]) << 24 | (0xFF & paramArrayOfByte[(paramInt + 5)]) << 16 | (0xFF & paramArrayOfByte[(paramInt + 6)]) << 8 | 0xFF & paramArrayOfByte[(paramInt + 7)];
    return (0xFFFFFFFF & i) << 32 | 0xFFFFFFFF & j;
  }

  private void writeLong(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    paramArrayOfByte[(paramInt + 0)] = ((byte)(int)(paramLong >> 56));
    paramArrayOfByte[(paramInt + 1)] = ((byte)(int)(paramLong >> 48));
    paramArrayOfByte[(paramInt + 2)] = ((byte)(int)(paramLong >> 40));
    paramArrayOfByte[(paramInt + 3)] = ((byte)(int)(paramLong >> 32));
    paramArrayOfByte[(paramInt + 4)] = ((byte)(int)(paramLong >> 24));
    paramArrayOfByte[(paramInt + 5)] = ((byte)(int)(paramLong >> 16));
    paramArrayOfByte[(paramInt + 6)] = ((byte)(int)(paramLong >> 8));
    paramArrayOfByte[(paramInt + 7)] = ((byte)(int)paramLong);
  }

  public final void close()
  {
    if (this.msb != null)
      this.msb.close();
  }

  public final DataStore.Pojo[] get_current()
  {
    DataStore.Pojo[] arrayOfPojo;
    if (this.msb == null)
      arrayOfPojo = null;
    while (true)
    {
      return arrayOfPojo;
      ArrayList localArrayList = new ArrayList(10);
      int i = Calendar.getInstance().get(5);
      int j = Calendar.getInstance().get(2);
      MappedByteBuffer localMappedByteBuffer = this.msb.getMap();
      if (localMappedByteBuffer == null)
        arrayOfPojo = new DataStore.Pojo[0];
      else
        try
        {
          byte[] arrayOfByte = new byte[48];
          localMappedByteBuffer.position(0);
          int k = 0;
          while (k < 100)
          {
            localMappedByteBuffer.get(arrayOfByte);
            if (arrayOfByte[0] == 0)
              break;
            long l = readLong(arrayOfByte, 40);
            Calendar localCalendar = Calendar.getInstance();
            localCalendar.setTimeInMillis(l);
            if ((j == localCalendar.get(2)) && (i == localCalendar.get(5)))
            {
              DataStore.Pojo localPojo = new DataStore.Pojo();
              DataStore.Pojo.access$002(localPojo, new String(arrayOfByte, 0, 20).trim());
              DataStore.Pojo.access$102(localPojo, new String(arrayOfByte, 20, 20).trim());
              DataStore.Pojo.access$202(localPojo, readLong(arrayOfByte, 40));
              localArrayList.add(localPojo);
            }
            k++;
            localMappedByteBuffer.position(k * 48);
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          File localFile = new File("/sdcard/zft/ds");
          if (localFile.exists())
            localFile.delete();
          arrayOfPojo = (DataStore.Pojo[])localArrayList.toArray(new DataStore.Pojo[0]);
        }
    }
  }

  public final DataStore.Pojo get_value(String paramString)
  {
    DataStore.Pojo localPojo;
    if (this.msb == null)
      localPojo = null;
    while (true)
    {
      return localPojo;
      int i = find_item(paramString);
      if (i == -1)
      {
        localPojo = null;
      }
      else
      {
        MappedByteBuffer localMappedByteBuffer = this.msb.getMap();
        if (localMappedByteBuffer == null)
        {
          localPojo = null;
        }
        else
        {
          byte[] arrayOfByte = new byte[48];
          localMappedByteBuffer.position(i);
          localMappedByteBuffer.get(arrayOfByte);
          localPojo = new DataStore.Pojo();
          DataStore.Pojo.access$002(localPojo, new String(arrayOfByte, 0, 20).trim());
          DataStore.Pojo.access$102(localPojo, new String(arrayOfByte, 20, 20).trim());
          DataStore.Pojo.access$202(localPojo, readLong(arrayOfByte, 40));
        }
      }
    }
  }

  public final boolean open()
  {
    boolean bool;
    if (this.msb != null)
      bool = true;
    while (true)
    {
      return bool;
      File localFile1 = new File("/sdcard/zft/");
      if (!localFile1.exists())
        localFile1.mkdirs();
      File localFile2 = new File(localFile1, "ds");
      if ((localFile2.exists()) && (localFile2.length() < 5000L))
        localFile2.delete();
      if ((localFile2.exists()) && (System.currentTimeMillis() - localFile2.lastModified() > 43200000L))
        localFile2.delete();
      try
      {
        this.msb = new MemShareBuffer(localFile2.getAbsolutePath(), 5000L, true, true);
        bool = true;
      }
      catch (Exception localException)
      {
        bool = false;
      }
    }
  }

  public final boolean put_value(String paramString1, String paramString2)
  {
    if (this.msb == null);
    Calendar localCalendar;
    int i;
    for (boolean bool = false; ; bool = false)
    {
      return bool;
      localCalendar = Calendar.getInstance();
      i = find_item(paramString1);
      if (i != -1)
        break;
    }
    byte[] arrayOfByte1 = new byte[48];
    byte[] arrayOfByte2 = paramString1.getBytes();
    byte[] arrayOfByte3 = paramString2.getBytes();
    int j;
    if (arrayOfByte2.length > 20)
    {
      j = 20;
      label66: System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, j);
      if (arrayOfByte3.length <= 20)
        break label158;
    }
    label158: for (int k = 20; ; k = arrayOfByte3.length)
    {
      System.arraycopy(arrayOfByte3, 0, arrayOfByte1, 20, k);
      writeLong(arrayOfByte1, 40, localCalendar.getTimeInMillis());
      MappedByteBuffer localMappedByteBuffer = this.msb.getMap();
      localMappedByteBuffer.position(i);
      localMappedByteBuffer.put(arrayOfByte1);
      localMappedByteBuffer.force();
      bool = true;
      break;
      j = arrayOfByte2.length;
      break label66;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cn.com.wali.zft.DataStore
 * JD-Core Version:    0.6.2
 */