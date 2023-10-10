// IServer.aidl
package com.sandro.ipc;
import com.sandro.ipc.ServerDataInfo;
import com.sandro.ipc.IClient;

interface IServer {

    oneway void sendData(in ServerDataInfo info);

    ServerDataInfo[] getAllData();

    void mergeData(inout ServerDataInfo info);

    void testOutTag(out ServerDataInfo outInfo);

    void testBundle(in Bundle bundle);

    void testFileDescriptor(in ParcelFileDescriptor pfd);

    oneway void registerIClient(IClient iClient);

    oneway void unRegisterIClient(IClient iClient);

    void checkPermissionTest();
}