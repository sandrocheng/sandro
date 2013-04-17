.class final Lsp;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lso;


# direct methods
.method constructor <init>(Lso;)V
    .locals 0

    iput-object p1, p0, Lsp;->a:Lso;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lsp;->a:Lso;

    invoke-static {v0}, Lso;->b(Lso;)Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    move-result-object v0

    iget-object v1, p0, Lsp;->a:Lso;

    invoke-static {v1}, Lso;->a(Lso;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->closeProcess(Ljava/util/List;ZZ)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error when asynKillAheadProcess run, NameNotFoundException e: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
