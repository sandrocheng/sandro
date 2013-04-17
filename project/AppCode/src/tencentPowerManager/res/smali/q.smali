.class final Lq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput p1, p0, Lq;->a:I

    iput-object p2, p0, Lq;->b:Landroid/content/Context;

    iput-object p3, p0, Lq;->c:Ljava/lang/String;

    iput p4, p0, Lq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v2, -0x1

    const-class v1, Lp;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lp;->a()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lq;->a:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lq;->b:Landroid/content/Context;

    iget-object v2, p0, Lq;->c:Ljava/lang/String;

    iget v3, p0, Lq;->d:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lp;->a(Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_0
    invoke-static {}, Lp;->a()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lq;->b:Landroid/content/Context;

    iget v2, p0, Lq;->a:I

    iget v3, p0, Lq;->d:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lp;->a(Landroid/widget/Toast;)Landroid/widget/Toast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget v0, p0, Lq;->a:I

    if-ne v0, v2, :cond_2

    invoke-static {}, Lp;->a()Landroid/widget/Toast;

    move-result-object v0

    iget-object v2, p0, Lq;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Lp;->a()Landroid/widget/Toast;

    move-result-object v0

    iget v2, p0, Lq;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lp;->a()Landroid/widget/Toast;

    move-result-object v0

    iget v2, p0, Lq;->a:I

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
