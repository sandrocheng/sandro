import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.ui.activity.BatchOperateActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;

final class avx
  implements AdapterView.OnItemClickListener
{
  avx(avu paramavu, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    Intent localIntent;
    if (localContextMenuModel != null)
    {
      if (localContextMenuModel.eventCode != 0)
        break label70;
      localIntent = new Intent(avu.F(this.b), BatchOperateActivity.class);
      localIntent.putExtra("OPERATE_KEY", 4);
    }
    while (true)
    {
      avu.H(this.b).startActivity(localIntent);
      this.a.dismiss();
      return;
      label70: localIntent = new Intent(avu.G(this.b), BatchOperateActivity.class);
      localIntent.putExtra("OPERATE_KEY", 3);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     avx
 * JD-Core Version:    0.6.2
 */