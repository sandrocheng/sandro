import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeFileGridActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import java.util.List;

final class asz
  implements AdapterView.OnItemClickListener
{
  asz(asx paramasx)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent(asx.d(this.a), FileSafeFileGridActivity.class);
    localIntent.putExtra("type", asx.e(this.a));
    localIntent.putExtra("workdir", ((lq)asx.a(this.a).get(paramInt)).b());
    this.a.getActivity().startActivityForResult(localIntent, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     asz
 * JD-Core Version:    0.6.2
 */