.class final Lto;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ltn;


# direct methods
.method constructor <init>(Ltn;)V
    .locals 0

    iput-object p1, p0, Lto;->a:Ltn;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lto;->a:Ltn;

    iget-object v0, v0, Ltn;->c:Lsy;

    iget-object v0, v0, Lsy;->e:Lki;

    iget-object v3, p0, Lto;->a:Ltn;

    iget-object v3, v3, Ltn;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lki;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky;

    iget-boolean v4, v0, Lky;->d:Z

    invoke-static {v0, v4}, Loo$a;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky;

    iput-object v4, v0, Lky;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lto;->a:Ltn;

    iget-object v2, v2, Ltn;->c:Lsy;

    iget-object v2, v2, Lsy;->a:Landroid/content/Context;

    if-eqz v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lto;->a:Ltn;

    iget-object v4, v4, Ltn;->c:Lsy;

    iget-object v4, v4, Lsy;->a:Landroid/content/Context;

    const v5, 0x7f0b0544

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lto;->a:Ltn;

    iget-object v3, v3, Ltn;->c:Lsy;

    iget-object v3, v3, Lsy;->a:Landroid/content/Context;

    const v4, 0x7f0b0545

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lto;->a:Ltn;

    iget-object v0, v0, Ltn;->b:Ldv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lto;->a:Ltn;

    iget-object v0, v0, Ltn;->b:Ldv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldv;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lto;->a:Ltn;

    iget-object v0, v0, Ltn;->c:Lsy;

    iget-object v0, v0, Lsy;->c:Lhi;

    invoke-virtual {v0, v3}, Lhi;->b(Ljava/util/List;)Z

    iget-object v0, p0, Lto;->a:Ltn;

    iget-object v0, v0, Ltn;->c:Lsy;

    iget-object v0, v0, Lsy;->e:Lki;

    iget-object v4, p0, Lto;->a:Ltn;

    iget-object v4, v4, Ltn;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lki;->d(Ljava/lang/String;)Z

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lto;->a:Ltn;

    iget-object v0, v0, Ltn;->c:Lsy;

    iget-object v0, v0, Lsy;->a:Landroid/content/Context;

    const v3, 0x7f0b0546

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
