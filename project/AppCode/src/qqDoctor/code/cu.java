import android.content.Context;
import com.tencent.tccsync.ITccSyncDbAdapter;
import com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType;
import com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue;
import com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue;
import com.tencent.tccsync.RemoteSync.SyncType;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class cu
  implements ITccSyncDbAdapter
{
  private Context a = null;
  private ITccSyncDbAdapter.DbAdapterType b = ITccSyncDbAdapter.DbAdapterType.UNKNOW;
  private cb c = null;
  private List<String> d = null;
  private int e = 0;
  private ch f = null;
  private String[] g = null;
  private boolean h = false;
  private RemoteSync.SyncType i = RemoteSync.SyncType.SYNC_NONE;

  private cu(Context paramContext, ITccSyncDbAdapter.DbAdapterType paramDbAdapterType, RemoteSync.SyncType paramSyncType, cb paramcb)
  {
    this.a = paramContext;
    this.b = paramDbAdapterType;
    this.c = paramcb;
    this.i = paramSyncType;
  }

  private cu(Context paramContext, ITccSyncDbAdapter.DbAdapterType paramDbAdapterType, RemoteSync.SyncType paramSyncType, cb paramcb, String[] paramArrayOfString, boolean paramBoolean)
  {
    this.a = paramContext;
    this.b = paramDbAdapterType;
    this.g = paramArrayOfString;
    this.c = paramcb;
    this.h = paramBoolean;
    this.i = paramSyncType;
  }

  public static ITccSyncDbAdapter a(Context paramContext, ITccSyncDbAdapter.DbAdapterType paramDbAdapterType, RemoteSync.SyncType paramSyncType, cb paramcb)
  {
    dk.b("TccSyncDb", "getITccSyncDbAdapter");
    return new cu(paramContext, paramDbAdapterType, paramSyncType, paramcb);
  }

  public static ITccSyncDbAdapter a(Context paramContext, ITccSyncDbAdapter.DbAdapterType paramDbAdapterType, RemoteSync.SyncType paramSyncType, cb paramcb, String[] paramArrayOfString, boolean paramBoolean)
  {
    dk.b("TccSyncDb", "getITccSyncDbAdapter");
    return new cu(paramContext, paramDbAdapterType, paramSyncType, paramcb, null, false);
  }

  public final int add(ArrayList<byte[]> paramArrayList1, ArrayList<byte[]> paramArrayList2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    dk.b("TccSyncDb", "add");
    int m;
    if (de.c)
    {
      paramArrayOfInt2[0] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR.toInt();
      m = -100;
    }
    ArrayList localArrayList1;
    int j;
    while (true)
    {
      return m;
      dk.b("TccSyncDb", "add enter");
      localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      cc localcc1 = null;
      j = paramArrayList1.size();
      int k = 0;
      if (k >= j);
      try
      {
        while (true)
        {
          if (this.c.a(localArrayList2, localArrayList1, paramArrayOfInt2))
            break label240;
          paramArrayOfInt2[0] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR.toInt();
          m = -100;
          break;
          try
          {
            localcc1 = this.f.a((byte[])paramArrayList1.get(k));
            paramArrayOfInt2[k] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE.toInt();
            localArrayList2.add(k, localcc1);
            k++;
          }
          catch (Throwable localThrowable1)
          {
            while (true)
            {
              dk.c("TccSyncDb", "add(), " + localThrowable1.toString());
              paramArrayOfInt2[k] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID.toInt();
            }
          }
        }
      }
      catch (Throwable localThrowable2)
      {
        dk.c("TccSyncDb", "add OperationReturnValue.TCC_ERR_DATA_INVALID, " + localThrowable2.toString());
        paramArrayOfInt2[0] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR.toInt();
        m = -100;
      }
    }
    label240: byte[] arrayOfByte1 = new byte[0];
    for (int n = 0; ; n++)
    {
      if (n >= j)
      {
        m = 0;
        break;
      }
      byte[] arrayOfByte2;
      cc localcc2;
      try
      {
        String str = (String)localArrayList1.get(n);
        if (str == null)
        {
          paramArrayOfInt2[n] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
          paramArrayOfInt1[n] = 0;
          paramArrayList2.add(n, arrayOfByte1);
        }
        else
        {
          arrayOfByte2 = str.getBytes("UTF-8");
          dk.b("TccSyncDb", "add result idAdded=" + str);
          localcc2 = this.c.c(str);
          if (localcc2 == null)
          {
            paramArrayOfInt2[n] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
            paramArrayOfInt1[n] = 0;
            paramArrayList2.add(n, arrayOfByte1);
          }
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        paramArrayOfInt2[n] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
        paramArrayOfInt1[n] = 0;
        paramArrayList2.add(n, arrayOfByte1);
        dk.c("TccSyncDb", "add(), " + localUnsupportedEncodingException.toString());
      }
      paramArrayOfInt1[n] = localcc2.c();
      try
      {
        paramArrayList2.add(n, arrayOfByte2);
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        paramArrayOfInt2[n] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
        paramArrayOfInt1[n] = 0;
        dk.c("TccSyncDb", "add(), " + localIndexOutOfBoundsException.toString());
      }
    }
  }

  public final ITccSyncDbAdapter.OperationReturnValue add(byte[] paramArrayOfByte, AtomicReference<byte[]> paramAtomicReference, AtomicInteger paramAtomicInteger)
  {
    dk.b("TccSyncDb", "add one");
    ITccSyncDbAdapter.OperationReturnValue localOperationReturnValue;
    if (de.c)
      localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR;
    while (true)
    {
      return localOperationReturnValue;
      dk.b("TccSyncDb", "add enter");
      String str;
      try
      {
        cc localcc1 = this.f.a(paramArrayOfByte);
        str = this.c.a(localcc1);
        if (str != null)
          break label108;
        dk.b("TccSyncDb", "add OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILE 1");
        localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED;
      }
      catch (Throwable localThrowable1)
      {
        dk.c("TccSyncDb", "add OperationReturnValue.TCC_ERR_DATA_INVALID, " + localThrowable1.toString());
        localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID;
      }
      continue;
      try
      {
        label108: paramAtomicReference.set(str.getBytes("UTF-8"));
        cc localcc2 = this.c.c(str);
        if (localcc2 == null)
        {
          dk.b("TccSyncDb", "add OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILE 2");
          localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED;
        }
        else
        {
          dk.b("TccSyncDb", "add query and entity.getCount = " + localcc2.c.size());
          paramAtomicInteger.set(localcc2.c());
          dk.b("TccSyncDb", "add OperationReturnValue.TCC_ERR_NONE");
          localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        dk.c("TccSyncDb", "add OperationReturnValue.TCC_ERR 4, " + localUnsupportedEncodingException.toString());
        localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR;
      }
      catch (Throwable localThrowable2)
      {
        dk.c("TccSyncDb", localThrowable2.getMessage());
        localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR;
      }
    }
  }

  public final ITccSyncDbAdapter.OperationReturnValue del(byte[] paramArrayOfByte)
  {
    dk.b("TccSyncDb", "del");
    ITccSyncDbAdapter.OperationReturnValue localOperationReturnValue;
    if (de.c)
      localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR;
    while (true)
    {
      return localOperationReturnValue;
      dk.b("TccSyncDb", "del enter");
      if (paramArrayOfByte == null)
      {
        dk.b("TccSyncDb", "del OperationReturnValue.TCC_ERR_DATA_INVALID");
        localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID;
      }
      else
      {
        String str = new String(paramArrayOfByte);
        cb.a locala = this.c.a(str);
        if (locala == cb.a.a)
        {
          dk.b("TccSyncDb", "del OperationReturnValue.TCC_ERR_DATA_NOT_FOUND");
          localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_NOT_FOUND;
        }
        else if (locala == cb.a.c)
        {
          dk.b("TccSyncDb", "del OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED");
          localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED;
        }
        else
        {
          dk.b("TccSyncDb", "del OperationReturnValue.TCC_ERR_NONE");
          localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE;
        }
      }
    }
  }

  public final ITccSyncDbAdapter.GetCurrObjectReturnValue getCurrObject(AtomicReference<byte[]> paramAtomicReference1, AtomicReference<byte[]> paramAtomicReference2, AtomicInteger paramAtomicInteger)
  {
    ITccSyncDbAdapter.GetCurrObjectReturnValue localGetCurrObjectReturnValue;
    if (de.c)
      localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
    while (true)
    {
      return localGetCurrObjectReturnValue;
      dk.b("TccSyncDb", "getCurrObject  enter");
      if (this.d == null)
      {
        dk.b("TccSyncDb", "getCurrObject  GetCurrObjectReturnValue.TCC_ERR 1");
        localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
      }
      else if (this.e >= this.d.size())
      {
        dk.b("TccSyncDb", "getCurrObject GetCurrObjectReturnValue.TCC_ERR 2");
        localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR_EOF;
      }
      else
      {
        String str = (String)this.d.get(this.e);
        cc localcc = this.c.c(str);
        if (localcc == null)
        {
          dk.b("TccSyncDb", "getCurrObject GetCurrObjectReturnValue.TCC_ERR 3 strContactId = " + str);
          localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
        }
        else
        {
          byte[] arrayOfByte = this.f.a(localcc);
          if (arrayOfByte == null)
          {
            dk.b("TccSyncDb", "getCurrObject GetCurrObjectReturnValue.TCC_ERR 4");
            localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
          }
          else
          {
            paramAtomicReference1.set(arrayOfByte);
            try
            {
              paramAtomicReference2.set(str.getBytes("UTF-8"));
              paramAtomicInteger.set(localcc.c());
              dk.b("TccSyncDb", "getCurrObject GetCurrObjectReturnValue.TCC_RRR_NONE");
              localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_RRR_NONE;
            }
            catch (UnsupportedEncodingException localUnsupportedEncodingException)
            {
              dk.c("TccSyncDb", "getCurrObject GetCurrObjectReturnValue.TCC_ERR 5, " + localUnsupportedEncodingException.toString());
              localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
            }
          }
        }
      }
    }
  }

  public final ITccSyncDbAdapter.GetCurrObjectReturnValue getCurrObjectInfo(AtomicReference<byte[]> paramAtomicReference, AtomicInteger paramAtomicInteger)
  {
    ITccSyncDbAdapter.GetCurrObjectReturnValue localGetCurrObjectReturnValue;
    if (de.c)
      localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
    while (true)
    {
      return localGetCurrObjectReturnValue;
      dk.b("TccSyncDb", "getCurrObjectInfo enter");
      if (this.d == null)
      {
        dk.b("TccSyncDb", "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 1");
        localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
      }
      else if (this.e >= this.d.size())
      {
        dk.b("TccSyncDb", "getCurrObjectInfo GetCurrObjectReturnValue.TCC_EOF");
        localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR_EOF;
      }
      else
      {
        String str = (String)this.d.get(this.e);
        cc localcc = this.c.c(str);
        if (localcc == null)
        {
          dk.b("TccSyncDb", "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 2");
          localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
        }
        else
        {
          paramAtomicInteger.set(localcc.c());
          try
          {
            paramAtomicReference.set(str.getBytes("UTF-8"));
            dk.b("TccSyncDb", "getCurrObjectInfo GetCurrObjectReturnValue.TCC_RRR_NONE");
            localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_RRR_NONE;
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            dk.c("TccSyncDb", "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 3, " + localUnsupportedEncodingException.toString());
            localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
          }
          catch (Throwable localThrowable)
          {
            dk.c("TccSyncDb", "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 4, " + localThrowable.toString());
            localGetCurrObjectReturnValue = ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
          }
        }
      }
    }
  }

  public final ITccSyncDbAdapter.DbAdapterType getSyncDataType()
  {
    dk.b("TccSyncDb", "getSyncDataType");
    return this.b;
  }

  public final RemoteSync.SyncType getSyncType()
  {
    return this.i;
  }

  public final boolean hasEnoughStorageSpace(long paramLong)
  {
    dk.b("TccSyncDb", "hasEnoughStorageSpace");
    return true;
  }

  public final boolean isAtEnd()
  {
    dk.b("TccSyncDb", "isAtEnd enter");
    if ((this.d != null) && (this.e >= this.d.size()))
      dk.b("TccSyncDb", "isAtEnd  true");
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      dk.b("TccSyncDb", "isAtEnd false");
    }
  }

  public final boolean isExist(byte[] paramArrayOfByte)
  {
    boolean bool = false;
    dk.b("TccSyncDb", "isExist enter");
    if (paramArrayOfByte == null)
      dk.b("TccSyncDb", "isExist false");
    while (true)
    {
      return bool;
      new String();
      try
      {
        String str = new String(paramArrayOfByte, "UTF-8");
        dk.b("TccSyncDb", "isExist " + str);
        bool = this.c.b(str);
      }
      catch (Exception localException)
      {
        dk.c("TccSyncDb", "oidInputError, " + localException.toString());
        bool = false;
      }
    }
  }

  public final ITccSyncDbAdapter.OperationReturnValue mdf(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, AtomicInteger paramAtomicInteger)
  {
    dk.b("TccSyncDb", "mdf");
    ITccSyncDbAdapter.OperationReturnValue localOperationReturnValue;
    if (de.c)
      localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR;
    while (true)
    {
      return localOperationReturnValue;
      dk.b("TccSyncDb", "mdf enter");
      if ((paramArrayOfByte2 == null) || (paramArrayOfByte1 == null))
      {
        dk.b("TccSyncDb", "mdf OperationReturnValue.TCC_ERR_DATA_INVALID");
        localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID;
      }
      else
      {
        cc localcc1;
        try
        {
          localcc1 = this.f.a(paramArrayOfByte1);
          if (localcc1 != null)
            break label123;
          dk.b("TccSyncDb", "mdf entity == null");
          localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID;
        }
        catch (Throwable localThrowable)
        {
          dk.c("TccSyncDb", "mdf OperationReturnValue.TCC_ERR_DATA_INVALID, " + localThrowable.toString());
          localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID;
        }
        continue;
        label123: String str = new String(paramArrayOfByte2);
        localcc1.b = str;
        cb.a locala = this.c.b(localcc1);
        if (locala == cb.a.a)
        {
          dk.b("TccSyncDb", "mdf OperationReturnValue.TCC_ERR_DATA_NOT_FOUND");
          localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_NOT_FOUND;
        }
        else if (locala == cb.a.c)
        {
          dk.b("TccSyncDb", "mdf OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED");
          localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED;
        }
        else
        {
          cc localcc2 = this.c.c(str);
          if (localcc2 == null)
          {
            dk.b("TccSyncDb", "mdf OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED");
            localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED;
          }
          else
          {
            paramAtomicInteger.set(localcc2.c());
            dk.b("TccSyncDb", "mdf OperationReturnValue.TCC_ERR_NONE");
            localOperationReturnValue = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE;
          }
        }
      }
    }
  }

  public final boolean seekFirst(AtomicInteger paramAtomicInteger)
  {
    boolean bool = false;
    dk.b("TccSyncDb", "seekFirst  enter");
    if (this.d == null)
    {
      paramAtomicInteger.set(0);
      dk.b("TccSyncDb", "seekFirst  false");
    }
    while (true)
    {
      return bool;
      this.e = 0;
      paramAtomicInteger.set(this.d.size());
      dk.b("TccSyncDb", "seekFirst  true");
      bool = true;
    }
  }

  public final boolean seekNext()
  {
    if ((this.d != null) && (this.e < this.d.size()))
      this.e = (1 + this.e);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void setSyncType(RemoteSync.SyncType paramSyncType)
  {
    this.i = paramSyncType;
  }

  public final int size()
  {
    int j = 0;
    dk.b("TccSyncDb", "size  enter");
    if (this.d == null)
      dk.b("TccSyncDb", "size  false");
    while (true)
    {
      return j;
      this.e = 0;
      j = this.d.size();
      dk.b("TccSyncDb", "size  true");
    }
  }

  public final boolean syncFreeze()
  {
    dk.b("TccSyncDb", "syncFreeze  enter");
    this.c = null;
    this.d = null;
    this.e = 0;
    this.f = null;
    this.g = null;
    dk.b("TccSyncDb", "syncFreeze  true");
    return true;
  }

  public final boolean syncInit()
  {
    boolean bool = false;
    dk.b("TccSyncDb", "syncInit enter");
    if ((!this.b.isEqual(ITccSyncDbAdapter.DbAdapterType.BOOKMARK)) && (!this.b.isEqual(ITccSyncDbAdapter.DbAdapterType.CALLLOG)))
    {
      if (this.b.isEqual(ITccSyncDbAdapter.DbAdapterType.CONTACT))
        this.c = bn.a(this.a);
    }
    else
    {
      if (this.c != null)
        this.d = this.c.a(this.g, this.h);
      if (this.d != null)
        break label146;
      dk.b("TccSyncDb", "syncInit false");
    }
    while (true)
    {
      return bool;
      if (this.b.isEqual(ITccSyncDbAdapter.DbAdapterType.SMS))
      {
        this.c = bt.a(this.a);
        break;
      }
      this.b.isEqual(ITccSyncDbAdapter.DbAdapterType.QQBROWSER_BOOKMARK);
      break;
      label146: this.f = new by();
      this.e = 0;
      dk.b("TccSyncDb", "syncInit  true");
      bool = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     cu
 * JD-Core Version:    0.6.2
 */