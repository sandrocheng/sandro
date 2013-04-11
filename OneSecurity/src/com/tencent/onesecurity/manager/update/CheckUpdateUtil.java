
package com.tencent.onesecurity.manager.update;

import java.util.concurrent.atomic.AtomicReference;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.common.URLConstant;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.util.ErrorCode;
import com.tencent.onesecurity.util.HttpConnection;
import com.tencent.onesecurity.util.PackageUtil;

/**
 * @ClassName: CheckUpdateUtil
 * @Description: 检查更新工具类
 * @author: lee
 * @date: 2012-10-12 上午10:25:11
 */
public class CheckUpdateUtil {

    // 已经收到检查更新应答
    public static final int CHECK_VERSION_NOTICE = 1982;

    // 需要UI修改new标志的显示/隐藏
    public static final int CHANGE_NEW_UPDATE_ICON = 1;

    /** 信息保存 更新类型。1不更新，2强制，3非强制 */
    public static final String UPDATE_TYPE = "UPDATE_TYPE_KEY";

    public static final String UPDATE_MSG = "UPDATE_MSG_KEY"; // 软件更新提示语

    public static final String DOWNLOAD_URL = "DOWNLOAD_URL_KEY"; // 软件下载URL

    private Thread checkThread;

    private Handler checkHandler;

    private ConfigDao configDao;

    /**
     * About页点击更新 用构造方法
     * 
     * @param context
     * @param handler
     * @param from
     */
    public CheckUpdateUtil(Handler handler) {
        this.checkHandler = handler;
        configDao = DaoCreator.createConfigDao();
    }

    /**
     * 定时更新用 构造方法
     * 
     * @param context
     * @param handler
     * @param from
     */
    public CheckUpdateUtil() {
        this.checkHandler = new Handler() {

            @Override
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                switch (msg.what) {
                    // 检查更新消息提示
                    case CheckUpdateUtil.CHECK_VERSION_NOTICE:
                        handleUpdate(msg);
                        break;
                    default:
                        break;
                }
            }
        };
        configDao = DaoCreator.createConfigDao();
    }

    public void checkSoftwareVesrion() {

        checkThread = new Thread(new Runnable() {
            @Override
            public void run() {
                String[] updateInfos = getUpdateInfoFromSrv();
                int updateType = LcUtil.ERROR;
                /*--Lion fix bug NO 9579008----2012-12-4------Start--*/
                try {
                    updateType = Integer.parseInt(updateInfos[0]);
                } catch (Exception e) {
                    Log.e("Update Error", e.getMessage());
                    updateType = LcUtil.ERROR;
                }
                /*--Lion fix bug NO 9579008----2012-12-4------End--*/

                Bundle bundle = new Bundle();
                bundle.putInt(UPDATE_TYPE, updateType);
                bundle.putString(UPDATE_MSG, updateInfos[1]);
                bundle.putString(DOWNLOAD_URL, updateInfos[2]);
                sendMessage(CHECK_VERSION_NOTICE, bundle);
            }
        });
        checkThread.start();
    }

    /**
     * 升级逻辑 1)ERROR 2)不需要升级 3)选择升级，强制升级(目前一起处理)
     * 
     * @param activity
     * @param msg
     */
    public void handleUpdate(Message msg) {
        Bundle data = msg.getData();
        int updateType = data.getInt(UPDATE_TYPE);
        switch (updateType) {
            // 网络错误
            case LcUtil.ERROR:
                break;
            // 不需要升级
            case LcUtil.NONEED:
                changeNewIconShown(false);
                break;
            // 强制升级
            case LcUtil.MUSTUPDATE:
                // 选择升级
            case LcUtil.SHOULDUPDATE:
                changeNewIconShown(true);
                break;
        }
    }

    private void sendMessage(int type, Bundle bundle) {
        Message msg = new Message();
        msg.what = type;
        msg.setData(bundle);
        checkHandler.sendMessage(msg);
    }

    /**
     * @Description 提示更新以后的操作 1) 关闭对话框 2) 修改本地new icon是否显示标志位 3)
     *              如果是about页点击的update，则即时修改about的new icon显示
     * @version 1.0
     * @author LionLiu
     */
    private void changeNewIconShown(boolean hasNewUpdate) {
        configDao.setVersionBeforeUpdate(hasNewUpdate ? PackageUtil.getVersionName() : "0");
    }

    /**
     * 网络请求检查是否需要更新
     * 
     * @return 0 : 更新类型 1:提示语 2:URL
     */
    private String[] getUpdateInfoFromSrv() {

        String[] retValue = new String[3];

        int updateType = 0;
        String updateMsg = "";
        String updateUrl = "";
        String lc = ApplicationConfig.LC;
        HttpConnection httpConnection = null;
        try {
            LcUtil lcUtil = new LcUtil();
            byte[] postBody = lcUtil.makeCheckUpdateRequestPackge(lc.getBytes(), 0, 0);

            // 发送
            httpConnection = HttpConnection.createHttpConnection(URLConstant.UPDATE_LC_URL);
            httpConnection.setRequestMethod(HttpConnection.METHOD_POST);
            httpConnection.setPostData(postBody);
            httpConnection.sendRequest();
            // 接收
            AtomicReference<byte[]> retBytesRef = new AtomicReference<byte[]>();
            int errCode = httpConnection.getResponse(false, retBytesRef);
            byte[] respBody = retBytesRef.get();
            // 如果访问失败，或者没有返回
            if (errCode != ErrorCode.ERR_NONE || respBody == null || 0 == respBody.length) {
                retValue[0] = String.valueOf(LcUtil.ERROR);
                return retValue;
            }

            // 记录检查更新时间
            configDao.setLastCheckUpdateTime(System.currentTimeMillis());

            // 有结果
            updateType = lcUtil.sloveCheckUpdateResponPackge(lc.getBytes(), respBody);
            retValue[0] = String.valueOf(updateType);
            if (updateType != LcUtil.NONEED && updateType != LcUtil.ERROR) {
                updateMsg = lcUtil.getUpdateDesText();
                updateUrl = lcUtil.getUpdateUrl();
                retValue[1] = updateMsg; // MSG
                retValue[2] = updateUrl; // URL
            }
        } catch (Exception e) {
            e.printStackTrace();
            retValue[0] = String.valueOf(LcUtil.ERROR);
            return retValue;
        } finally {
            if (null != httpConnection) {
                httpConnection.close();
                httpConnection = null;
            }
        }
        return retValue;
    }

}
