.class final Laso;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lasn;


# direct methods
.method constructor <init>(Lasn;)V
    .locals 0

    iput-object p1, p0, Laso;->a:Lasn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const-wide/16 v4, 0x1f4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Laso;->a:Lasn;

    iput v2, v0, Lasn;->e:I

    iget-object v0, p0, Laso;->a:Lasn;

    iget-object v0, v0, Lasn;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Laso;->a:Lasn;

    iget-object v1, v1, Lasn;->d:[I

    iget-object v2, p0, Laso;->a:Lasn;

    iget v2, v2, Lasn;->e:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Laso;->a:Lasn;

    iget-object v0, v0, Lasn;->f:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Laso;->a:Lasn;

    iget v1, v0, Lasn;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lasn;->e:I

    iget-object v0, p0, Laso;->a:Lasn;

    iget v0, v0, Lasn;->e:I

    iget-object v1, p0, Laso;->a:Lasn;

    iget-object v1, v1, Lasn;->d:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Laso;->a:Lasn;

    iput v2, v0, Lasn;->e:I

    :cond_0
    iget-object v0, p0, Laso;->a:Lasn;

    iget-object v0, v0, Lasn;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Laso;->a:Lasn;

    iget-object v1, v1, Lasn;->d:[I

    iget-object v2, p0, Laso;->a:Lasn;

    iget v2, v2, Lasn;->e:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Laso;->a:Lasn;

    iget-object v0, v0, Lasn;->f:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Laso;->a:Lasn;

    iget-object v0, v0, Lasn;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Laso;->a:Lasn;

    iget-object v0, v0, Lasn;->f:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Laso;->a:Lasn;

    iget-object v0, v0, Lasn;->f:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Laso;->a:Lasn;

    iput v2, v0, Lasn;->e:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
