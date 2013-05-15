package com.avast.android.mobilesecurity.app.firewall;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ToggleButton;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.EditTextRow;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.x;
import com.avast.android.generic.util.y;
import com.avast.android.mobilesecurity.t;
import com.avast.android.mobilesecurity.ui.widget.ConnectionTypeButtons;

public class CustomRuleDetailFragment extends TrackedFragment
  implements y
{
  private x a;
  private Cursor b;
  private Uri c;
  private EditText d;
  private ToggleButton e;
  private ToggleButton f;
  private ConnectionTypeButtons g;
  private ToggleButton h;
  private ToggleButton i;
  private EditTextRow j;
  private EditTextRow k;
  private EditTextRow l;
  private CheckBoxRow m;
  private CheckBoxRow n;
  private View o;
  private View p;
  private t q;
  private com.avast.android.mobilesecurity.app.firewall.core.a r = new a(this);

  private void a(boolean paramBoolean)
  {
    boolean bool1 = true;
    this.d.setEnabled(paramBoolean);
    boolean bool2;
    label90: boolean bool3;
    label119: EditTextRow localEditTextRow3;
    if (this.q.Z())
    {
      this.n.setEnabled(paramBoolean);
      this.e.setEnabled(paramBoolean);
      this.f.setEnabled(paramBoolean);
      this.g.setEnabled(paramBoolean);
      this.h.setEnabled(paramBoolean);
      this.i.setEnabled(paramBoolean);
      EditTextRow localEditTextRow1 = this.j;
      if ((!paramBoolean) || (!this.i.isChecked()))
        break label190;
      bool2 = bool1;
      localEditTextRow1.setEnabled(bool2);
      EditTextRow localEditTextRow2 = this.k;
      if ((!paramBoolean) || (!this.h.isChecked()))
        break label196;
      bool3 = bool1;
      localEditTextRow2.setEnabled(bool3);
      localEditTextRow3 = this.l;
      if ((!paramBoolean) || (!this.h.isChecked()) || (this.n.c()))
        break label202;
    }
    while (true)
    {
      localEditTextRow3.setEnabled(bool1);
      this.o.setEnabled(paramBoolean);
      this.p.setEnabled(paramBoolean);
      return;
      this.n.setEnabled(false);
      break;
      label190: bool2 = false;
      break label90;
      label196: bool3 = false;
      break label119;
      label202: bool1 = false;
    }
  }

  private boolean a(String paramString)
  {
    int i1 = 1;
    try
    {
      int i2 = Integer.parseInt(paramString);
      if ((i2 < i1) || (i2 > 65535))
        i1 = 0;
      return i1;
    }
    catch (Exception localException)
    {
      while (true)
        i1 = 0;
    }
  }

  private boolean b(String paramString)
  {
    boolean bool1;
    if (this.n.c())
    {
      boolean bool2 = paramString.matches("([0-9a-f]{1,4}:){7}([0-9a-f]){1,4}");
      bool1 = false;
      if (bool2);
    }
    while (true)
    {
      return bool1;
      bool1 = true;
      continue;
      String[] arrayOfString = paramString.split("\\.");
      int i1 = arrayOfString.length;
      bool1 = false;
      if (i1 >= 4)
      {
        int i2 = 0;
        label56: if (i2 < arrayOfString.length);
        try
        {
          int i3 = Integer.valueOf(arrayOfString[i2]).intValue();
          bool1 = false;
          if (i3 <= 255)
          {
            i2++;
            break label56;
            bool1 = true;
          }
        }
        catch (Exception localException)
        {
          bool1 = false;
        }
      }
    }
  }

  private void c()
  {
    boolean bool1 = true;
    this.d.setText(this.b.getString(this.b.getColumnIndex("name")));
    int i1 = this.b.getInt(this.b.getColumnIndex("ipV6type"));
    CheckBoxRow localCheckBoxRow1 = this.n;
    boolean bool2;
    boolean bool3;
    label104: boolean bool4;
    label147: boolean bool5;
    label168: boolean bool6;
    label233: boolean bool7;
    if (i1 > 0)
    {
      bool2 = bool1;
      localCheckBoxRow1.b(bool2);
      int i2 = this.b.getInt(this.b.getColumnIndex("enabled"));
      CheckBoxRow localCheckBoxRow2 = this.m;
      if (i2 <= 0)
        break label633;
      bool3 = bool1;
      localCheckBoxRow2.b(bool3);
      int i3 = this.b.getInt(this.b.getColumnIndex("allow"));
      ToggleButton localToggleButton1 = this.e;
      if (i3 <= 0)
        break label639;
      bool4 = bool1;
      localToggleButton1.setChecked(bool4);
      ToggleButton localToggleButton2 = this.f;
      if (i3 != 0)
        break label645;
      bool5 = bool1;
      localToggleButton2.setChecked(bool5);
      int i4 = this.b.getInt(this.b.getColumnIndex("ipEnabled"));
      int i5 = this.b.getInt(this.b.getColumnIndex("portEnabled"));
      ToggleButton localToggleButton3 = this.h;
      if (i4 <= 0)
        break label651;
      bool6 = bool1;
      localToggleButton3.setChecked(bool6);
      ToggleButton localToggleButton4 = this.i;
      if (i5 <= 0)
        break label657;
      bool7 = bool1;
      label254: localToggleButton4.setChecked(bool7);
      if (i4 <= 0)
        break label698;
      String str1 = this.b.getString(this.b.getColumnIndex("ip"));
      this.k.a(str1);
      if (i1 <= 0)
        break label663;
      this.l.a("");
      label310: if (i5 <= 0)
        break label719;
      int i6 = this.b.getInt(this.b.getColumnIndex("port"));
      this.j.a(String.valueOf(i6));
      label349: com.avast.android.generic.d.a locala = new com.avast.android.generic.d.a(this.a, this.b, this.c);
      this.g.a(locala);
      this.k.a(locala);
      this.l.a(locala);
      this.j.a(locala);
      this.n.a(new b(this, locala));
      this.d.addTextChangedListener(new c(this, locala));
      this.m.a(new d(this, locala));
      this.e.setOnCheckedChangeListener(new e(this, locala));
      this.f.setOnCheckedChangeListener(new f(this, locala));
      this.h.setOnCheckedChangeListener(new g(this, locala));
      this.i.setOnCheckedChangeListener(new h(this, locala));
      this.k.b(getString(2131493711));
      this.l.b(getString(2131493713));
      InputFilter[] arrayOfInputFilter = new InputFilter[2];
      arrayOfInputFilter[0] = new i(this);
      arrayOfInputFilter[bool1] = new InputFilter.LengthFilter(5);
      this.j.a(arrayOfInputFilter);
      this.j.b(getString(2131493712));
      this.j.b(2);
      d();
      if (i2 != 0)
        break label731;
    }
    while (true)
    {
      a(bool1);
      return;
      bool2 = false;
      break;
      label633: bool3 = false;
      break label104;
      label639: bool4 = false;
      break label147;
      label645: bool5 = false;
      break label168;
      label651: bool6 = false;
      break label233;
      label657: bool7 = false;
      break label254;
      label663: String str2 = this.b.getString(this.b.getColumnIndex("netmask"));
      this.l.a(str2);
      break label310;
      label698: this.k.a("");
      this.l.a("");
      break label310;
      label719: this.j.a("");
      break label349;
      label731: bool1 = false;
    }
  }

  private boolean c(String paramString)
  {
    boolean bool = true;
    if (this.n.c());
    while (true)
    {
      return bool;
      String[] arrayOfString = paramString.split("\\.");
      Integer[] arrayOfInteger = new Integer[4];
      if (arrayOfString.length < 4)
      {
        bool = false;
      }
      else
      {
        int i1 = 0;
        while (true)
        {
          if (i1 >= 4)
            break label76;
          try
          {
            arrayOfInteger[i1] = new Integer(arrayOfString[i1]);
            i1++;
          }
          catch (Exception localException)
          {
            bool = false;
          }
        }
        continue;
        label76: for (int i2 = 0; ; i2++)
        {
          if (i2 >= 4)
            break label169;
          if ((arrayOfInteger[i2].intValue() >= 0) && (arrayOfInteger[i2].intValue() <= 255))
          {
            if (arrayOfInteger[i2].intValue() == 255)
              continue;
            for (int i3 = i2 + 1; ; i3++)
            {
              if (i3 >= 4)
                break label156;
              if (arrayOfInteger[i3].intValue() != 0)
              {
                bool = false;
                break;
              }
            }
            break;
          }
          bool = false;
          break;
        }
        label156: label169: bool = false;
      }
    }
  }

  private void d()
  {
    this.k.setEnabled(this.h.isChecked());
    this.l.setEnabled(this.h.isChecked());
    this.j.setEnabled(this.i.isChecked());
    EditTextRow localEditTextRow1 = this.j;
    int i1;
    int i2;
    label82: int i3;
    label121: EditTextRow localEditTextRow4;
    if (this.i.isChecked())
    {
      i1 = 0;
      localEditTextRow1.setVisibility(i1);
      EditTextRow localEditTextRow2 = this.k;
      if (!this.h.isChecked())
        break label167;
      i2 = 0;
      localEditTextRow2.setVisibility(i2);
      EditTextRow localEditTextRow3 = this.l;
      if (!this.h.isChecked())
        break label174;
      boolean bool = this.n.c();
      i3 = 0;
      if (bool)
        break label174;
      localEditTextRow3.setVisibility(i3);
      localEditTextRow4 = this.k;
      if (!this.n.c())
        break label181;
    }
    label167: label174: label181: for (String str = getString(2131493692); ; str = getString(2131493711))
    {
      localEditTextRow4.b(str);
      return;
      i1 = 8;
      break;
      i2 = 8;
      break label82;
      i3 = 8;
      break label121;
    }
  }

  public String a()
  {
    return "/ms/firewall/customRules/detail";
  }

  public void a(int paramInt1, Object paramObject, Cursor paramCursor, Uri paramUri, int paramInt2)
  {
    if (getActivity() == null);
    while (true)
    {
      return;
      m.c("CustomRuleDetail.onQueryComplete()");
      if (paramInt1 == 1)
      {
        this.b = paramCursor;
        getActivity().startManagingCursor(paramCursor);
        if (this.b.moveToNext())
          c();
      }
    }
  }

  public void a(Bundle paramBundle)
  {
    if (this.b != null)
    {
      getActivity().stopManagingCursor(this.b);
      this.b = null;
    }
    this.a.cancelOperation(1);
    this.c = BaseActivity.a(paramBundle).getData();
    if (this.c == null);
    while (true)
    {
      return;
      this.a.startQuery(1, null, this.c, null, null, null, null);
    }
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    m.c("CustomRuleDetail.onActivityCreated()");
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = new x(getActivity().getContentResolver(), this);
    this.q = ((t)ad.a(getActivity(), t.class));
    a(getArguments());
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903109, paramViewGroup, false);
    m.c("CustomRuleDetail.onCreateView()");
    this.m = ((CheckBoxRow)localViewGroup.findViewById(2131165441));
    this.n = ((CheckBoxRow)localViewGroup.findViewById(2131165442));
    this.d = ((EditText)localViewGroup.findViewById(2131165440));
    this.e = ((ToggleButton)localViewGroup.findViewById(2131165445));
    this.f = ((ToggleButton)localViewGroup.findViewById(2131165446));
    this.g = ((ConnectionTypeButtons)localViewGroup.findViewById(2131165443));
    this.h = ((ToggleButton)localViewGroup.findViewById(2131165448));
    this.i = ((ToggleButton)localViewGroup.findViewById(2131165449));
    this.j = ((EditTextRow)localViewGroup.findViewById(2131165450));
    this.k = ((EditTextRow)localViewGroup.findViewById(2131165451));
    this.l = ((EditTextRow)localViewGroup.findViewById(2131165452));
    this.o = localViewGroup.findViewById(2131165444);
    this.p = localViewGroup.findViewById(2131165447);
    return localViewGroup;
  }

  public void onDestroy()
  {
    if (this.k != null)
      this.k.c();
    if (this.j != null)
      this.j.c();
    if (this.l != null)
      this.l.c();
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
    m.c("CustomRuleDetail.onPause()");
  }

  public void onResume()
  {
    super.onResume();
    m.c("CustomRuleDetail.onResume()");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.CustomRuleDetailFragment
 * JD-Core Version:    0.6.2
 */