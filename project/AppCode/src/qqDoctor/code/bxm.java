import android.content.Context;
import com.tencent.tccdb.TelNumberLocator;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.util.ArrayList;

public final class bxm extends BaseManager
{
  public TelNumberLocator a;
  public ArrayList<String> b;
  private Context c;

  public final String a(String paramString)
  {
    Object localObject = "";
    StringBuffer localStringBuffer1;
    StringBuffer localStringBuffer2;
    StringBuffer localStringBuffer3;
    if (paramString != null)
    {
      localStringBuffer1 = new StringBuffer();
      localStringBuffer2 = new StringBuffer();
      localStringBuffer3 = new StringBuffer();
    }
    try
    {
      this.a.getLocation(localStringBuffer1, localStringBuffer2, localStringBuffer3, paramString, false);
      String str = localStringBuffer2 + localStringBuffer3;
      localObject = str;
      return localObject;
    }
    catch (Exception localException)
    {
      while (true)
        localObject = "";
    }
  }

  public final ArrayList<String> a()
  {
    try
    {
      localArrayList1 = this.a.getProvinceNameList();
      localArrayList1.remove(0);
      ArrayList localArrayList2 = this.a.getCityNameList("");
      if (localArrayList2 != null)
      {
        localArrayList2.remove(0);
        localArrayList1.addAll(0, localArrayList2);
      }
      return localArrayList1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.getMessage();
        ArrayList localArrayList1 = new ArrayList();
      }
    }
  }

  public final ArrayList<String> b(String paramString)
  {
    Object localObject;
    if ("".compareTo(paramString) == 0)
      localObject = new ArrayList();
    while (true)
    {
      return localObject;
      try
      {
        ArrayList localArrayList1 = this.a.getCityNameList("");
        localArrayList1.remove(0);
        if (!localArrayList1.contains(paramString))
          break label74;
        localObject = new ArrayList();
      }
      catch (Exception localException)
      {
        localException.getMessage();
        localObject = new ArrayList();
      }
      continue;
      label74: ArrayList localArrayList2 = this.a.getCityNameList(paramString);
      localObject = localArrayList2;
    }
  }

  protected final void finalize()
    throws Throwable
  {
    ((UpdateManager)ManagerCreator.getManager(UpdateManager.class)).removeObserver(2);
    super.finalize();
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.c = paramContext;
    btd.a(this.c, "nldb.sdb", null);
    this.a = TelNumberLocator.getDefault(this.c);
    this.b = new ArrayList();
    try
    {
      ArrayList localArrayList = new ArrayList();
      this.a.getYellowPages(localArrayList, this.b);
      label59: return;
    }
    catch (Exception localException)
    {
      break label59;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxm
 * JD-Core Version:    0.6.2
 */