package com.dolphin.browser.addons;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.List;

public abstract class y extends Binder
  implements x
{
  public static x a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.dolphin.browser.addons.BrowserUtil");
      if ((localIInterface != null) && ((localIInterface instanceof x)))
        localObject = (x)localIInterface;
      else
        localObject = new z(paramIBinder);
    }
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    boolean bool;
    switch (paramInt1)
    {
    default:
      bool = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    }
    while (true)
    {
      return bool;
      paramParcel2.writeString("com.dolphin.browser.addons.BrowserUtil");
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      BookmarkTreeNode localBookmarkTreeNode3 = a(paramParcel1.readLong());
      paramParcel2.writeNoException();
      if (localBookmarkTreeNode3 != null)
      {
        paramParcel2.writeInt(1);
        localBookmarkTreeNode3.writeToParcel(paramParcel2, 1);
      }
      while (true)
      {
        bool = true;
        break;
        paramParcel2.writeInt(0);
      }
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      List localList3 = b(paramParcel1.readLong());
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(localList3);
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      int k = paramParcel1.readInt();
      BookmarkTreeNode localBookmarkTreeNode2 = null;
      if (k != 0)
        localBookmarkTreeNode2 = (BookmarkTreeNode)BookmarkTreeNode.CREATOR.createFromParcel(paramParcel1);
      long l2 = a(localBookmarkTreeNode2);
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l2);
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      long l1 = a(paramParcel1.readLong(), paramParcel1.readLong());
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l1);
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      c(paramParcel1.readLong());
      paramParcel2.writeNoException();
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      int j = paramParcel1.readInt();
      BookmarkTreeNode localBookmarkTreeNode1 = null;
      if (j != 0)
        localBookmarkTreeNode1 = (BookmarkTreeNode)BookmarkTreeNode.CREATOR.createFromParcel(paramParcel1);
      b(localBookmarkTreeNode1);
      paramParcel2.writeNoException();
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      List localList2 = a(paramParcel1.readString(), paramParcel1.createStringArray());
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(localList2);
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      a(paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      b(paramParcel1.readString(), paramParcel1.createStringArray());
      paramParcel2.writeNoException();
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      List localList1 = c(paramParcel1.readString(), paramParcel1.createStringArray());
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(localList1);
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      int i = paramParcel1.readInt();
      DownloadInfo localDownloadInfo = null;
      if (i != 0)
        localDownloadInfo = (DownloadInfo)DownloadInfo.CREATOR.createFromParcel(paramParcel1);
      a(localDownloadInfo);
      paramParcel2.writeNoException();
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      a(am.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      b(am.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      c(am.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      bool = true;
      continue;
      paramParcel1.enforceInterface("com.dolphin.browser.addons.BrowserUtil");
      d(am.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      bool = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.y
 * JD-Core Version:    0.6.2
 */