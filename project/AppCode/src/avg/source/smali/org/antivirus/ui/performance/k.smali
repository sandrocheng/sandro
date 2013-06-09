.class final Lorg/antivirus/ui/performance/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lorg/antivirus/ui/performance/j;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/performance/j;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/performance/k;->b:Lorg/antivirus/ui/performance/j;

    iput-object p2, p0, Lorg/antivirus/ui/performance/k;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/performance/o;

    :try_start_0
    iget-object v1, p0, Lorg/antivirus/ui/performance/k;->b:Lorg/antivirus/ui/performance/j;

    iget-object v1, v1, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lorg/antivirus/ui/performance/TaskKiller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v0, v0, Lorg/antivirus/ui/performance/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lorg/antivirus/ui/performance/k;->b:Lorg/antivirus/ui/performance/j;

    iget-object v0, v0, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    invoke-static {v0}, Lorg/antivirus/ui/performance/TaskKiller;->b(Lorg/antivirus/ui/performance/TaskKiller;)Lorg/antivirus/ui/performance/p;

    invoke-static {}, Lorg/antivirus/ui/performance/p;->a()J

    move-result-wide v0

    iget-object v2, p0, Lorg/antivirus/ui/performance/k;->b:Lorg/antivirus/ui/performance/j;

    iget-object v2, v2, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    new-instance v3, Lorg/antivirus/ui/performance/l;

    invoke-direct {v3, p0, v0, v1}, Lorg/antivirus/ui/performance/l;-><init>(Lorg/antivirus/ui/performance/k;J)V

    invoke-virtual {v2, v3}, Lorg/antivirus/ui/performance/TaskKiller;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "could not restart package"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
