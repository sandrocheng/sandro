package com.antivirus.ui.settings.a;

import android.content.Context;
import android.view.View;
import android.widget.ListView;
import java.util.ArrayList;

public class b
{
  public static View a(View paramView, Context paramContext, boolean paramBoolean)
  {
    ListView localListView = (ListView)paramView.findViewById(2131230805);
    a locala = new a(paramContext, a());
    localListView.setAdapter(locala);
    localListView.setOnItemClickListener(new c(locala, paramContext));
    return paramView;
  }

  public static ArrayList a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.avg.ui.general.b.c("Arabic", "", 2130837748));
    localArrayList.add(new com.avg.ui.general.b.c("Chinese Simplified", "", 2130837749));
    localArrayList.add(new com.avg.ui.general.b.c("Chinese Traditional", "", 2130837750));
    localArrayList.add(new com.avg.ui.general.b.c("Czech", "", 2130837751));
    localArrayList.add(new com.avg.ui.general.b.c("Dutch", "", 2130837752));
    localArrayList.add(new com.avg.ui.general.b.c("English", "", 2130837753));
    localArrayList.add(new com.avg.ui.general.b.c("French", "", 2130837754));
    localArrayList.add(new com.avg.ui.general.b.c("German", "", 2130837755));
    localArrayList.add(new com.avg.ui.general.b.c("Hebrew", "", 2130837756));
    localArrayList.add(new com.avg.ui.general.b.c("Hindi", "", 2130837757));
    localArrayList.add(new com.avg.ui.general.b.c("Italian", "", 2130837758));
    localArrayList.add(new com.avg.ui.general.b.c("Japanese", "", 2130837759));
    localArrayList.add(new com.avg.ui.general.b.c("Korean", "", 2130837760));
    localArrayList.add(new com.avg.ui.general.b.c("Polish", "", 2130837761));
    localArrayList.add(new com.avg.ui.general.b.c("Portuguese", "", 2130837762));
    localArrayList.add(new com.avg.ui.general.b.c("Russian", "", 2130837763));
    localArrayList.add(new com.avg.ui.general.b.c("Spanish", "", 2130837764));
    return localArrayList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.settings.a.b
 * JD-Core Version:    0.6.2
 */