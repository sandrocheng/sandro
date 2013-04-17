import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import java.util.Iterator;
import java.util.List;

final class amq
  implements View.OnClickListener
{
  amq(amp paramamp, int paramInt, List paramList, Handler paramHandler, Dialog paramDialog)
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
        if (amp.a(this.e).size() <= i)
          break;
        amp.b(this.e).a(this.a, (TelephonyEntity)amp.a(this.e).get(i));
      }
      this.c.sendEmptyMessage(-1);
    }
    this.d.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     amq
 * JD-Core Version:    0.6.2
 */