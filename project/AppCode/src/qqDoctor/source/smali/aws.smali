.class final Laws;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lawj$b;


# direct methods
.method constructor <init>(Lawj$b;)V
    .locals 0

    iput-object p1, p0, Laws;->a:Lawj$b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Laws;->a:Lawj$b;

    iget-object v0, v0, Lawj$b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Laws;->a:Lawj$b;

    iget-object v1, v1, Lawj$b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Laws;->a:Lawj$b;

    invoke-static {v2}, Lawj$b;->a(Lawj$b;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v2, p0, Laws;->a:Lawj$b;

    invoke-static {v2}, Lawj$b;->a(Lawj$b;)Landroid/widget/ProgressBar;

    move-result-object v2

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
