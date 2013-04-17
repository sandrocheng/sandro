.class public Lcom/tencent/feedback/common/Constants;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final CMD_KEY:Ljava/lang/String; = "cmd_key"

.field public static final C_BEGIN:B = 0x2t

.field public static final C_END:B = 0x3t

.field public static final C_VERSION:S = 0x1s

.field public static final FB_SERVICE_ACTION:Ljava/lang/String; = "com.tencent.mqq.wsd.fb.upservice"

.field public static IS_CORE_DEBUG:Z = false

.field public static IS_DEBUG:Z = false

.field public static IS_USETESTSERVER:Z = false

.field public static IS_ZHUANTEST:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "eup"

.field public static final MAXUPLOADSIZE:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_DEBUG:Z

    .line 7
    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_CORE_DEBUG:Z

    .line 9
    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_USETESTSERVER:Z

    .line 10
    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_ZHUANTEST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
