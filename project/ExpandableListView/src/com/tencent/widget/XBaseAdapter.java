package com.tencent.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.widget.BaseAdapter;

public abstract class XBaseAdapter extends BaseAdapter implements XListAdapter
{
    /**
     * 内部使用, 数据更新的监听器
     * 
     *
     */
    static interface ListDataSetListener 
    {
        public abstract void onRowInserted(int first, int last);
        public abstract void onRowDeleted(int first, int last);
        public abstract void onRowDeleted(int... deleteRows);
        public abstract void onRowUpdated(int first, int last);
    }
    
    private final ListDataSetObservable mDataSetObservable = new ListDataSetObservable();
    
    class ListDataSetObservable extends DataSetObservable
    {
        public void notifyRowInserted(int first, int last)
        {
            synchronized(mObservers) {
                // since onChanged() is implemented by the app, it could do anything, including
                // removing itself from {@link mObservers} - and that could cause problems if
                // an iterator is used on the ArrayList {@link mObservers}.
                // to avoid such problems, just march thru the list in the reverse order.
                for (int i = mObservers.size() - 1; i >= 0; i--) {
                    DataSetObserver dataSetObserver = mObservers.get(i);
                    if(dataSetObserver instanceof ListDataSetListener)
                    {
                        ((ListDataSetListener) dataSetObserver).onRowInserted(first, last);
                    }
                    else
                    {
                        dataSetObserver.onChanged();
                    }
                }
            }
        }
        
        public void notifyRowDeleted(int first, int last)
        {
            synchronized(mObservers) {
                // since onChanged() is implemented by the app, it could do anything, including
                // removing itself from {@link mObservers} - and that could cause problems if
                // an iterator is used on the ArrayList {@link mObservers}.
                // to avoid such problems, just march thru the list in the reverse order.
                for (int i = mObservers.size() - 1; i >= 0; i--) {
                    DataSetObserver dataSetObserver = mObservers.get(i);
                    if(dataSetObserver instanceof ListDataSetListener)
                    {
                        ((ListDataSetListener) dataSetObserver).onRowDeleted(first, last);
                    }
                    else
                    {
                        dataSetObserver.onChanged();
                    }
                }
            }
        }
        
        public void notifyRowDeleted(int... rows)
        {
            synchronized(mObservers) {
                // since onChanged() is implemented by the app, it could do anything, including
                // removing itself from {@link mObservers} - and that could cause problems if
                // an iterator is used on the ArrayList {@link mObservers}.
                // to avoid such problems, just march thru the list in the reverse order.
                for (int i = mObservers.size() - 1; i >= 0; i--) {
                    DataSetObserver dataSetObserver = mObservers.get(i);
                    if(dataSetObserver instanceof ListDataSetListener)
                    {
                        ((ListDataSetListener) dataSetObserver).onRowDeleted(rows);
                    }
                    else
                    {
                        dataSetObserver.onChanged();
                    }
                }
            }
        }
        
        public void notifyRowUpdated(int first, int last)
        {
            // since onChanged() is implemented by the app, it could do anything, including
            // removing itself from {@link mObservers} - and that could cause problems if
            // an iterator is used on the ArrayList {@link mObservers}.
            // to avoid such problems, just march thru the list in the reverse order.
            for (int i = mObservers.size() - 1; i >= 0; i--) {
                DataSetObserver dataSetObserver = mObservers.get(i);
                if(dataSetObserver instanceof ListDataSetListener)
                {
                    ((ListDataSetListener) dataSetObserver).onRowUpdated(first, last);
                }
                else
                {
                    dataSetObserver.onChanged();
                }
            }
        }
    }
    
    @Override
    public void registerDataSetObserver(DataSetObserver observer)
    {
        mDataSetObservable.registerObserver(observer);
    }
    
    @Override
    public void unregisterDataSetObserver(DataSetObserver observer)
    {
        mDataSetObservable.unregisterObserver(observer);
    }
    
    @Override
    public void notifyDataSetChanged()
    {
        mDataSetObservable.notifyChanged();
    }
    
    @Override
    public void notifyDataSetInvalidated()
    {
        mDataSetObservable.notifyInvalidated();
    }
    
    /**
     * 通知某几行被添加(firstRow~firstRow)
     * @param firstRow
     * @param lastRow
     */
    public void notifyRowInserted(int firstRow, int lastRow)
    {
        mDataSetObservable.notifyRowInserted(firstRow, lastRow);
    }
    
    /**
     * 通知某几行被删除(firstRow~firstRow)
     * @param firstRow
     * @param lastRow
     */
    public void notifyRowDeleted(int firstRow, int lastRow)
    {
        mDataSetObservable.notifyRowDeleted(firstRow, lastRow);
    }
    
    /**
     * 通知某几行被删除(非连续的)
     * @param firstRow
     * @param lastRow
     */
    public void notifyRowsDeleted(int... rows)
    {
        mDataSetObservable.notifyRowDeleted(rows);
    }
    
    /**
     * 通知某几行被修改
     * @param firstRow
     * @param lastRow
     */
    public void notifyRowUpdated(int firstRow, int lastRow)
    {
        mDataSetObservable.notifyRowUpdated(firstRow, lastRow);
    }
    
    

}
