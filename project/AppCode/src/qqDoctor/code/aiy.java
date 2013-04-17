import android.content.Context;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePreferenceAdapter;
import java.util.List;

public final class aiy extends BasePreferenceAdapter
{
  public aiy(Context paramContext, List<PreferenceAdapterModel> paramList)
  {
    super(paramContext, paramList, null);
  }

  public final int getItemViewType(int paramInt)
  {
    PreferenceAdapterModel localPreferenceAdapterModel = (PreferenceAdapterModel)this.dataList.get(paramInt);
    int i;
    if (localPreferenceAdapterModel.getPreferenceViewType() == 5)
      i = 0;
    while (true)
    {
      return i;
      if (localPreferenceAdapterModel.getPreferenceViewType() == 4)
        i = 1;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 2)
        i = 2;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 3)
        i = 3;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 1)
        i = 4;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 12)
        i = 5;
      else
        i = 0;
    }
  }

  public final int getViewTypeCount()
  {
    return 6;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aiy
 * JD-Core Version:    0.6.2
 */