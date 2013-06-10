package android.support.v4.view;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.b.b;
import android.support.v4.b.d;
import android.view.View.BaseSavedState;

public class ViewPager$SavedState extends View.BaseSavedState
{
  public static final Parcelable.Creator CREATOR = new b(localaa);
  int a;
  Parcelable b;
  ClassLoader c;

  static
  {
    aa localaa = new aa();
    if (Build.VERSION.SDK_INT >= 13)
      new d(localaa);
  }

  ViewPager$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    ClassLoader localClassLoader = getClass().getClassLoader();
    this.a = paramParcel.readInt();
    this.b = paramParcel.readParcelable(localClassLoader);
    this.c = localClassLoader;
  }

  public ViewPager$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }

  public String toString()
  {
    return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.a + "}";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.a);
    paramParcel.writeParcelable(this.b, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager.SavedState
 * JD-Core Version:    0.6.2
 */