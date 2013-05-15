package com.dolphin.browser.addons;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

class z
  implements x
{
  private IBinder a;

  z(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public long a(long paramLong1, long paramLong2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      localParcel1.writeLong(paramLong1);
      localParcel1.writeLong(paramLong2);
      this.a.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      long l = localParcel2.readLong();
      return l;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public long a(BookmarkTreeNode paramBookmarkTreeNode)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      if (paramBookmarkTreeNode != null)
      {
        localParcel1.writeInt(1);
        paramBookmarkTreeNode.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(3, localParcel1, localParcel2, 0);
        localParcel2.readException();
        long l = localParcel2.readLong();
        return l;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public BookmarkTreeNode a(long paramLong)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      localParcel1.writeLong(paramLong);
      this.a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      if (localParcel2.readInt() != 0)
      {
        localBookmarkTreeNode = (BookmarkTreeNode)BookmarkTreeNode.CREATOR.createFromParcel(localParcel2);
        return localBookmarkTreeNode;
      }
      BookmarkTreeNode localBookmarkTreeNode = null;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public List a(String paramString, String[] paramArrayOfString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      localParcel1.writeString(paramString);
      localParcel1.writeStringArray(paramArrayOfString);
      this.a.transact(7, localParcel1, localParcel2, 0);
      localParcel2.readException();
      ArrayList localArrayList = localParcel2.createTypedArrayList(BookmarkTreeNode.CREATOR);
      return localArrayList;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void a(DownloadInfo paramDownloadInfo)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      if (paramDownloadInfo != null)
      {
        localParcel1.writeInt(1);
        paramDownloadInfo.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(11, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void a(al paramal)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      if (paramal != null)
      {
        localIBinder = paramal.asBinder();
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(12, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      IBinder localIBinder = null;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void a(String paramString1, String paramString2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      this.a.transact(8, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public IBinder asBinder()
  {
    return this.a;
  }

  public List b(long paramLong)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      localParcel1.writeLong(paramLong);
      this.a.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      ArrayList localArrayList = localParcel2.createTypedArrayList(BookmarkTreeNode.CREATOR);
      return localArrayList;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void b(BookmarkTreeNode paramBookmarkTreeNode)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      if (paramBookmarkTreeNode != null)
      {
        localParcel1.writeInt(1);
        paramBookmarkTreeNode.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(6, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void b(al paramal)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      if (paramal != null)
      {
        localIBinder = paramal.asBinder();
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(13, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      IBinder localIBinder = null;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void b(String paramString, String[] paramArrayOfString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      localParcel1.writeString(paramString);
      localParcel1.writeStringArray(paramArrayOfString);
      this.a.transact(9, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public List c(String paramString, String[] paramArrayOfString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      localParcel1.writeString(paramString);
      localParcel1.writeStringArray(paramArrayOfString);
      this.a.transact(10, localParcel1, localParcel2, 0);
      localParcel2.readException();
      ArrayList localArrayList = localParcel2.createTypedArrayList(HistoryInfo.CREATOR);
      return localArrayList;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void c(long paramLong)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      localParcel1.writeLong(paramLong);
      this.a.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void c(al paramal)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      if (paramal != null)
      {
        localIBinder = paramal.asBinder();
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(14, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      IBinder localIBinder = null;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void d(al paramal)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.dolphin.browser.addons.BrowserUtil");
      if (paramal != null)
      {
        localIBinder = paramal.asBinder();
        localParcel1.writeStrongBinder(localIBinder);
        this.a.transact(15, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      IBinder localIBinder = null;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.z
 * JD-Core Version:    0.6.2
 */