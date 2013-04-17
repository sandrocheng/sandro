import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import java.util.Iterator;
import java.util.List;

final class amv
  implements View.OnClickListener
{
  amv(ams paramams, int paramInt, List paramList, Handler paramHandler, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if ((this.a == 1) || (this.a == 0))
    {
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
      {
        int i = ((Integer)localIterator.next()).intValue();
        if (ams.h(this.e).size() <= i)
          break;
        ams.i(this.e).a(this.a, (TelephonyEntity)ams.h(this.e).get(i));
      }
      this.c.sendEmptyMessage(-1);
    }
    this.d.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     amv
 * JD-Core Version:    0.6.2
 */