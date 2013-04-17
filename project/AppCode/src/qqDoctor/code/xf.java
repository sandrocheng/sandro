import android.content.Context;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionManager;
import com.tencent.tmsecure.module.permission.PermissionTableItem;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.List;

public final class xf
{
  private static int[] a = { 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1 };
  private static String b;
  private static String c;
  private static String d;
  private static String e;
  private static String f;
  private static String g;
  private static String h;
  private static String i;
  private static String j;
  private static String k;
  private static String l;
  private static String m;
  private static String n;
  private static String o = QQPimApplication.a().getString(2131429073);
  private static String p = QQPimApplication.a().getString(2131429074);
  private static String q = QQPimApplication.a().getString(2131429075);

  static
  {
    new byte[] { 4, 2, 3, 10, 7, 0, 1, 5, 11, 6, 8, 9, 12 };
    b = QQPimApplication.a().getString(2131429047);
    c = QQPimApplication.a().getString(2131429048);
    d = QQPimApplication.a().getString(2131429049);
    e = QQPimApplication.a().getString(2131429050);
    f = QQPimApplication.a().getString(2131429051);
    g = QQPimApplication.a().getString(2131429052);
    h = QQPimApplication.a().getString(2131429054);
    i = QQPimApplication.a().getString(2131429053);
    j = QQPimApplication.a().getString(2131429055);
    k = QQPimApplication.a().getString(2131429056);
    l = QQPimApplication.a().getString(2131429057);
    m = QQPimApplication.a().getString(2131429058);
    n = QQPimApplication.a().getString(2131429059);
    QQPimApplication.a().getString(2131429060);
    QQPimApplication.a().getString(2131429061);
    QQPimApplication.a().getString(2131429062);
    QQPimApplication.a().getString(2131429063);
    QQPimApplication.a().getString(2131429064);
    QQPimApplication.a().getString(2131429065);
    QQPimApplication.a().getString(2131429067);
    QQPimApplication.a().getString(2131429066);
    QQPimApplication.a().getString(2131429068);
    QQPimApplication.a().getString(2131429069);
    QQPimApplication.a().getString(2131429070);
    QQPimApplication.a().getString(2131429071);
    QQPimApplication.a().getString(2131429072);
  }

  public static PermissionTableItem a(int paramInt, String paramString)
  {
    PermissionTableItem localPermissionTableItem = new PermissionTableItem(paramInt, null, paramString);
    int i1 = 0;
    int i2 = 0;
    while (i2 < 13)
    {
      int i3 = i1;
      int i4 = 0;
      if (i4 < a[i2])
      {
        int i5;
        if (i3 == 14)
          if ((localPermissionTableItem.mPackageName != null) && (!a(localPermissionTableItem.mPackageName)))
          {
            i5 = 1;
            label67: if (i5 == 0)
              break label95;
            localPermissionTableItem.mRids[i3] = 2;
          }
        while (true)
        {
          i4++;
          i3++;
          break;
          i5 = 0;
          break label67;
          label95: localPermissionTableItem.mRids[i3] = 65535;
        }
      }
      i2++;
      i1 = i3;
    }
    return localPermissionTableItem;
  }

  public static PermissionTableItem a(int paramInt, byte[] paramArrayOfByte, String paramString)
  {
    PermissionTableItem localPermissionTableItem = new PermissionTableItem(paramInt, null, paramString);
    int i1 = 0;
    int i2 = 0;
    while (i2 < 13)
    {
      int i3 = i1;
      int i4 = 0;
      if (i4 < a[i2])
      {
        if ((i3 < localPermissionTableItem.mRids.length) && (i2 < paramArrayOfByte.length))
        {
          if (paramArrayOfByte[i2] != -1)
            break label126;
          localPermissionTableItem.mRids[i3] = 65535;
          label76: if (i3 == 14)
            if ((localPermissionTableItem.mPackageName == null) || (a(localPermissionTableItem.mPackageName)))
              break label140;
        }
        label140: for (int i5 = 1; ; i5 = 0)
        {
          if (i5 == 0)
            localPermissionTableItem.mRids[i3] = 65535;
          i4++;
          i3++;
          break;
          label126: localPermissionTableItem.mRids[i3] = paramArrayOfByte[i2];
          break label76;
        }
      }
      i2++;
      i1 = i3;
    }
    return localPermissionTableItem;
  }

