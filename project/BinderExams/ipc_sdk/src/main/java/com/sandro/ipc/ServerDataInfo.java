package com.sandro.ipc;

import android.os.Parcel;
import android.os.Parcelable;

public class ServerDataInfo implements Parcelable {

    public int number;
    public String name;

    public ServerDataInfo(){}

    public ServerDataInfo(int number, String name) {
        this.number = number;
        this.name = name;
    }

    public ServerDataInfo(Parcel in) {
        this.number = in.readInt();
        this.name = in.readString();
    }

    public static final Creator<ServerDataInfo> CREATOR = new Creator<ServerDataInfo>() {
        @Override
        public ServerDataInfo createFromParcel(Parcel in) {
            return new ServerDataInfo(in);
        }

        @Override
        public ServerDataInfo[] newArray(int size) {
            return new ServerDataInfo[size];
        }
    };

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(number);
        dest.writeString(name);
    }

    //IServer中的接口使用了out 和 inout Tag，因此需要定义这个方法
    public void readFromParcel(Parcel parcel) {
        this.number = parcel.readInt();
        this.name = parcel.readString();
    }

    public void mergeData(ServerDataInfo info){
        this.name += info.name;
    }

    @Override
    public String toString() {
        return "number : " + this.number + " , name : " + this.name;
    }
}
