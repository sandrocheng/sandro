.class final Lorg/antivirus/ui/performance/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lorg/antivirus/ui/performance/k;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/performance/k;J)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/performance/l;->b:Lorg/antivirus/ui/performance/k;

    iput-wide p2, p0, Lorg/antivirus/ui/performance/l;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/ui/performance/l;->b:Lorg/antivirus/ui/performance/k;

    iget-object v0, v0, Lorg/antivirus/ui/performance/k;->b:Lorg/antivirus/ui/performance/j;

    iget-object v0, v0, Lorg/antivirus/ui/performance/j;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/antivirus/ui/performance/l;->b:Lorg/antivirus/ui/performance/k;

    iget-object v1, v1, Lorg/antivirus/ui/performance/k;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/antivirus/ui/performance/l;->b:Lorg/antivirus/ui/performance/k;

    iget-object v0, v0, Lorg/antivirus/ui/performance/k;->b:Lorg/antivirus/ui/performance/j;

    iget-object v0, v0, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    iget-wide v0, p0, Lorg/antivirus/ui/performance/l;->a:J

    invoke-static {}, Lorg/antivirus/ui/performance/TaskKiller;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/antivirus/ui/performance/l;->b:Lorg/antivirus/ui/performance/k;

    iget-object v2, v2, Lorg/antivirus/ui/performance/k;->b:Lorg/antivirus/ui/performance/j;

    iget-object v2, v2, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    invoke-static {v2}, Lorg/antivirus/ui/performance/TaskKiller;->c(Lorg/antivirus/ui/performance/TaskKiller;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/performance/l;->b:Lorg/antivirus/ui/performance/k;

    iget-object v0, v0, Lorg/antivirus/ui/performance/k;->b:Lorg/antivirus/ui/performance/j;

    iget-object v0, v0, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    invoke-virtual {v0}, Lorg/antivirus/ui/performance/TaskKiller;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09007a

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090086

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/antivirus/ui/performance/l;->a:J

    invoke-static {v2, v3}, Lorg/antivirus/ui/backup/apps/BackUpActivity;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/antivirus/ui/performance/l;->b:Lorg/antivirus/ui/performance/k;

    iget-object v0, v0, Lorg/antivirus/ui/performance/k;->b:Lorg/antivirus/ui/performance/j;

    iget-object v0, v0, Lorg/antivirus/ui/performance/j;->c:Lorg/antivirus/ui/performance/TaskKiller;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/antivirus/ui/performance/TaskKiller;->a(Lorg/antivirus/ui/performance/TaskKiller;J)J

    :cond_0
    return-void
.end method
