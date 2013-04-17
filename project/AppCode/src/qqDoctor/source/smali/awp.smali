.class final Lawp;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lawj$a;


# direct methods
.method constructor <init>(Lawj$a;)V
    .locals 0

    iput-object p1, p0, Lawp;->a:Lawj$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lawp;->a:Lawj$a;

    iget-object v0, v0, Lawj$a;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lawp;->a:Lawj$a;

    iget-object v0, v0, Lawj$a;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawp;->a:Lawj$a;

    iget-object v0, v0, Lawj$a;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
