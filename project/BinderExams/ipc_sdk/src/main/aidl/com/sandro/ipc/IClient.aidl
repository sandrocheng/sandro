// IClient.aidl
package com.sandro.ipc;
import com.sandro.ipc.ServerDataInfo;

interface IClient {

    oneway void refreshData(in ServerDataInfo[] infos);
}