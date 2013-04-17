.class final Lbuq;
.super Lbuh$a;


# instance fields
.field private synthetic g:Lbuo$b;


# direct methods
.method constructor <init>(Lbuo$b;)V
    .locals 0

    iput-object p1, p0, Lbuq;->g:Lbuo$b;

    invoke-direct {p0}, Lbuh$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 2

    iget v0, p0, Lbuh$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbuq;->g:Lbuo$b;

    invoke-static {v0}, Lbuo$b;->a(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbuq;->g:Lbuo$b;

    invoke-static {v0}, Lbuo$b;->a(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;

    move-result-object v1

    iget-object v0, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;->isMatch(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    new-instance v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    iget-object v1, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iput-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iget v1, p0, Lbuh$a;->e:I

    iput v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    iget v1, p0, Lbuh$a;->b:I

    iput v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lbuq;->g:Lbuo$b;

    iget-object v4, p0, Lbuh$a;->d:[Ljava/lang/Object;

    invoke-static {v4}, Lbuo$b;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lbuq;->g:Lbuo$b;

    invoke-static {v3}, Lbuo$b;->a(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;->isBlocked(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v5

    iput-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    iget-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v5, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->isBlocked:Z

    iget-object v1, p0, Lbuq;->g:Lbuo$b;

    invoke-static {v1}, Lbuo$b;->b(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v1

    iget-object v3, p0, Lbuh$a;->d:[Ljava/lang/Object;

    invoke-interface {v1, v3}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->blockSms([Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v3, p0, Lbuq;->g:Lbuo$b;

    iget-object v4, p0, Lbuq;->g:Lbuo$b;

    invoke-static {v4}, Lbuo$b;->c(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    move-result-object v4

    invoke-static {v3, v0, v4, v2}, Lbuo$b;->a(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ne v1, v5, :cond_0

    iget-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v3, p0, Lbuq;->g:Lbuo$b;

    invoke-static {v3, v0}, Lbuo$b;->a(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iput-object v2, p0, Lbuh$a;->c:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    return-void

    :cond_1
    iget-object v1, p0, Lbuq;->g:Lbuo$b;

    invoke-static {v1}, Lbuo$b;->b(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v1

    iget-object v3, p0, Lbuh$a;->d:[Ljava/lang/Object;

    invoke-interface {v1, v0, v3}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->unBlockSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    goto :goto_0
.end method
