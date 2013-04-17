.class final Lbva;
.super Lbuh$a;


# instance fields
.field private synthetic g:Lbuo$b;


# direct methods
.method constructor <init>(Lbuo$b;)V
    .locals 0

    iput-object p1, p0, Lbva;->g:Lbuo$b;

    invoke-direct {p0}, Lbuh$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v1, p0, Lbva;->g:Lbuo$b;

    invoke-static {v1}, Lbuo$b;->k(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;->check(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    move-result-object v1

    iget v0, p0, Lbuh$a;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v0, v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iput-object v1, p0, Lbuh$a;->f:Ljava/lang/Object;

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v6, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v6}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    iget-object v0, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v1, p0, Lbuh$a;->f:Ljava/lang/Object;

    check-cast v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    iget-object v2, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iput-object v2, v6, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iget v2, p0, Lbuh$a;->e:I

    iput v2, v6, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    iget v2, p0, Lbuh$a;->b:I

    iput v2, v6, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    invoke-static {v1}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->shouldBeBlockedOrNot(Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iget-object v5, p0, Lbva;->g:Lbuo$b;

    invoke-static {v5}, Lbuo$b;->l(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lbva;->g:Lbuo$b;

    invoke-static {v5}, Lbuo$b;->l(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

    move-result-object v5

    invoke-interface {v5, v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;->handleCheckResult(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;Z)Z

    move-result v2

    move v5, v2

    :goto_1
    if-eqz v5, :cond_2

    iput-boolean v3, v6, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->isBlocked:Z

    iget-object v2, p0, Lbva;->g:Lbuo$b;

    invoke-static {v2}, Lbuo$b;->b(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v2

    iget-object v7, p0, Lbuh$a;->d:[Ljava/lang/Object;

    invoke-interface {v2, v7}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->blockSms([Ljava/lang/Object;)V

    iget-object v7, v6, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v8, p0, Lbva;->g:Lbuo$b;

    iget-object v2, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v9, p0, Lbva;->g:Lbuo$b;

    invoke-static {v9}, Lbuo$b;->c(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    move-result-object v9

    invoke-static {v8, v2, v9, v6}, Lbuo$b;->a(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ne v2, v3, :cond_0

    iget-object v2, v6, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v7, p0, Lbva;->g:Lbuo$b;

    invoke-static {v7, v0}, Lbuo$b;->a(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lbva;->g:Lbuo$b;

    iget-object v2, p0, Lbuh$a;->d:[Ljava/lang/Object;

    invoke-static {v2}, Lbuo$b;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, v6, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    iput-object v6, p0, Lbuh$a;->c:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    return-void

    :cond_1
    iget v2, v1, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    if-ne v2, v3, :cond_4

    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lbva;->g:Lbuo$b;

    invoke-static {v2}, Lbuo$b;->b(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v2

    iget-object v7, p0, Lbuh$a;->d:[Ljava/lang/Object;

    invoke-interface {v2, v0, v7}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->unBlockSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v5, v2

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_0
.end method
