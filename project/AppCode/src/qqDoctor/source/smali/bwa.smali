.class final Lbwa;
.super Lbuh$a;


# instance fields
.field private synthetic g:Lbvp$b;


# direct methods
.method constructor <init>(Lbvp$b;)V
    .locals 0

    iput-object p1, p0, Lbwa;->g:Lbvp$b;

    invoke-direct {p0}, Lbuh$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 9

    const-wide/16 v7, 0x1f40

    const/4 v1, 0x0

    iget-object v0, p0, Lbuh$a;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    sub-long v4, v2, v4

    iget-object v6, p0, Lbwa;->g:Lbvp$b;

    invoke-static {v6}, Lbvp$b;->i(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v1, p0, Lbwa;->g:Lbvp$b;

    invoke-static {v1}, Lbvp$b;->i(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

    move-result-object v1

    invoke-interface {v1, v0, v4, v5}, Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;->isShortCall(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v4, p0, Lbwa;->g:Lbvp$b;

    invoke-static {v4}, Lbvp$b;->h(Lbvp$b;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lbuh$a;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    cmp-long v4, v4, v7

    if-gtz v4, :cond_1

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v7

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method final b()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v1, p0, Lbuh$a;->d:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    iget-object v0, p0, Lbwa;->g:Lbvp$b;

    invoke-static {v0}, Lbvp$b;->j(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->cancelMissCall()V

    iget-object v0, p0, Lbwa;->g:Lbvp$b;

    iget-object v1, p0, Lbwa;->g:Lbvp$b;

    invoke-static {v1}, Lbvp$b;->d(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2, v5}, Lbvp$b;->a(Lbvp$b;Lbuh$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V

    return-void
.end method
