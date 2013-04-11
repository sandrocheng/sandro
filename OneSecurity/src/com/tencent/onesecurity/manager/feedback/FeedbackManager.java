/**
 * FileName: FeedbackManager.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-10-16 下午2:09:16
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-10-16 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */

package com.tencent.onesecurity.manager.feedback;

import java.util.concurrent.atomic.AtomicReference;

import android.content.Context;
import android.os.Handler;
import android.os.Message;

import com.qq.jce.wup.UniPacket;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.dao.CoreConfigDao;
import com.tencent.onesecurity.service.QQPIM.FeedbackRequest;
import com.tencent.onesecurity.service.QQPIM.User;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.ErrorCode;
import com.tencent.onesecurity.util.HttpConnection;
import com.tencent.onesecurity.util.PackageUtil;
import com.tencent.onesecurity.util.PhoneInfoUtil;
import com.tencent.onesecurity.util.XxteaCoding;

/**
 * @ClassName: FeedbackManager
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Matrix
 * @date: 2012-10-16 下午2:09:16
 */
public class FeedbackManager {

    public static final int FEEDBACK_SUCCESS = 1;

    public static final int FEEDBACK_FAILED = 2;

    private Handler handler = null;

    private Context context = null;

    private final static String SERVER_NAME = "pay";

    private final static String FUNCTION_NAME = "feedback";

    private final static String ENCODE_NAME = "UTF-8";

    private final static int REQUEST_ID = 32;

    public FeedbackManager(Handler handler, Context context) {
        this.handler = handler;
        this.context = context;
    }

    public void sendFeedback(String content, String email) {

        HttpConnection httpConnection = null;
        int errCode = ErrorCode.ERR_WUP;
        byte[] respBody = null;
        try {
            UniPacket request = new UniPacket(true);
            UniPacket respond = new UniPacket(true);

            request.setRequestId(REQUEST_ID);
            request.setServantName(SERVER_NAME);
            request.setFuncName(FUNCTION_NAME);
            request.setEncodeName(ENCODE_NAME);
            respond.setEncodeName(ENCODE_NAME);

            FeedbackRequest feedbackReq = new FeedbackRequest();
            feedbackReq.fid = 2;
            feedbackReq.user = new User();
            feedbackReq.user.email = email;
            feedbackReq.user.imei = DeviceUtil.getIMEI();;
            feedbackReq.user.lc = ApplicationConfig.LC;
            feedbackReq.user.machine = PhoneInfoUtil.getProductName();
            feedbackReq.user.qq = 0;
            feedbackReq.user.version = PackageUtil.getVersionName();
            feedbackReq.feedback = (content == null) ? "" : content;

            request.put("req", feedbackReq);

            // int err = runHttpSession(request, respond, true, mWupUrl);

            // 编码
            byte[] vEncodedData = request.encode();
            // 加密
            // byte[] vEncryptData = TccCryptor.encrypt(context, vEncodedData,
            // null);
            XxteaCoding xxtea = new XxteaCoding(ApplicationConfig.teakey.getBytes());
            byte[] vEncryptData = xxtea.encode(vEncodedData);
            // 通过SmartConfig 参数配置
            String url = CoreConfigDao.getInstance().getStringValue(CoreConfigDao.FEEDBACK_URL);
            httpConnection = HttpConnection.createHttpConnection(url);
            httpConnection.setRequestMethod(HttpConnection.METHOD_POST);
            httpConnection.setPostData(vEncryptData);
            httpConnection.setRequestProperty("User-Agent", "mQQPim");
            httpConnection.sendRequest();

            // 接收
            AtomicReference<byte[]> retBytesRef = new AtomicReference<byte[]>();
            errCode = httpConnection.getResponse(false, retBytesRef);
            respBody = retBytesRef.get();
        } catch (Throwable e) {
            errCode = ErrorCode.ERR_WUP;
            e.printStackTrace();
        } finally {
            if (null != httpConnection) {
                httpConnection.close();
                httpConnection = null;
            }
        }

        Message message = new Message();
        if (errCode == ErrorCode.ERR_NONE && respBody != null && respBody.length > 0) {
            message.what = FEEDBACK_SUCCESS;
        } else {
            message.what = FEEDBACK_FAILED;
        }
        // if(respBody != null && respBody.length>0){
        // message.what = FEEDBACK_SUCCESS ;
        // }else{
        // message.what = FEEDBACK_FAILED ;
        // }
        handler.sendMessage(message);

    }
}
