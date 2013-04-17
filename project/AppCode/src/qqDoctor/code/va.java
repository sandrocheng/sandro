import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.ui.activity.commontools.LocationQueryActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;

final class va
  implements AdapterView.OnItemClickListener
{
  va(uo paramuo, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    if (localContextMenuModel != null)
    {
      if (localContextMenuModel.eventCode != 21)
        break label49;
      nd.a().a(26253);
      this.b.f();
    }
    while (true)
    {
      this.a.dismiss();
      return;
      label49: if (localContextMenuModel.eventCode == 22)
      {
        nd.a().a(26254);
        Intent localIntent = new Intent();
        localIntent.setClass(uo.n(this.b), LocationQueryActivity.class);
        uo.n(this.b).startActivity(localIntent);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     va
 * JD-Core Version:    0.6.2
 */