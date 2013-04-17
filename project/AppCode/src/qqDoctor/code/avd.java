import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;

final class avd
  implements AdapterView.OnItemClickListener
{
  avd(auu paramauu, ContextMenuDialog paramContextMenuDialog, ky paramky)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    if (localContextMenuModel != null)
    {
      auu.q(this.c).a(this.b);
      auu.q(this.c).b(this.b.phonenum, localContextMenuModel.eventCode);
      auu.a(this.c, this.b);
      ha.a(auu.r(this.c), 2131428940);
      auu.s(this.c).sendEmptyMessage(-1);
    }
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     avd
 * JD-Core Version:    0.6.2
 */