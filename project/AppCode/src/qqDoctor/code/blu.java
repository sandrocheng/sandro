import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView.IBatchNext;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.List;

final class blu
  implements BaseView.IBatchNext
{
  blu(blt paramblt, List paramList, BaseUIActivity paramBaseUIActivity)
  {
  }

  public final void netxToDo()
  {
    if (this.a.size() > 0);
    while (true)
    {
      try
      {
        this.c.c.installApp((String)this.a.remove(0), this.b, 1);
        return;
      }
      catch (Exception localException1)
      {
        try
        {
          ha.b(TMSApplication.getApplicaionContext(), 2131427509);
        }
        catch (Exception localException2)
        {
          ha.b(blt.a(this.c), 2131429518);
        }
        continue;
      }
      this.c.setBatchNext(null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     blu
 * JD-Core Version:    0.6.2
 */