  public static String a(byte paramByte)
  {
    String str = null;
    switch (paramByte)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return str;
      str = o;
      continue;
      str = p;
      continue;
      str = q;
    }
  }

  public static String a(int paramInt)
  {
    String str = null;
    switch (paramInt)
    {
    default:
    case 0:
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
    }
    while (true)
    {
      return str;
      str = b;
      continue;
      str = c;
      continue;
      str = d;
      continue;
      str = e;
      continue;
      str = f;
      continue;
      str = g;
      continue;
      str = h;
      continue;
      str = i;
      continue;
      str = j;
      continue;
      str = k;
      continue;
      str = l;
      continue;
      str = m;
      continue;
      str = n;
    }
  }

  public static List<md> a()
  {
    ArrayList localArrayList = new ArrayList();
    byte[] arrayOfByte = md.a;
    int i1 = arrayOfByte.length;
    for (int i2 = 0; i2 < i1; i2++)
      localArrayList.add(new md(arrayOfByte[i2]));
    return localArrayList;
  }

  public static boolean a(String paramString)
  {
    boolean bool1;
    AppEntity localAppEntity;
    if ((paramString.startsWith("com.android.")) || (paramString.startsWith("android.")) || (paramString.compareToIgnoreCase("android") == 0))
    {
      bool1 = true;
      if (!bool1)
        break label63;
      localAppEntity = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).getAppInfo(paramString, 1);
      if (localAppEntity == null)
        break label63;
    }
    label63: for (boolean bool2 = localAppEntity.isSystemApp(); ; bool2 = bool1)
    {
      return bool2;
      bool1 = false;
      break;
    }
  }

  public static byte[] a(List<String> paramList)
  {
    int i1 = 0;
    int[] arrayOfInt1 = ((PermissionManager)ManagerCreator.getManager(PermissionManager.class)).getRidByPermission(paramList);
    if (arrayOfInt1 == null)
    {
      arrayOfByte = null;
      return arrayOfByte;
    }
    byte[] arrayOfByte = new byte[13];
    int i2 = 0;
    label31: if (i2 < 13)
      if (i1 < arrayOfInt1.length)
      {
        if (arrayOfInt1[i1] != 65535)
          break label83;
        arrayOfByte[i2] = -1;
      }
    while (true)
    {
      int[] arrayOfInt2 = a;
      int i3 = i2 + 1;
      i1 += arrayOfInt2[i2];
      i2 = i3;
      break label31;
      break;
      label83: arrayOfByte[i2] = ((byte)arrayOfInt1[i1]);
    }
  }

  public static int b(int paramInt)
  {
    int i1 = 0;
    int i2 = 0;
    int i4;
    int i5;
    if (i1 < 13)
    {
      i4 = i2;
      i5 = 0;
      label16: if (i5 < a[i1])
        if (i4 != paramInt);
    }
    for (int i3 = i1; ; i3 = -1)
    {
      return i3;
      i4++;
      i5++;
      break label16;
      i1++;
      i2 = i4;
      break;
    }
  }

  public static PermissionTableItem b(int paramInt, byte[] paramArrayOfByte, String paramString)
  {
    PermissionTableItem localPermissionTableItem = new PermissionTableItem(paramInt, null, paramString);
    int i1 = 0;
    int i2 = 0;
    while (i2 < 13)
    {
      int i3 = i1;
      int i4 = 0;
      if (i4 < a[i2])
      {
        if ((i3 < localPermissionTableItem.mRids.length) && (i2 < paramArrayOfByte.length))
        {
          if (paramArrayOfByte[i2] != -1)
            break label85;
          localPermissionTableItem.mRids[i3] = 65535;
        }
        while (true)
        {
          i4++;
          i3++;
          break;
          label85: localPermissionTableItem.mRids[i3] = paramArrayOfByte[i2];
        }
      }
      if (i3 == 14)
        localPermissionTableItem.mRids[i3] = 65535;
      i2++;
      i1 = i3;
    }
    return localPermissionTableItem;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xf
 * JD-Core Version:    0.6.2
 */