package org.antivirus.ui.settings;

import android.os.Bundle;
import android.widget.ListView;
import java.util.ArrayList;
import org.antivirus.Strings;
import org.antivirus.ui.BaseListAdapter.BaseListAdapterItem;
import org.antivirus.ui.BaseToolListActivity;

public class LanguageSelector extends BaseToolListActivity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903067);
    a(2130837524, 2130837525, Strings.getString(2131296293), false);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Arabic", "", 2130837703));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Chinese Simplified", "", 2130837704));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Chinese Traditional", "", 2130837705));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Czech", "", 2130837706));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Dutch", "", 2130837707));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("English", "", 2130837708));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("French", "", 2130837709));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("German", "", 2130837710));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Hebrew", "", 2130837711));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Italian", "", 2130837712));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Japanese", "", 2130837713));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Korean", "", 2130837714));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Polish", "", 2130837715));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Portuguese", "", 2130837716));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Russian", "", 2130837717));
    localArrayList.add(new BaseListAdapter.BaseListAdapterItem("Spanish", "", 2130837718));
    setListAdapter(new LanguageSelector.LanguageListAdapter(this, this, localArrayList));
    getListView().setOnItemClickListener(new LanguageSelector.1(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.settings.LanguageSelector
 * JD-Core Version:    0.6.2
 */