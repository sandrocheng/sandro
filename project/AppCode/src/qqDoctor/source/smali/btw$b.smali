.class public final Lbtw$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:[[I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/tccdb/SmsChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    sput-object v0, Lbtw$b;->a:[[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtw$b;->b:Landroid/content/Context;

    iget-object v0, p0, Lbtw$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tccdb/SmsChecker;->getInstance(Landroid/content/Context;)Lcom/tencent/tccdb/SmsChecker;

    move-result-object v0

    iput-object v0, p0, Lbtw$b;->c:Lcom/tencent/tccdb/SmsChecker;

    return-void
.end method

.method private static a(Lcom/tencent/tccdb/MMatchSysResult;)I
    .locals 5

    const/4 v2, 0x4

    const/4 v1, 0x1

    iget v0, p0, Lcom/tencent/tccdb/MMatchSysResult;->finalAction:I

    if-lez v0, :cond_0

    if-le v0, v2, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-ne v0, v1, :cond_1

    iget v3, p0, Lcom/tencent/tccdb/MMatchSysResult;->actionReason:I

    if-eq v3, v1, :cond_3

    iget v3, p0, Lcom/tencent/tccdb/MMatchSysResult;->actionReason:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_3
    iget v0, p0, Lcom/tencent/tccdb/MMatchSysResult;->minusMark:I

    const/16 v3, 0xa

    if-gt v0, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final check(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    invoke-direct {v6}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;-><init>()V

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    :cond_0
    iput v5, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    :cond_1
    new-instance v0, Lcom/tencent/tccdb/MCheckInput;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    const/4 v3, 0x3

    sget-object v4, Lbtw$b;->a:[[I

    iget v7, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    aget-object v4, v4, v7

    aget v4, v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tccdb/MCheckInput;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v2, p0, Lbtw$b;->c:Lcom/tencent/tccdb/SmsChecker;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/tccdb/SmsChecker;->checkSmsSys(Lcom/tencent/tccdb/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/MMatchSysResult;

    iput-object v0, v6, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mInnterResult:Lcom/tencent/tccdb/MMatchSysResult;

    iget v1, v0, Lcom/tencent/tccdb/MMatchSysResult;->contentType:I

    iput v1, v6, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    invoke-static {v0}, Lbtw$b;->a(Lcom/tencent/tccdb/MMatchSysResult;)I

    move-result v0

    iput v0, v6, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ne v0, v8, :cond_2

    iput v8, v6, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    :cond_2
    return-object v6
.end method

.method public final isChartSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 10

    const/4 v3, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    if-ne v0, v9, :cond_4

    move v5, v6

    :goto_1
    new-instance v0, Lcom/tencent/tccdb/MCheckInput;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iget v4, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tccdb/MCheckInput;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v1, p0, Lbtw$b;->c:Lcom/tencent/tccdb/SmsChecker;

    invoke-virtual {v1, v0, v8}, Lcom/tencent/tccdb/SmsChecker;->checkChargeSms(Lcom/tencent/tccdb/MCheckInput;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/MMatchSysResult;

    invoke-static {v0}, Lbtw$b;->a(Lcom/tencent/tccdb/MMatchSysResult;)I

    move-result v0

    if-eq v0, v9, :cond_2

    if-ne v0, v3, :cond_0

    :cond_2
    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v0

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1
.end method
