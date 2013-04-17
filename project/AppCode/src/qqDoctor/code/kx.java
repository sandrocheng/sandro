import QQPIM.SoftListType;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.applist.AppListManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class kx
{
  public int a;
  public String b;
  public String c;
  public Drawable d;
  public byte[] e = new byte[13];
  public boolean f;
  public boolean g;
  private byte[] h = null;

  public static kx a(PackageInfo paramPackageInfo)
  {
    int i = 1;
    int j = 0;
    kx localkx = new kx();
    localkx.a = paramPackageInfo.applicationInfo.uid;
    localkx.b = paramPackageInfo.packageName;
    int k;
    label81: String[] arrayOfString;
    boolean bool;
    byte[] arrayOfByte;
    if ((0x1 & paramPackageInfo.applicationInfo.flags) == i)
    {
      k = i;
      localkx.f = k;
      if ((!localkx.f) && (!((AppListManager)ManagerCreator.getManager(AppListManager.class)).contains(localkx.b, SoftListType.WHITELIST_COMMON)))
        break label165;
      localkx.g = i;
      arrayOfString = paramPackageInfo.requestedPermissions;
      bool = localkx.g;
      if (arrayOfString != null)
        break label170;
      arrayOfByte = null;
      label106: localkx.e = arrayOfByte;
      if (localkx.e != null)
        break label277;
      localkx.e = new byte[13];
      int i1 = localkx.e.length;
      label134: if (j >= i1)
        break label277;
      if (j != 12)
        break label267;
      localkx.e[j] = 2;
    }
    while (true)
    {
      j++;
      break label134;
      k = 0;
      break;
      label165: i = 0;
      break label81;
      label170: ArrayList localArrayList = new ArrayList();
      int m = arrayOfString.length;
      for (int n = 0; n < m; n++)
        localArrayList.add(arrayOfString[n]);
      arrayOfByte = xf.a(localArrayList);
      if (arrayOfByte == null)
      {
        arrayOfByte = null;
        break label106;
      }
      for (int i2 = 0; i2 < 13; i2++)
        if ((arrayOfByte[i2] != -1) && (bool))
          arrayOfByte[i2] = 0;
      break label106;
      label267: localkx.e[j] = -1;
    }
    label277: return localkx;
  }

  public final void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
    if (paramBoolean)
    {
      for (int j = 0; j < this.e.length; j++)
        if ((j != 12) && (this.e[j] != -1))
          this.e[j] = 0;
      if (this.h != null)
        for (int k = 0; k < this.h.length; k++)
          if ((k != 12) && (this.h[k] != -1))
            this.h[k] = 0;
    }
    else
    {
      int i = 0;
      if (i < this.e.length)
      {
        if ((this.e[i] != -1) && (i != 12))
        {
          if (!this.f)
            break label148;
          this.e[i] = 0;
        }
        while (true)
        {
          i++;
          break;
          label148: if ((i == 7) || (i == 6))
            this.e[i] = 0;
          else
            this.e[i] = 2;
        }
      }
      this.h = null;
    }
  }

  public final byte[] a()
  {
    byte[] arrayOfByte2;
    if (this.h != null)
    {
      arrayOfByte2 = this.h;
      return arrayOfByte2;
    }
    this.h = new byte[6];
    for (int i = 0; i < this.h.length; i++)
      this.h[i] = -1;
    byte[] arrayOfByte1 = md.a;
    int j = arrayOfByte1.length;
    int k = 0;
    int n;
    if (k < j)
    {
      int m = arrayOfByte1[k];
      Iterator localIterator = md.b(m).iterator();
      label85: int i1;
      for (n = -1; ; n = 2)
      {
        if (localIterator.hasNext())
        {
          i1 = ((Integer)localIterator.next()).intValue();
          if (this.e[i1] == 0)
            n = 0;
        }
        else
        {
          this.h[m] = n;
          k++;
          break;
        }
        if (this.e[i1] != 2)
          break label155;
      }
      label155: if ((this.e[i1] != 1) || (n == 2))
        break label191;
    }
    label191: for (int i2 = 1; ; i2 = n)
    {
      n = i2;
      break label85;
      arrayOfByte2 = this.h;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kx
 * JD-Core Version:    0.6.2
 */