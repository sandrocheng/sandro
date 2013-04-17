.class public interface abstract Lcom/tencent/lbsapi/QLBSNotification;
.super Ljava/lang/Object;


# static fields
.field public static final RESPONSE_HTTP_ERROR:I = -0x1

.field public static final RESPONSE_LBS_AUTH_FAIL:I = -0x5

.field public static final RESPONSE_LBS_EXCEPTION:I = -0x3

.field public static final RESPONSE_LBS_INPUT_ERROR:I = -0x6

.field public static final RESPONSE_LBS_POSITION_FAIL:I = -0x4

.field public static final RESPONSE_UNKNOWN_ERROR:I = -0x7

.field public static final RESPONSE_WUP_ERROR:I = -0x2

.field public static final RESULT_LOCATION_ERROR:I = 0x0

.field public static final RESULT_LOCATION_SUCCESS:I = 0x1


# virtual methods
.method public abstract onLocationNotification(I)V
.end method

.method public abstract onResponseError(IILjava/lang/String;)V
.end method

.method public abstract onResponseGetNearPoiList(ILcom/tencent/lbsapi/model/QLBSPoiInfoBatch;)V
.end method

.method public abstract onResponseGetPosition(ILcom/tencent/lbsapi/model/QLBSPosition;)V
.end method

.method public abstract onResponseSearchNearPoiList(ILcom/tencent/lbsapi/model/QLBSPoiInfoBatch;)V
.end method
