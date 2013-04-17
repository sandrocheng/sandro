import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.List;

final class bci
  implements View.OnClickListener
{
  bci(bce parambce)
  {
  }

  public final void onClick(View paramView)
  {
    boolean bool = ho.a().dj();
    aii localaii = (aii)this.a.getAdapter();
    int i = localaii.a();
    mb.a locala = (mb.a)bce.g(this.a).get(i);
    mb localmb = bce.h(this.a).a(locala.i.a);
    String str2;
    if (bool)
    {
      Dialog localDialog = new Dialog(bce.i(this.a));
      localDialog.setTitle(bce.j(this.a).getString(2131428561));
      String str1 = bce.k(this.a).getString(2131430202);
      Object[] arrayOfObject = new Object[1];
      if (localmb == null)
      {
        str2 = "";
        arrayOfObject[0] = str2;
        localDialog.setMessage(String.format(str1, arrayOfObject));
        localDialog.setPositiveButton(2131428152, new bcj(this, localDialog), 1);
        localDialog.setNegativeButton(2131427379, new bck(this, localDialog), 2);
        localDialog.show();
      }
    }
    while (true)
    {
      return;
      str2 = localmb.b;
      break;
      if (localmb != null)
      {
        nd.a().a(26293);
        localmb.c = 2;
        bce.h(this.a).b(localmb);
        bce.h(this.a);
        ja.c(localmb);
        bce.m(this.a);
      }
      localaii.b(0);
      bce.o(this.a).sendEmptyMessage(-1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bci
 * JD-Core Version:    0.6.2
 */