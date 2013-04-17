.class public final Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;
.super Ljava/lang/Object;


# static fields
.field public static final ANIMATION_FULL:I = 0x2

.field public static final ANIMATION_NONE:I = 0x0

.field public static final ANIMATION_PARTIAL:I = 0x1

.field public static final ANIMATION_STATE_SETTINGS:[I = null

.field public static final OPERATION_CLOSE:B = 0x2t

.field public static final OPERATION_NONE:B = 0x0t

.field public static final OPERATION_OPEN:B = 0x1t


# instance fields
.field public mAirplaneModeStateOperation:B

.field public mAnimationState:I

.field public mAutoSyncStateOperation:B

.field public mBlueToothAutoCloseCondition:I

.field public mBlueToothAutoOpenCondition:I

.field public mBlueToothStateOperation:B

.field public mBrightness:I

.field public mHapticFeedbackStateOperation:B

.field public mMobileNetWorkAutoCloseCondition:I

.field public mMobileNetWorkAutoOpenCondition:I

.field public mMobileNetWorkScreenTime:I

.field public mMobileNetWorkStateOperation:B

.field public mScreenOffTime:I

.field public mVibrateStateOperation:B

.field public mWifiAutoCloseCondition:I

.field public mWifiAutoCloseScreenTime:I

.field public mWifiAutoOpenCondition:I

.field public mWifiLowSignalThreshold:I

.field public mWifiOverTimeDuration:I

.field public mWifiStateOperation:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v1, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xb

    aput v2, v0, v1

    sput-object v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->ANIMATION_STATE_SETTINGS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const v3, 0x927c0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBrightness:I

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mScreenOffTime:I

    iput v2, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAnimationState:I

    iput-byte v1, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiStateOperation:B

    iput-byte v1, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mMobileNetWorkStateOperation:B

    iput-byte v1, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothStateOperation:B

    iput-byte v1, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAirplaneModeStateOperation:B

    iput-byte v1, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mAutoSyncStateOperation:B

    iput-byte v1, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mVibrateStateOperation:B

    iput-byte v1, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mHapticFeedbackStateOperation:B

    iput v2, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiAutoCloseCondition:I

    iput v2, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiAutoOpenCondition:I

    const v0, 0x493e0

    iput v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiOverTimeDuration:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiLowSignalThreshold:I

    iput v3, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mWifiAutoCloseScreenTime:I

    iput v2, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mMobileNetWorkAutoCloseCondition:I

    iput v2, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mMobileNetWorkAutoOpenCondition:I

    iput v3, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mMobileNetWorkScreenTime:I

    iput v2, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    iput v2, p0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;->mBlueToothAutoOpenCondition:I

    return-void
.end method
