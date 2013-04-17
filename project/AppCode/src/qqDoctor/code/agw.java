import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog.a;
import java.util.ArrayList;
import java.util.List;

public final class agw
  implements Runnable
{
  public agw(WeekRecDialog paramWeekRecDialog)
  {
  }

  public final void run()
  {
    int i = 0;
    LinearLayout localLinearLayout;
    int j;
    if (i < WeekRecDialog.c(this.a).size())
    {
      localLinearLayout = (LinearLayout)WeekRecDialog.c(this.a).get(i);
      j = 0;
      label33: if (j >= WeekRecDialog.a(this.a).size())
        break label162;
      if ((WeekRecDialog.d(this.a) == null) || (WeekRecDialog.d(this.a).get(i) == null) || (((kw)WeekRecDialog.d(this.a).get(i)).getPackageName().hashCode() != ((WeekRecDialog.a)WeekRecDialog.a(this.a).get(j)).b));
    }
    while (true)
    {
      if (j != -1)
        ((ImageView)localLinearLayout.findViewById(2131231135)).setImageDrawable(((WeekRecDialog.a)WeekRecDialog.a(this.a).get(j)).a);
      i++;
      break;
      j++;
      break label33;
      return;
      label162: j = -1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agw
 * JD-Core Version:    0.6.2
 */