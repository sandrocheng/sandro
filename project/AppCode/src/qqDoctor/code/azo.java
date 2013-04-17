import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import com.tencent.tmsecure.module.network.NetworkManager;
import java.util.List;

final class azo
  implements View.OnClickListener
{
  azo(azj paramazj, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    long l1;
    if (azj.i(this.b) != null)
    {
      l1 = 0L;
      int i = 0;
      if (i < azj.i(this.b).size())
      {
        if (((NetworkInfoEntity)azj.i(this.b).get(i)).mUsedForDay >= 0L);
        for (long l2 = ((NetworkInfoEntity)azj.i(this.b).get(i)).mUsedForDay; ; l2 = 0L)
        {
          long l3 = l1 + l2;
          i++;
          l1 = l3;
          break;
        }
      }
    }
    else
    {
      l1 = 0L;
    }
    azj.j(this.b).setUsedForMonth(l1);
    azj.k(this.b).notifyConfigChange();
    ha.a(azj.l(this.b), azj.m(this.b).getString(2131427868));
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     azo
 * JD-Core Version:    0.6.2
 */