package com.keniu.security.commumgr;

import android.os.Bundle;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;
import com.keniu.security.i.o;
import com.keniu.security.util.BasePreferenceActivity;

public class FileWatcherSetting extends BasePreferenceActivity
  implements m
{
  public final boolean a(Preference paramPreference, Object paramObject)
  {
    return o.a().c();
  }

  public void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    setRequestedOrientation(1);
    super.a(paramBundle, 2131034114);
    a("isFileDownWatcherOn").a(this);
    a("isFileInstWatcherOn").a(this);
    a("isFileOpenWatcherOn").a(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.FileWatcherSetting
 * JD-Core Version:    0.6.2
 */