import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class asp extends BaseListView<ll>
  implements AdapterView.OnItemClickListener
{
  private int a;
  private File b = new File("/");
  private aje c;
  private int d = 0;

  public asp(Context paramContext)
  {
    super(paramContext);
  }

  private void a(File paramFile)
  {
    if (!paramFile.isDirectory());
    while (true)
    {
      return;
      this.b = paramFile;
      String str1 = paramFile.getAbsolutePath().toString();
      FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
      if (localFrameworkTemplateUI != null)
        localFrameworkTemplateUI.updateInfoBarText(str1);
      this.mDataList.clear();
      if (paramFile.getParentFile() == null)
      {
        if ((lm.d == null) || (lm.d.size() == 0))
          fi.b();
        if (lm.d != null)
        {
          Iterator localIterator = lm.d.iterator();
          while (localIterator.hasNext())
          {
            String str2 = (String)localIterator.next();
            if (str2 != null)
            {
              File localFile = new File(str2);
              if (localFile.exists())
                b(localFile);
            }
          }
        }
      }
      else
      {
        File[] arrayOfFile = paramFile.listFiles();
        if (arrayOfFile != null)
        {
          int i = arrayOfFile.length;
          for (int j = 0; j < i; j++)
            b(arrayOfFile[j]);
        }
      }
      Collections.sort(this.mDataList, new fg());
      aje localaje = this.c;
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new ListModel(this.mDataList, null, 1, false));
      localaje.setDataList(localArrayList);
      this.c.notifyDataSetChanged();
      this.c.b().clear();
      this.c.d();
    }
  }

  private void b(File paramFile)
  {
    if (paramFile.isHidden());
    while (true)
    {
      return;
      int i = k.b(paramFile);
      ll localll = new ll();
      localll.a(paramFile.getName());
      localll.b(paramFile.getAbsolutePath().toString());
      localll.a(i);
      if (paramFile.isDirectory())
        this.mDataList.add(localll);
      else if (this.a == 101)
      {
        if ((i == 2) || (i == 100))
          this.mDataList.add(localll);
      }
      else if (this.a == i)
        this.mDataList.add(localll);
    }
  }

  public final BaseAdapter createAdapter()
  {
    this.c = new aje(this.mContext, this, new ArrayList());
    return this.c;
  }

  public final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(0, 2131429941, 0));
    localArrayList.add(new OperatingModel(1, 2131427349, 2));
    ((OperatingModel)localArrayList.get(0)).setEnable(false);
    return localArrayList;
  }

  public final void loadDataList()
  {
  }

  public final void onBackClick()
  {
    String str1 = this.b.getParent();
    int i = 0;
    if (str1 == null);
    while (true)
    {
      if (i == 0)
      {
        this.c.b().clear();
        this.c.d();
        super.onBackClick();
      }
      return;
      String str2 = this.b.getAbsolutePath().toString();
      i = 0;
      if (str2 != null)
        if ((lm.d != null) && (lm.d.contains(str2)))
        {
          a(new File("/"));
          i = 1;
        }
        else
        {
          a(new File(str1));
          getListView().setSelection(this.d);
          i = 1;
        }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    Intent localIntent = getActivity().getIntent();
    if (localIntent == null);
    for (this.a = 101; ; this.a = localIntent.getIntExtra("type", 101))
    {
      a(this.b);
      return;
    }
  }

  public final void onDestroy()
  {
    super.onDestroy();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    File localFile = new File(((ll)this.mDataList.get(paramInt)).b());
    if (localFile.isDirectory())
    {
      getListView().setSelection(0);
      this.d = paramInt;
      a(localFile);
    }
    while (true)
    {
      return;
      CheckBoxView localCheckBoxView = (CheckBoxView)paramView.findViewById(2131230847);
      localCheckBoxView.onClick(localCheckBoxView);
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    switch (paramOperatingModel.getID())
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      ArrayList localArrayList = this.c.c();
      if ((localArrayList == null) || (localArrayList.size() == 0))
      {
        ha.b(this.mContext, 2131429922);
      }
      else
      {
        Intent localIntent = new Intent();
        Bundle localBundle = new Bundle();
        localBundle.putStringArrayList("filePaths", localArrayList);
        localBundle.putInt("type", this.a);
        localIntent.putExtra("fileInfos", localBundle);
        getActivity().setResult(-1, localIntent);
        getActivity().finish();
        continue;
        if ((this.mDataList != null) && (this.mDataList.size() > 0))
          this.c.a();
      }
    }
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final void onResume()
  {
    super.onResume();
    String str = this.b.getAbsolutePath().toString();
    FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
    if (localFrameworkTemplateUI != null)
      localFrameworkTemplateUI.updateInfoBarText(str);
  }

  public final void refreshListData()
  {
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    String str = "";
    if (this.a == 0)
      str = this.mContext.getString(2131429846);
    while (true)
    {
      paramFrameworkTemplateUI.setTitleTextData(str);
      paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
      paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
      paramFrameworkTemplateUI.setInfoBarStyle((byte)50);
      return;
      if (this.a == 1)
        str = this.mContext.getString(2131429847);
      else if (this.a == 101)
        str = this.mContext.getString(2131429850);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     asp
 * JD-Core Version:    0.6.2
 */