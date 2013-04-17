import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import java.util.ArrayList;
import java.util.List;

public final class agk
  implements Runnable
{
  public agk(WeekRecDialog paramWeekRecDialog)
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
      label33: if (j >= WeekRecDialog.e(this.a).size())
        break label157;
      if (((kw)WeekRecDialog.d(this.a).get(i)).getPackageName().hashCode() != ((mv)WeekRecDialog.e(this.a).get(j)).b);
    }
    while (true)
    {
      if (j != -1)
      {
        ImageView localImageView = (ImageView)localLinearLayout.findViewById(2131231133);
        localImageView.setVisibility(0);
        localImageView.setImageDrawable(((mv)WeekRecDialog.e(this.a).get(j)).a);
        localLinearLayout.findViewById(2131231134).setVisibility(8);
      }
      i++;
      break;
      j++;
      break label33;
      return;
      label157: j = -1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agk
 * JD-Core Version:    0.6.2
 */