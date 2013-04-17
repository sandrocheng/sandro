import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.UsefulNumberEntity;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.ArrayList;
import java.util.HashMap;

final class are
  implements AdapterView.OnItemClickListener
{
  are(arb paramarb, ContextMenuDialog paramContextMenuDialog, int paramInt1, int paramInt2)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.getContextItemPosition();
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    UsefulNumberEntity localUsefulNumberEntity;
    if (localContextMenuModel != null)
    {
      localUsefulNumberEntity = (UsefulNumberEntity)((ArrayList)arb.a(this.d).get((String)arb.a(this.d).keySet().toArray()[this.b])).get(this.c);
      if (localUsefulNumberEntity != null)
        switch (localContextMenuModel.eventCode)
        {
        default:
        case 2:
        case 3:
        case 4:
        }
    }
    while (true)
    {
      this.a.dismiss();
      return;
      ft.a(localUsefulNumberEntity.getNumber());
      continue;
      gu.a(arb.c(this.d), localUsefulNumberEntity.getNumber());
      continue;
      if (((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class)).a(localUsefulNumberEntity.getNumber(), localUsefulNumberEntity.getName()))
        ha.a(arb.d(this.d), arb.e(this.d).getResources().getString(2131428409));
      else
        ha.a(arb.f(this.d), arb.g(this.d).getResources().getString(2131428410));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     are
 * JD-Core Version:    0.6.2
 */