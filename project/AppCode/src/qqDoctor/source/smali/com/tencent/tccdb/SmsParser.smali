.class public Lcom/tencent/tccdb/SmsParser;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sms_parser_libname"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lk;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumberEntrance(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Lcom/tencent/tccdb/MatchRule;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/tccdb/SmsInfo;",
            "Lcom/tencent/tccdb/MatchRule;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tccdb/Ret;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/tccdb/SmsParser;->nativeGetNumberEntrance(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Lcom/tencent/tccdb/MatchRule;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public static getWrongSmsType(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/tccdb/SmsInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tccdb/Ret;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/tencent/tccdb/SmsParser;->nativeGetWrongSmsType(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method private static native nativeGetNumberEntrance(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Lcom/tencent/tccdb/MatchRule;Ljava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/tccdb/SmsInfo;",
            "Lcom/tencent/tccdb/MatchRule;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tccdb/Ret;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native nativeGetWrongSmsType(Landroid/content/Context;Lcom/tencent/tccdb/SmsInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/tccdb/SmsInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tccdb/Ret;",
            ">;)I"
        }
    .end annotation
.end method
