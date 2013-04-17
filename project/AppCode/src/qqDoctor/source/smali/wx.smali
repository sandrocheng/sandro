.class final Lwx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lwr;


# direct methods
.method constructor <init>(Lwr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwx;->c:Lwr;

    iput-object p2, p0, Lwx;->a:Ljava/lang/String;

    iput-object p3, p0, Lwx;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lwx;->c:Lwr;

    iget-object v1, p0, Lwx;->a:Ljava/lang/String;

    iget-object v2, p0, Lwx;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lwr;->b(Lwr;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    :cond_0
    const-string v0, "kfc"

    const-string v1, "doFlowAnalysis success, call doSuccess"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwx;->c:Lwr;

    invoke-static {v0}, Lwr;->q(Lwr;)V

    :goto_0
    return-void

    :cond_1
    const/16 v1, -0x22

    if-eq v1, v0, :cond_2

    const/16 v1, -0x29

    if-ne v1, v0, :cond_3

    :cond_2
    const-string v1, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doSmsAnalysis, failed, errCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lwx;->c:Lwr;

    invoke-static {v1, v0}, Lwr;->b(Lwr;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lwx;->c:Lwr;

    invoke-static {v1, v0}, Lwr;->c(Lwr;I)I

    const-string v1, "kfc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doFlowAnalysis failed, errCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kfc"

    const-string v1, "wait until time out..."

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
