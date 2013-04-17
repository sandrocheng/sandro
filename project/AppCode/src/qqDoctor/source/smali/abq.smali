.class final Labq;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Labp;


# direct methods
.method constructor <init>(Labp;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Labq;->a:Labp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Labq;->a:Labp;

    invoke-static {v0}, Labp;->b(Labp;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Labq;->a:Labp;

    invoke-static {v2}, Labp;->a(Labp;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0880

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Labq;->a:Labp;

    iget-object v4, v4, Labp;->c:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labq;->a:Labp;

    iget-object v3, v3, Labp;->e:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    iget-object v3, p0, Labq;->a:Labp;

    invoke-static {v3}, Labp;->c(Labp;)Lho;

    move-result-object v3

    invoke-virtual {v3}, Lho;->bL()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Labq;->a:Labp;

    iget-object v0, v0, Labp;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Labq;->a:Labp;

    iget-object v0, v0, Labp;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    iget-object v0, p0, Labq;->a:Labp;

    invoke-static {v0}, Labp;->a(Labp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Labq;->a:Labp;

    invoke-static {v0}, Labp;->d(Labp;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Labq;->a:Labp;

    invoke-static {v2}, Labp;->a(Labp;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Labq;->a:Labp;

    invoke-static {v3}, Labp;->a(Labp;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0881

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Labq;->a:Labp;

    invoke-static {v2}, Labp;->c(Labp;)Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->bM()I

    move-result v2

    if-ne v2, v1, :cond_0

    sput-boolean v0, Labp;->d:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
