import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.netsetting.Rule;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.Iterator;
import java.util.List;

public final class bwf extends BaseManager
{
  public int a = -1;
  public String b;

  public final void a(List<Rule> paramList)
  {
    String str = this.b;
    StringBuilder localStringBuilder1 = new StringBuilder(str + " set-hosts ");
    StringBuilder localStringBuilder2 = new StringBuilder(str + " set-uids ");
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        String[] arrayOfString1 = new String[1];
        arrayOfString1[0] = localStringBuilder1.toString();
        if (ScriptHelper.runScript(arrayOfString1) != null)
        {
          String[] arrayOfString2 = new String[1];
          arrayOfString2[0] = localStringBuilder2.toString();
          ScriptHelper.runScript(arrayOfString2);
        }
        return;
      }
      Rule localRule = (Rule)localIterator.next();
      switch (localRule.type)
      {
      default:
        break;
      case 1:
        if (localRule.uidMobileVerdict != null)
          localStringBuilder2.append(" " + localRule.uid + " mobile " + localRule.uidMobileVerdict);
        if (localRule.uidWifiVerdict != null)
          localStringBuilder2.append(" " + localRule.uid + " wifi " + localRule.uidWifiVerdict);
        break;
      case 2:
        if (localRule.hostVerdict != null)
          localStringBuilder1.append(" " + localRule.host + " " + localRule.hostVerdict);
        break;
      }
    }
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.b = btd.a(paramContext, "firewall_v2.dat", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwf
 * JD-Core Version:    0.6.2
 */