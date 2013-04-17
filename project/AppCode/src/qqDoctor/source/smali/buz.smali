.class final Lbuz;
.super Lbuh$a;


# instance fields
.field private synthetic g:Lbuo$b;


# direct methods
.method constructor <init>(Lbuo$b;)V
    .locals 0

    iput-object p1, p0, Lbuz;->g:Lbuo$b;

    invoke-direct {p0}, Lbuh$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget v1, p0, Lbuh$a;->b:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lbuz;->g:Lbuo$b;

    invoke-static {v1}, Lbuo$b;->j(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lbuz;->g:Lbuo$b;

    invoke-static {v0, p0}, Lbuo$b;->a(Lbuo$b;Lbuh$a;)V

    return-void
.end method
