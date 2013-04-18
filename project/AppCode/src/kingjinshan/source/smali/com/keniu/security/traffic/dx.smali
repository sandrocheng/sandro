.class final Lcom/keniu/security/traffic/dx;
.super Landroid/os/Handler;
.source "TrafficXuanFuChuangStateReceiver.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 601
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 603
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->q(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Lcom/keniu/security/traffic/ClickableGridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/ClickableGridView;->setVisibility(I)V

    .line 607
    iget-object v1, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Ljava/util/Vector;)Ljava/util/Vector;

    .line 609
    iget-object v0, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->r(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b02a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 611
    iget-object v0, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->C(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/traffic/dy;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/dy;-><init>(Lcom/keniu/security/traffic/dx;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    iget-object v0, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->D(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->D(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->r(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->q(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Lcom/keniu/security/traffic/ClickableGridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/keniu/security/traffic/ClickableGridView;->setVisibility(I)V

    .line 641
    :cond_1
    :goto_0
    return-void

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->r(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->q(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Lcom/keniu/security/traffic/ClickableGridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/ClickableGridView;->setVisibility(I)V

    .line 633
    new-instance v0, Lcom/keniu/security/traffic/j;

    iget-object v1, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->D(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/traffic/j;-><init>(Ljava/util/Vector;Landroid/content/Context;)V

    .line 635
    iget-object v1, p0, Lcom/keniu/security/traffic/dx;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->q(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Lcom/keniu/security/traffic/ClickableGridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/ClickableGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
