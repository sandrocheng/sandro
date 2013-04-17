import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.List;

final class bcj
  implements View.OnClickListener
{
  bcj(bci parambci, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    ho.a().dk();
    this.a.dismiss();
    aii localaii = (aii)this.b.a.getAdapter();
    int i = localaii.a();
    mb.a locala = (mb.a)bce.l(this.b.a).get(i);
    mb localmb = bce.h(this.b.a).a(locala.i.a);
    if (localmb != null)
    {
      nd.a().a(26293);
      localmb.c = 2;
      bce.h(this.b.a).b(localmb);
      bce.h(this.b.a);
      ja.c(localmb);
      bce.m(this.b.a);
    }
    localaii.b(0);
    bce.n(this.b.a).sendEmptyMessage(-1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bcj
 * JD-Core Version:    0.6.2
 */