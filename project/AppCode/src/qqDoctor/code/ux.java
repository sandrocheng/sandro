import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter;
import com.tencent.qqpimsecure.uilib.view.desktop.MainDesktopPanel;
import com.tencent.tmsecure.module.plugin.PluginEntity;
import com.tencent.tmsecure.module.plugin.PluginManager;
import java.util.Iterator;
import java.util.List;

final class ux extends Thread
{
  ux(uo paramuo)
  {
  }

  public final void run()
  {
    try
    {
      List localList3 = uo.j(this.a).getAllPlugins();
      localList1 = localList3;
      if ((localList1 == null) || (localList1.size() <= 0));
      while (true)
      {
        return;
        uo.k(this.a).getTopAdapter().setPluginEntityList(localList1);
        uo.k(this.a).getBottomAdapter().setPluginEntityList(localList1);
        List localList2 = uo.l(this.a).b();
        int i = uo.l(this.a).c();
        Iterator localIterator = localList1.iterator();
        for (j = 0; localIterator.hasNext(); j = m)
        {
          int k = ((PluginEntity)localIterator.next()).getKey();
          if (uo.l(this.a).a(k))
            break label293;
          int n = i + j;
          localList2.add(Integer.valueOf(n));
          kk localkk = uo.l(this.a);
          String str1 = localkk.a.getString("plugin_mapping", "");
          String str2 = str1 + n + "&" + k + ";";
          localkk.b.putString("plugin_mapping", str2).commit();
          m = j + 1;
        }
        uo.l(this.a).b(localList2);
        uo.k(this.a).getBottomAdapter().refreshDataList();
        uo.k(this.a).getHandler().sendEmptyMessage(0);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        int j;
        List localList1 = null;
        continue;
        label293: int m = j;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ux
 * JD-Core Version:    0.6.2
 */