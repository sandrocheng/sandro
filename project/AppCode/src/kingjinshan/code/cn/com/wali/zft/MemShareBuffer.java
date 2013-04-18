package cn.com.wali.zft;

import java.io.File;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;

final class MemShareBuffer
{
  private FileChannel fc;
  private String filename;
  private boolean is_read;
  private boolean is_write;
  private MappedByteBuffer map;
  private long pos;
  private RandomAccessFile raf;
  private long size;

  public MemShareBuffer(String paramString, long paramLong1, long paramLong2, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramLong1 < 0L)
      throw new IllegalArgumentException();
    init(paramString, paramLong1, paramLong2, paramBoolean1, paramBoolean2);
  }

  public MemShareBuffer(String paramString, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    init(paramString, 0L, paramLong, paramBoolean1, paramBoolean2);
  }

  private void init(String paramString, long paramLong1, long paramLong2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.is_read = paramBoolean1;
    this.is_write = paramBoolean2;
    this.pos = paramLong1;
    this.size = paramLong2;
    this.filename = paramString;
    File localFile = new File(paramString);
    if ((!localFile.exists()) && (paramBoolean2))
      localFile.createNewFile();
  }

  private void load_fc()
  {
    while (true)
    {
      try
      {
        String str1 = this.filename;
        if ((this.is_read) && (this.is_write))
        {
          str2 = "rw";
          this.raf = new RandomAccessFile(str1, str2);
          this.fc = this.raf.getChannel();
          if ((this.is_read) && (this.is_write))
          {
            this.map = this.fc.map(FileChannel.MapMode.READ_WRITE, this.pos, this.size);
            this.map.load();
            break label136;
          }
        }
        else
        {
          if (!this.is_read)
            break label137;
          str2 = "r";
          continue;
        }
        this.map = this.fc.map(FileChannel.MapMode.READ_ONLY, this.pos, this.size);
        continue;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      label136: return;
      label137: String str2 = "w";
    }
  }

  public final void close()
  {
    if (this.map != null)
      this.map = null;
    try
    {
      if (this.fc != null)
        this.fc.close();
      if (this.raf != null)
        this.raf.close();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final MappedByteBuffer getMap()
  {
    if (this.map == null)
      load_fc();
    return this.map;
  }

  public final MappedByteBuffer getMap(long paramLong1, long paramLong2)
  {
    if (this.map == null)
    {
      this.pos = paramLong1;
      this.size = paramLong2;
      load_fc();
    }
    label38: label85: label89: 
    while (true)
    {
      return this.map;
      int i;
      if (this.pos != paramLong1)
      {
        i = 1;
        if (this.size == paramLong2)
          break label85;
      }
      for (int j = 1; ; j = 0)
      {
        if ((i | j) == 0)
          break label89;
        close();
        this.pos = paramLong1;
        this.size = paramLong2;
        load_fc();
        break;
        i = 0;
        break label38;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cn.com.wali.zft.MemShareBuffer
 * JD-Core Version:    0.6.2
 */