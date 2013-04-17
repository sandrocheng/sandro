.class final Lbvt;
.super Lbuh$a;


# instance fields
.field private synthetic g:Lbvp$b;


# direct methods
.method constructor <init>(Lbvp$b;)V
    .locals 0

    iput-object p1, p0, Lbvt;->g:Lbvp$b;

    invoke-direct {p0}, Lbuh$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget v2, p0, Lbuh$a;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lbvt;->g:Lbvp$b;

    invoke-static {v2}, Lbvp$b;->a(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v2

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method final b()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lbuh$a;->d:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    :cond_0
    iget-object v0, p0, Lbvt;->g:Lbvp$b;

    iget-object v1, p0, Lbvt;->g:Lbvp$b;

    invoke-static {v1}, Lbvp$b;->b(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2, v5}, Lbvp$b;->a(Lbvp$b;Lbuh$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V

    return-void
.end method
