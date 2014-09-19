package com.tencent.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;

/**
 * TypedArray的代理类
 * 
 * 
 * 
 */
public class TypedArrayWarpper
{
    private TypedArray a;

    public TypedArrayWarpper(TypedArray a)
    {
        this.a = a;
    }

    public int length()
    {
        return a.length();
    }

    public int getIndexCount()
    {
        return a.getIndexCount();
    }

    public int getIndex(int at)
    {
        return a.getIndex(at);
    }

    public Resources getResources()
    {
        return a.getResources();
    }

    public CharSequence getText(int index)
    {
        if(index >= 0)
        {
            return a.getText(index);
        }
        return null;
    }

    public String getString(int index)
    {
        if(index >= 0)
        {
            return a.getString(index);
        }
        return null;
    }

    public String getNonResourceString(int index)
    {
        if(index >= 0)
        {
            return a.getNonResourceString(index);
        }
        return null;
    }

    public boolean getBoolean(int index, boolean defValue)
    {
        if(index >= 0)
        {
            return a.getBoolean(index, defValue);
        }
        else
        {
            return defValue;
        }
    }

    public int getInt(int index, int defValue)
    {
        if(index >= 0)
        {
            return a.getInt(index, defValue);
        }
        else
        {
            return defValue;
        }
    }

    public float getFloat(int index, float defValue)
    {
        if (index >= 0)
        {
            return a.getFloat(index, defValue);
        }
        else
        {
            return defValue;
        }
    }

    public int getColor(int index, int defValue)
    {
        if (index >= 0)
        {
            return a.getColor(index, defValue);
        }
        else
        {
            return defValue;
        }
    }

    public int hashCode()
    {
        return a.hashCode();
    }

    public ColorStateList getColorStateList(int index)
    {
        if (index >= 0)
        {
            return a.getColorStateList(index);
        }
        else
        {
            return null;
        }
    }

    public int getInteger(int index, int defValue)
    {
        if (index >= 0)
        {
            return a.getInteger(index, defValue);
        }
        else
        {
            return defValue;
        }
    }

    public float getDimension(int index, float defValue)
    {
        if (index >= 0)
        {
            return a.getDimension(index, defValue);
        }
        else
        {
            return defValue;
        }
    }

    public int getDimensionPixelOffset(int index, int defValue)
    {
        if (index >= 0)
        {
            return a.getDimensionPixelOffset(index, defValue);
        }
        else
        {
            return defValue;
        }
    }

    public int getDimensionPixelSize(int index, int defValue)
    {
        if (index >= 0)
        {
            return a.getDimensionPixelSize(index, defValue);
        }
        else
        {
            return defValue;
        }
    }

    public int getLayoutDimension(int index, String name)
    {
        return a.getLayoutDimension(index, name);
    }

    public int getLayoutDimension(int index, int defValue)
    {
        if (index >= 0)
        {
            return a.getLayoutDimension(index, defValue);
        }
        else
        {
            return defValue;
        }
    }

    public float getFraction(int index, int base, int pbase, float defValue)
    {
        if (index >= 0)
        {
            return a.getFraction(index, base, pbase, defValue);
        }
        else
        {
            return defValue;
        }
    }

    public int getResourceId(int index, int defValue)
    {
        if (index >= 0)
        {
            return a.getResourceId(index, defValue);
        }
        else
        {
            return defValue;
        }
    }

    public Drawable getDrawable(int index)
    {
        if (index >= 0)
        {
            return a.getDrawable(index);
        }
        else
        {
            return null;
        }
    }

    public CharSequence[] getTextArray(int index)
    {
        if (index >= 0)
        {
            return a.getTextArray(index);
        }
        else
        {
            return null;
        }
    }

    public boolean getValue(int index, TypedValue outValue)
    {
        if (index >= 0)
        {
            return a.getValue(index, outValue);
        }
        else
        {
            return false;
        }
    }

    public boolean hasValue(int index)
    {
        if (index >= 0)
        {
            return a.hasValue(index);
        }
        else
        {
            return false;
        }
    }

    public TypedValue peekValue(int index)
    {
        if (index >= 0)
        {
            return a.peekValue(index);
        }
        else
        {
            return null;
        }
    }

    public String getPositionDescription()
    {
        return a.getPositionDescription();
    }

    public void recycle()
    {
        a.recycle();
    }

    public String toString()
    {
        return a.toString();
    }

}
