.class public Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
.super Ljava/lang/Object;


# static fields
.field public static final STATE_DELETED:I = 0x4

.field public static final STATE_FAILED:I = 0x2

.field public static final STATE_FINISHED:I = 0x3

.field public static final STATE_PAUSED:I = 0x1

.field public static final STATE_PRE:I = -0x2

.field public static final STATE_RUNNING:I = 0x0

.field public static final STATE_WAITING:I = -0x1


# instance fields
.field public isOnChangeRetry:Z

.field public isSupportRange:Z

.field public isWaitingToPaused:Z

.field public mChangeUrl:Ljava/lang/String;

.field public mCurrentSize:J

.field public mErrorCode:I

.field public mErrorMsg:Ljava/lang/String;

.field public mErrorRssi:I

.field public mHostAddress:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mNetworkName:Ljava/lang/String;

.field public mNetworkType:LQQPIM/ConnectType;

.field public mParentPath:Ljava/lang/String;

.field public mProgress:F

.field public mRedirectUrl:Ljava/lang/String;

.field public mSize:J

.field public mSpeed:I

.field public mState:I

.field public mThread:Ljava/lang/Thread;

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    iput-boolean v2, p0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isWaitingToPaused:Z

    iput v2, p0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    sget-object v0, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mNetworkType:LQQPIM/ConnectType;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mNetworkName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isOnChangeRetry:Z

    return-void
.end method
