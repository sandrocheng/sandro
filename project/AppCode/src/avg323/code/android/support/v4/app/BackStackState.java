package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

final class BackStackState
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new d();
  final int[] a;
  final int b;
  final int c;
  final String d;
  final int e;
  final int f;
  final CharSequence g;
  final int h;
  final CharSequence i;

  public BackStackState(Parcel paramParcel)
  {
    this.a = paramParcel.createIntArray();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readString();
    this.e = paramParcel.readInt();
    this.f = paramParcel.readInt();
    this.g = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.h = paramParcel.readInt();
    this.i = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
  }

  public BackStackState(q paramq, b paramb)
  {
    c localc1 = paramb.b;
    int j = 0;
    while (localc1 != null)
    {
      if (localc1.i != null)
        j += localc1.i.size();
      localc1 = localc1.a;
    }
    this.a = new int[j + 7 * paramb.d];
    if (!paramb.k)
      throw new IllegalStateException("Not on back stack");
    c localc2 = paramb.b;
    int k = 0;
    if (localc2 != null)
    {
      int[] arrayOfInt1 = this.a;
      int m = k + 1;
      arrayOfInt1[k] = localc2.c;
      int[] arrayOfInt2 = this.a;
      int n = m + 1;
      if (localc2.d != null);
      int i5;
      int i7;
      for (int i1 = localc2.d.o; ; i1 = -1)
      {
        arrayOfInt2[m] = i1;
        int[] arrayOfInt3 = this.a;
        int i2 = n + 1;
        arrayOfInt3[n] = localc2.e;
        int[] arrayOfInt4 = this.a;
        int i3 = i2 + 1;
        arrayOfInt4[i2] = localc2.f;
        int[] arrayOfInt5 = this.a;
        int i4 = i3 + 1;
        arrayOfInt5[i3] = localc2.g;
        int[] arrayOfInt6 = this.a;
        i5 = i4 + 1;
        arrayOfInt6[i4] = localc2.h;
        if (localc2.i == null)
          break label347;
        int i6 = localc2.i.size();
        int[] arrayOfInt8 = this.a;
        i7 = i5 + 1;
        arrayOfInt8[i5] = i6;
        int i8 = 0;
        while (i8 < i6)
        {
          int[] arrayOfInt9 = this.a;
          int i9 = i7 + 1;
          arrayOfInt9[i7] = ((Fragment)localc2.i.get(i8)).o;
          i8++;
          i7 = i9;
        }
      }
      k = i7;
      while (true)
      {
        localc2 = localc2.a;
        break;
        label347: int[] arrayOfInt7 = this.a;
        k = i5 + 1;
        arrayOfInt7[i5] = 0;
      }
    }
    this.b = paramb.i;
    this.c = paramb.j;
    this.d = paramb.m;
    this.e = paramb.o;
    this.f = paramb.p;
    this.g = paramb.q;
    this.h = paramb.r;
    this.i = paramb.s;
  }

  public b a(q paramq)
  {
    b localb = new b(paramq);
    int j = 0;
    int i6;
    for (int k = 0; k < this.a.length; k = i6)
    {
      c localc = new c();
      int[] arrayOfInt1 = this.a;
      int m = k + 1;
      localc.c = arrayOfInt1[k];
      if (q.a)
        Log.v("FragmentManager", "Instantiate " + localb + " op #" + j + " base fragment #" + this.a[m]);
      int[] arrayOfInt2 = this.a;
      int n = m + 1;
      int i1 = arrayOfInt2[m];
      if (i1 >= 0);
      for (localc.d = ((Fragment)paramq.f.get(i1)); ; localc.d = null)
      {
        int[] arrayOfInt3 = this.a;
        int i2 = n + 1;
        localc.e = arrayOfInt3[n];
        int[] arrayOfInt4 = this.a;
        int i3 = i2 + 1;
        localc.f = arrayOfInt4[i2];
        int[] arrayOfInt5 = this.a;
        int i4 = i3 + 1;
        localc.g = arrayOfInt5[i3];
        int[] arrayOfInt6 = this.a;
        int i5 = i4 + 1;
        localc.h = arrayOfInt6[i4];
        int[] arrayOfInt7 = this.a;
        i6 = i5 + 1;
        int i7 = arrayOfInt7[i5];
        if (i7 <= 0)
          break;
        localc.i = new ArrayList(i7);
        int i8 = 0;
        while (i8 < i7)
        {
          if (q.a)
            Log.v("FragmentManager", "Instantiate " + localb + " set remove fragment #" + this.a[i6]);
          ArrayList localArrayList = paramq.f;
          int[] arrayOfInt8 = this.a;
          int i9 = i6 + 1;
          Fragment localFragment = (Fragment)localArrayList.get(arrayOfInt8[i6]);
          localc.i.add(localFragment);
          i8++;
          i6 = i9;
        }
      }
      localb.a(localc);
      j++;
    }
    localb.i = this.b;
    localb.j = this.c;
    localb.m = this.d;
    localb.o = this.e;
    localb.k = true;
    localb.p = this.f;
    localb.q = this.g;
    localb.r = this.h;
    localb.s = this.i;
    localb.b(1);
    return localb;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeInt(this.f);
    TextUtils.writeToParcel(this.g, paramParcel, 0);
    paramParcel.writeInt(this.h);
    TextUtils.writeToParcel(this.i, paramParcel, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.BackStackState
 * JD-Core Version:    0.6.2
 */