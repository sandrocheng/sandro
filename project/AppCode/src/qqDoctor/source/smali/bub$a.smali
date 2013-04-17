.class final Lbub$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private synthetic d:Lbub;


# direct methods
.method public constructor <init>(Lbub;III)V
    .locals 0

    iput-object p1, p0, Lbub$a;->d:Lbub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lbub$a;->a:I

    iput p3, p0, Lbub$a;->b:I

    iput p4, p0, Lbub$a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    iget v0, p0, Lbub$a;->c:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lbub$a;->d:Lbub;

    invoke-static {v0}, Lbub;->a(Lbub;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget-object v1, p0, Lbub$a;->d:Lbub;

    invoke-static {v1}, Lbub;->a(Lbub;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    iget v2, p0, Lbub$a;->a:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lbub$a;->a:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lbub$a;->d:Lbub;

    invoke-static {v0}, Lbub;->a(Lbub;)Landroid/media/AudioManager;

    move-result-object v0

    iget v2, p0, Lbub$a;->a:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_0
    iget v0, p0, Lbub$a;->b:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lbub$a;->b:I

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lbub$a;->d:Lbub;

    invoke-static {v0}, Lbub;->a(Lbub;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lbub$a;->b:I

    invoke-virtual {v0, v4, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    :cond_1
    iget-object v0, p0, Lbub$a;->d:Lbub;

    invoke-static {v0}, Lbub;->b(Lbub;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
