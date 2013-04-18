package com.ijinshan.kpref;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.util.Log;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;

final class s extends d
{
  private static final String b = "PreferenceInflater";
  private static final String c = "intent";
  private t d;

  public s(Context paramContext, t paramt)
  {
    super(paramContext);
    a(paramt);
  }

  private s(d paramd, t paramt, Context paramContext)
  {
    super(paramd, paramContext);
    a(paramt);
  }

  private PreferenceGroup a(PreferenceGroup paramPreferenceGroup1, PreferenceGroup paramPreferenceGroup2)
  {
    if (paramPreferenceGroup1 == null)
      paramPreferenceGroup2.a(this.d);
    for (PreferenceGroup localPreferenceGroup = paramPreferenceGroup2; ; localPreferenceGroup = paramPreferenceGroup1)
      return localPreferenceGroup;
  }

  private void a(t paramt)
  {
    this.d = paramt;
    a("android.preference.");
  }

  private boolean a(XmlPullParser paramXmlPullParser, Preference paramPreference, AttributeSet paramAttributeSet)
  {
    if (paramXmlPullParser.getName().equals("intent"));
    while (true)
    {
      try
      {
        Intent localIntent2 = Intent.parseIntent(a().getResources(), paramXmlPullParser, paramAttributeSet);
        localIntent1 = localIntent2;
        if (localIntent1 != null)
          paramPreference.a(localIntent1);
        bool = true;
        return bool;
      }
      catch (IOException localIOException)
      {
        Log.w("PreferenceInflater", "Could not parse Intent.");
        Log.w("PreferenceInflater", localIOException);
        Intent localIntent1 = null;
        continue;
      }
      boolean bool = false;
    }
  }

  public final d a(Context paramContext)
  {
    return new s(this, this.d, paramContext);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.s
 * JD-Core Version:    0.6.2
 */