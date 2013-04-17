import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class bmk
  implements View.OnClickListener
{
  bmk(bmj parambmj, ArrayList paramArrayList, boolean paramBoolean, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
        localArrayList.add(((kw)localIterator.next()).getPackageName());
    }
    catch (Exception localException)
    {
      Toast.makeText(bmj.a(this.d), 2131427777, 0).show();
    }
    while (true)
    {
      this.c.dismiss();
      return;
      if (this.b)
        this.d.a(localArrayList);
      else
        gx.a(this.d, this.d.c, localArrayList);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmk
 * JD-Core Version:    0.6.2
 */