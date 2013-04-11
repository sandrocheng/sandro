
package com.tencent.onesecurity.receiver;

import android.content.Context;
import android.content.Intent;

import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.tmsecure.common.TMSBootReceiver;

/**
 * @author
 */
public final class BootReceiver extends TMSBootReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        if (!DaoCreator.createConfigDao().isLicenseAgreed()) {
            return;
        }
        super.onReceive(context, intent);
    }

}
