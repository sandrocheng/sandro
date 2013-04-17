import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.ui.activity.NumberMarkDialog;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import java.util.ArrayList;

public final class ads
  implements AdapterView.OnItemClickListener
{
  public ads(NumberMarkDialog paramNumberMarkDialog, ArrayList paramArrayList, CallLogEntity paramCallLogEntity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((this.a == null) || (paramInt < 0) || (paramInt >= this.a.size()));
    for (ContextMenuModel localContextMenuModel = null; ; localContextMenuModel = (ContextMenuModel)this.a.get(paramInt))
    {
      if (localContextMenuModel != null)
      {
        nd.a().a(26469);
        NumberMarkDialog.a(this.c).a(this.b);
        NumberMarkDialog.a(this.c).b(this.b.phonenum, localContextMenuModel.eventCode);
        NumberMarkDialog.a(this.c, this.b);
        NumberMarkDialog.b(this.c, this.b);
        ha.a(this.c, 2131428940);
      }
      this.c.finish();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ads
 * JD-Core Version:    0.6.2
 */