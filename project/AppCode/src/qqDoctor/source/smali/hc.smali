.class final Lhc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:I

.field private synthetic e:I

.field private synthetic f:I

.field private synthetic g:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;IIII)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lhc;->a:I

    iput-object p2, p0, Lhc;->b:Landroid/content/Context;

    iput-object p3, p0, Lhc;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lhc;->d:I

    iput p5, p0, Lhc;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lhc;->f:I

    iput p7, p0, Lhc;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-class v1, Lha;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lhc;->a:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lhc;->b:Landroid/content/Context;

    iget-object v2, p0, Lhc;->c:Ljava/lang/String;

    iget v3, p0, Lhc;->d:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    :goto_0
    iget v2, p0, Lhc;->e:I

    iget v3, p0, Lhc;->f:I

    iget v4, p0, Lhc;->g:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lhc;->b:Landroid/content/Context;

    iget v2, p0, Lhc;->a:I

    iget v3, p0, Lhc;->d:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
