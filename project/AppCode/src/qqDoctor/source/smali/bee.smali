.class final Lbee;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbed;


# direct methods
.method constructor <init>(Lbed;)V
    .locals 0

    iput-object p1, p0, Lbee;->a:Lbed;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbee;->a:Lbed;

    invoke-static {v0}, Lbed;->a(Lbed;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbee;->a:Lbed;

    invoke-static {v0}, Lbed;->b(Lbed;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0, v1}, Lho;->z(Z)V

    invoke-virtual {v0, v1}, Lho;->d(Z)V

    invoke-static {v1}, Lxi;->a(Z)V

    iget-object v0, p0, Lbee;->a:Lbed;

    invoke-virtual {v0}, Lbed;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lakk;

    invoke-virtual {v0, v1}, Lakk;->a(Z)V

    iget-object v0, p0, Lbee;->a:Lbed;

    invoke-virtual {v0}, Lbed;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
