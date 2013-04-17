package com.tencent.tccsync;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public abstract interface ITccSyncDbAdapter
{
  public abstract int add(ArrayList<byte[]> paramArrayList1, ArrayList<byte[]> paramArrayList2, int[] paramArrayOfInt1, int[] paramArrayOfInt2);

  public abstract OperationReturnValue add(byte[] paramArrayOfByte, AtomicReference<byte[]> paramAtomicReference, AtomicInteger paramAtomicInteger);

  public abstract OperationReturnValue del(byte[] paramArrayOfByte);

  public abstract GetCurrObjectReturnValue getCurrObject(AtomicReference<byte[]> paramAtomicReference1, AtomicReference<byte[]> paramAtomicReference2, AtomicInteger paramAtomicInteger);

  public abstract GetCurrObjectReturnValue getCurrObjectInfo(AtomicReference<byte[]> paramAtomicReference, AtomicInteger paramAtomicInteger);

  public abstract DbAdapterType getSyncDataType();

  public abstract RemoteSync.SyncType getSyncType();

  public abstract boolean hasEnoughStorageSpace(long paramLong);

  public abstract boolean isAtEnd();

  public abstract boolean isExist(byte[] paramArrayOfByte);

  public abstract OperationReturnValue mdf(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, AtomicInteger paramAtomicInteger);

  public abstract boolean seekFirst(AtomicInteger paramAtomicInteger);

  public abstract boolean seekNext();

  public abstract void setSyncType(RemoteSync.SyncType paramSyncType);

  public abstract int size();

  public abstract boolean syncFreeze();

  public abstract boolean syncInit();

  public static enum DbAdapterType
  {
    private int value;

    static
    {
      CONTACT = new DbAdapterType("CONTACT", 2, 1);
      EVENT = new DbAdapterType("EVENT", 3, 2);
      SMS = new DbAdapterType("SMS", 4, 4);
      MMS = new DbAdapterType("MMS", 5, 8);
      CALLLOG = new DbAdapterType("CALLLOG", 6, 16);
      BOOKMARK = new DbAdapterType("BOOKMARK", 7, 32);
      TODO = new DbAdapterType("TODO", 8, 64);
      NOTE = new DbAdapterType("NOTE", 9, 128);
      TNOTE = new DbAdapterType("TNOTE", 10, 256);
      SECSMS = new DbAdapterType("SECSMS", 11, 512);
      BWLIST = new DbAdapterType("BWLIST", 12, 1024);
      QQBROWSER_BOOKMARK = new DbAdapterType("QQBROWSER_BOOKMARK", 13, 2048);
      DbAdapterType[] arrayOfDbAdapterType = new DbAdapterType[14];
      arrayOfDbAdapterType[0] = SOFT;
      arrayOfDbAdapterType[1] = UNKNOW;
      arrayOfDbAdapterType[2] = CONTACT;
      arrayOfDbAdapterType[3] = EVENT;
      arrayOfDbAdapterType[4] = SMS;
      arrayOfDbAdapterType[5] = MMS;
      arrayOfDbAdapterType[6] = CALLLOG;
      arrayOfDbAdapterType[7] = BOOKMARK;
      arrayOfDbAdapterType[8] = TODO;
      arrayOfDbAdapterType[9] = NOTE;
      arrayOfDbAdapterType[10] = TNOTE;
      arrayOfDbAdapterType[11] = SECSMS;
      arrayOfDbAdapterType[12] = BWLIST;
      arrayOfDbAdapterType[13] = QQBROWSER_BOOKMARK;
    }

    private DbAdapterType(int arg3)
    {
      int j;
      this.value = j;
    }

    public static ArrayList<Integer> convertDataTypesToArrays(int paramInt)
    {
      int i = 1;
      ArrayList localArrayList = new ArrayList();
      while (true)
      {
        if (paramInt == 0)
          return localArrayList;
        if ((paramInt & i) != 0)
          localArrayList.add(Integer.valueOf(i));
        paramInt &= (i ^ 0xFFFFFFFF);
        i <<= 1;
      }
    }

    public final boolean isEqual(DbAdapterType paramDbAdapterType)
    {
      boolean bool = false;
      if (paramDbAdapterType == null);
      while (true)
      {
        return bool;
        int i = paramDbAdapterType.toInt();
        int j = this.value;
        bool = false;
        if (i == j)
          bool = true;
      }
    }

    public final int toInt()
    {
      return this.value;
    }
  }

  public static enum GetCurrObjectReturnValue
  {
    private int value;

    static
    {
      TCC_ERR_EOF = new GetCurrObjectReturnValue("TCC_ERR_EOF", 1, -25);
      TCC_ERR = new GetCurrObjectReturnValue("TCC_ERR", 2, -32000);
      GetCurrObjectReturnValue[] arrayOfGetCurrObjectReturnValue = new GetCurrObjectReturnValue[3];
      arrayOfGetCurrObjectReturnValue[0] = TCC_RRR_NONE;
      arrayOfGetCurrObjectReturnValue[1] = TCC_ERR_EOF;
      arrayOfGetCurrObjectReturnValue[2] = TCC_ERR;
    }

    private GetCurrObjectReturnValue(int arg3)
    {
      int j;
      this.value = j;
    }

    public final int toInt()
    {
      return this.value;
    }
  }

  public static enum OperationReturnValue
  {
    private int value;

    static
    {
      TCC_ERR_DATA_NOT_FOUND = new OperationReturnValue("TCC_ERR_DATA_NOT_FOUND", 1, -33002);
      TCC_ERR_DATA_COMMAND_FAILED = new OperationReturnValue("TCC_ERR_DATA_COMMAND_FAILED", 2, -33003);
      TCC_ERR_DATA_COMMAND_NOT_IMPL = new OperationReturnValue("TCC_ERR_DATA_COMMAND_NOT_IMPL", 3, -33004);
      TCC_ERR_DATA_INVALID = new OperationReturnValue("TCC_ERR_DATA_INVALID", 4, -33005);
      TCC_ERR_DATA_BASE_FULL = new OperationReturnValue("TCC_ERR_DATA_BASE_FULL", 5, -33006);
      TCC_ERR_DATA_ALREADY_EXISTS = new OperationReturnValue("TCC_ERR_DATA_ALREADY_EXISTS", 6, 33007);
      TCC_ERR_WOULD_BLOCK = new OperationReturnValue("TCC_ERR_WOULD_BLOCK", 7, -32003);
      TCC_ERR = new OperationReturnValue("TCC_ERR", 8, -32000);
      OperationReturnValue[] arrayOfOperationReturnValue = new OperationReturnValue[9];
      arrayOfOperationReturnValue[0] = TCC_ERR_NONE;
      arrayOfOperationReturnValue[1] = TCC_ERR_DATA_NOT_FOUND;
      arrayOfOperationReturnValue[2] = TCC_ERR_DATA_COMMAND_FAILED;
      arrayOfOperationReturnValue[3] = TCC_ERR_DATA_COMMAND_NOT_IMPL;
      arrayOfOperationReturnValue[4] = TCC_ERR_DATA_INVALID;
      arrayOfOperationReturnValue[5] = TCC_ERR_DATA_BASE_FULL;
      arrayOfOperationReturnValue[6] = TCC_ERR_DATA_ALREADY_EXISTS;
      arrayOfOperationReturnValue[7] = TCC_ERR_WOULD_BLOCK;
      arrayOfOperationReturnValue[8] = TCC_ERR;
    }

    private OperationReturnValue(int arg3)
    {
      int j;
      this.value = j;
    }

    public final int toInt()
    {
      return this.value;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccsync.ITccSyncDbAdapter
 * JD-Core Version:    0.6.2
 */