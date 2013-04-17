.class final Lbvu;
.super Lbuh$a;


# instance fields
.field private synthetic g:Lbvp$b;


# direct methods
.method constructor <init>(Lbvp$b;)V
    .locals 0

    iput-object p1, p0, Lbvu;->g:Lbvp$b;

    invoke-direct {p0}, Lbuh$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget v2, p0, Lbuh$a;->b:I

    if-eq v2, v3, :cond_0

    iget v2, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lbvu;->g:Lbvp$b;

    invoke-static {v2}, Lbvp$b;->c(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

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
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lbvu;->g:Lbvp$b;

    iget-object v0, p0, Lbvu;->g:Lbvp$b;

    invoke-static {v0}, Lbvp$b;->d(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v3

    iget v0, p0, Lbuh$a;->b:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, p0, v3, v0, v1}, Lbvp$b;->a(Lbvp$b;Lbuh$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
