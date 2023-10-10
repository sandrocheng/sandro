package com.sandro.binder_server;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;

import com.sandro.ipc.IClient;
import com.sandro.ipc.IServer;
import com.sandro.ipc.ServerDataInfo;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ServerImpl extends IServer.Stub {
    private Map<Integer, ServerDataInfo> dataMap = new HashMap();
    private ServerRemoteCallBackList<IClient> iClients = new ServerRemoteCallBackList<>();

    @Override
    public void sendData(ServerDataInfo info) throws RemoteException {
        try {
            //该方法是oneway的，所以客户端调用的时候不会阻塞
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (info != null) {
            dataMap.put(info.number, info);
        }
        Log.d(MyService.TAG, "[ServerImpl] sendData " + info.toString() + " save success");
        refreshClients();
    }

    private synchronized void refreshClients() {
        int count = iClients.beginBroadcast();
        for (int i = 0; i < count; i++) {
            try {
                iClients.getBroadcastItem(i).refreshData(getAllData());
            } catch (RemoteException e) {
                /**
                 * RemoteCallbackList会监听注册的IInterface所在的进程，如果进程没来的及调用unregister就死掉了，
                 * 内部会自动删除其回调接口对象，因此不需要去根据remoteExection去手动unregister客户端的binder
                 */
                Log.d(MyService.TAG, "[ServerImpl] refreshClients error  " + e.getMessage());
                Log.d(MyService.TAG, " , [ServerImpl] refreshClients  iClients size is " + iClients.getRegisteredCallbackCount());
            }
        }
        //beginBroadcast和finishBroadcast必须是成对出现,为了避免多线程问题这两个方法需要放到一个同步块里，或者使用synchronized关键字修饰整个方法
        iClients.finishBroadcast();
    }

    @Override
    public ServerDataInfo[] getAllData() throws RemoteException {
        ServerDataInfo[] allData = new ServerDataInfo[dataMap.size()];
        int i = 0;
        for (ServerDataInfo data : dataMap.values()) {
            allData[i] = data;
            i++;
        }
        return allData;
    }


    @Override
    public void mergeData(ServerDataInfo info) throws RemoteException {
        ServerDataInfo old = dataMap.get(info.number);
        if (old != null) {
            info.mergeData(old);
        }
        dataMap.put(info.number, info);
        refreshClients();
    }

    @Override
    public void testOutTag(ServerDataInfo outInfo) throws RemoteException {
        outInfo.name = "out info";
        outInfo.number = -1;
    }

    @Override
    public void testBundle(Bundle bundle) throws RemoteException {
        bundle.setClassLoader(this.getClass().getClassLoader());
        Parcelable[] infos = bundle.getParcelableArray("infos");
        Log.d(MyService.TAG, "[ServerImpl] testBundle");
        for (Parcelable info : infos) {
            ServerDataInfo i = (ServerDataInfo) info;
            Log.d(MyService.TAG, i.toString());
        }
    }

    @Override
    public void testFileDescriptor(ParcelFileDescriptor pfd) throws RemoteException {
        File file = new File(MainApp.getMainContext().getExternalCacheDir(), "IPC.txt");
        ParcelFileDescriptor.AutoCloseInputStream is = null;
        FileOutputStream os = null;
        try {
            is = new ParcelFileDescriptor.AutoCloseInputStream(pfd);
            file.delete();
            file.createNewFile();
            os = new FileOutputStream(file);

            byte[] buf = new byte[1024];
            int len;
            while ((len = is.read(buf)) > 0) {
                os.write(buf, 0, len);
            }
            if (file.exists()) {
                Log.d(MyService.TAG, "file " + file.getAbsolutePath() + " saved successful");
            } else {
                Log.e(MyService.TAG, "file " + file.getAbsolutePath() + " saved failed");
            }
        } catch (IOException e) {
            Log.d(MyService.TAG, "[testFileDescriptor] exception : " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (os != null) os.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        try {
            pfd.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * registerIClient和unRegisterIClient每次被调用的时候IClient由于是binder提供的代理，所以每次都不是一个对象，
     * 但是在RemoteCallbackList中实际上使用的是IClient.asBinder，
     * asBinder返回的binder是同一个，所以这里直接保存IClient是没问题的
     *
     * @param iClient
     * @throws RemoteException
     */
    @Override
    public void registerIClient(IClient iClient) throws RemoteException {
        Log.d(MyService.TAG, "registerIClient : " + iClient);
        iClients.register(iClient);
    }

    @Override
    public void unRegisterIClient(IClient iClient) throws RemoteException {
        delIClient(iClient);
    }

    private final String PERMISSION = "sandro.permission.fetchData.highlevel";

    @Override
    public void checkPermissionTest() throws RemoteException {
        int checked = MainApp.getMainContext().checkCallingPermission(PERMISSION);
        boolean hasPermission = PackageManager.PERMISSION_GRANTED == checked;
        Log.d(MyService.TAG, "checkPermissionTest : " + hasPermission);

        try {
            MainApp.getMainContext().enforceCallingPermission(PERMISSION, "没有权限");
        } catch (Exception e) {
            Log.e(MyService.TAG, "checkPermissionTest : " + e.getMessage());
        }

        /**
         * 为了进一步验证安全性，可以根据uid获取到包名和签名byte数组
         * 业务中可以再根据这两个信息进一步的验证安全性
         */
        String pkgName = MainApp.getMainContext().getPackageManager().getNameForUid(Binder.getCallingUid());
        Log.d(MyService.TAG, "checkPermissionTest client PID is  " + Binder.getCallingPid()
                + " ,packageName is : " + pkgName
                + " , client UID is " + Binder.getCallingUid());
        try {
            PackageInfo info = MainApp.getMainContext().getPackageManager().getPackageInfo(pkgName, PackageManager.GET_SIGNATURES);
            String buffer = "";
            for(Signature sig : info.signatures){
                for(byte b : sig.toByteArray()){
                    buffer += b + ",";
                }
                Log.d(MyService.TAG, "checkPermissionTest signature byte array : " + buffer.substring(0,20) + "...");
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(MyService.TAG, "checkPermissionTest getPackageInfo : " + e.getMessage());
        }
    }

    private void delIClient(IClient iClient) {
        iClients.unregister(iClient);
        Log.d(MyService.TAG, "unRegisterIClient : " + iClient + " , iClients size is " + iClients.getRegisteredCallbackCount());
    }

}
