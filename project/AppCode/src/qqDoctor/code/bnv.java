import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.List;

final class bnv
  implements View.OnClickListener
{
  bnv(bnt parambnt, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    List localList1 = this.b.a().d();
    List localList2 = this.b.a().f();
    boolean[] arrayOfBoolean = fy.a(this.b.getActivity(), localList2, this.b.a().e());
    if (arrayOfBoolean.length > 0)
    {
      int i = arrayOfBoolean.length;
      int j = 0;
      int k = 0;
      while (j < i)
      {
        if (arrayOfBoolean[j] != 0)
        {
          fy.a((String)localList2.get(k));
          bnt.a(this.b).remove(localList1.get(k));
          this.b.a().a(Integer.valueOf(this.b.a().b((kw)localList1.get(k))));
        }
        k++;
        j++;
      }
      bnt.b(this.b).sendEmptyMessage(-2);
      ha.b(bnt.c(this.b), 2131427776);
    }
    while (true)
    {
      this.a.dismiss();
      return;
      ha.b(bnt.d(this.b), 2131427777);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bnv
 * JD-Core Version:    0.6.2
 */