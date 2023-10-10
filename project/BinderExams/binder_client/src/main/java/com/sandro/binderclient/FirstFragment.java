package com.sandro.binderclient;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;

import com.sandro.binderclient.databinding.FragmentFirstBinding;
import com.sandro.ipc.IClient;
import com.sandro.ipc.IServer;
import com.sandro.ipc.ServerDataInfo;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

public class FirstFragment extends Fragment {
    private FragmentFirstBinding binding;

    private IServer serverProxy;
    private int number = 0;
    private String info_str = UUID.randomUUID().toString().substring(0,5);

    private IClient.Stub client = new IClient.Stub() {
        @Override
        public void refreshData(ServerDataInfo[] infos) throws RemoteException {
            FirstFragment.this.getActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    refreshAllDataShow(infos);
                }
            });
        }
    };

    private ServiceConnection conn = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            serverProxy = IServer.Stub.asInterface(service);

            new Thread(){
                public void run(){
                    ServerDataInfo outInfo = new ServerDataInfo();
                    try {
                        serverProxy.checkPermissionTest();

                        serverProxy.registerIClient(client);

                        serverProxy.testOutTag(outInfo);
                        Log.d(MainApp.LOG_TAG,"outInfo : " + outInfo.toString());

                        Bundle bundle = new Bundle();
                        ServerDataInfo info1 = new ServerDataInfo(-2,"test1");
                        ServerDataInfo info2 = new ServerDataInfo(-3,"test2");
                        bundle.putParcelableArray("infos",new ServerDataInfo[]{info1,info2} );
                        serverProxy.testBundle(bundle);

                        File f =  getAssetIPCFile();
                        ParcelFileDescriptor pfd = ParcelFileDescriptor.open(f,ParcelFileDescriptor.MODE_READ_ONLY);
                        serverProxy.testFileDescriptor(pfd);
                        pfd.close();

                    } catch (RemoteException | FileNotFoundException e) {
                        Log.d(MainApp.LOG_TAG,"[onServiceConnected] exception : " + e.getMessage());
                        e.printStackTrace();
                    } catch (IOException e) {
                        Log.d(MainApp.LOG_TAG,"[onServiceConnected] exception : " + e.getMessage());
                        e.printStackTrace();
                    }
                }
            }.start();

        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            Log.d(MainApp.LOG_TAG,"FirstFragment onServiceDisconnected");
            showReBindBtn();
        }
    };

    /**
     * 因为apk安装之后会放在/data/app/**.apk目录下，以apk形式存在，asset/res/raw被绑定在apk里，
     * 这些apk内部的资源文件并不会解压到/data/data/YourApp目录下去，所以无法直接获取到 assets 的绝对路径。
     * 要想获取File对象，就只能通过io获取到数据流并保存到某个路径中去
     * @return
     * @throws IOException
     */
    private File getAssetIPCFile() {
        FileOutputStream fos = null;
        InputStream is = null;
        File f = new File(this.getContext().getCacheDir(),"IPC.txt");
        try {
            if(f.exists()){
                f.delete();
                f.createNewFile();
            }
            fos = new FileOutputStream(f);
            is = FirstFragment.this.getContext().getAssets().open("IPC.txt");

            byte[] data = new byte[1024];
            int nbread;
            while((nbread = is.read(data))>0){
                fos.write(data,0,nbread);
            }
        } catch (IOException e) {
            Log.d(MainApp.LOG_TAG,"[getAssetIPCFile] exception : " + e.getMessage());
            e.printStackTrace();
        }finally {
            if(fos!=null){
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(is!=null){
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        Log.d(MainApp.LOG_TAG,"[getAssetIPCFile] filename : " + f.getAbsolutePath());
        return f;
    }

    private ServerDataInfo generateNewServerDataInfo(){
        ServerDataInfo info = new ServerDataInfo(number,info_str);
        number++;
        info_str = UUID.randomUUID().toString().substring(0,5);
        return info;
    }

    private boolean sendData(ServerDataInfo info){
        try {
            serverProxy.sendData(info);
            return true;
        } catch (RemoteException e) {
            Log.d(MainApp.LOG_TAG,"FirstFragment onServiceConnected send data error " + e.getMessage());
            showReBindBtn();
            return false;
        }
    }

    private void showReBindBtn(){
        FirstFragment.this.getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                binding.btnRebind.setVisibility(View.VISIBLE);
                binding.btnArea.setVisibility(View.GONE);
            }
        });
    }
    private void hideRebind() {
        FirstFragment.this.getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                binding.btnRebind.setVisibility(View.GONE);
                binding.btnArea.setVisibility(View.VISIBLE);
            }
        });

    }

    private void bindToServer(){
        Intent intent = new Intent();
        intent.setAction("com.sandro.connect_server");
        intent.setComponent(new ComponentName("com.sandro.binder_server","com.sandro.binder_server.MyService"));
        boolean connected = this.getContext().bindService(intent,conn, Context.BIND_AUTO_CREATE);
        if(connected){
            hideRebind();
        }else{
            showReBindBtn();
        }
        Log.d(MainApp.LOG_TAG,"FirstFragment bindService : " + connected);
    }



    @Override
    public View onCreateView(
            LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState
    ) {
        binding = FragmentFirstBinding.inflate(inflater, container, false);
        binding.btnRebind.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                bindToServer();
            }
        });
        binding.btnFetch.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    ServerDataInfo[] allData = serverProxy.getAllData();

                    refreshAllDataShow(allData);
                } catch (RemoteException e) {
                    showReBindBtn();
                }
            }
        });
        binding.btnSend.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View v) {
                boolean success = sendData(generateNewServerDataInfo());
                if(success){
                    refreshSendingData();
                }
            }
        });
        binding.btnMerge.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                try {
                    if(number>0){
                        number--;
                    }
                    ServerDataInfo info = generateNewServerDataInfo();
                    serverProxy.mergeData(info);
                    Log.d(MainApp.LOG_TAG,"after merge : " + info.toString());
                    refreshSendingData();
                } catch (RemoteException e) {
                    showReBindBtn();
                }
            }
        });
        refreshSendingData();
        bindToServer();
        return binding.getRoot();
    }

    private void refreshAllDataShow(ServerDataInfo[] allData) {
        this.getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                String txt = "";
                for(ServerDataInfo info : allData){
                    txt += info.toString() + "\n";
                }
                binding.txtAllData.setText(txt);
                Log.d(MainApp.LOG_TAG,"all data size is : " + allData.length);
            }
        });
    }

    private void refreshSendingData() {
        binding.dataNumber.setText("" + number);
        binding.dataInfo.setText("" + info_str);
    }

    public void onViewCreated(@NonNull View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
        try {
            serverProxy.unRegisterIClient(client);
        } catch (RemoteException e) {
            Log.d(MainApp.LOG_TAG,"[onDestroyView] unRegisterIClient failed " + e.getMessage());
        }
    }

}