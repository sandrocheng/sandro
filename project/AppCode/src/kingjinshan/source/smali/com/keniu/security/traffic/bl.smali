.class final Lcom/keniu/security/traffic/bl;
.super Landroid/os/Handler;
.source "TrafficMainActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 455
    iget-object v0, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Lcom/keniu/security/traffic/TrafficMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 460
    :sswitch_0
    iget-object v0, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Lcom/keniu/security/traffic/TrafficMainActivity;Ljava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    .line 465
    iget-object v1, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v1}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/keniu/security/traffic/y;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/keniu/security/a;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->i(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    goto :goto_0

    .line 474
    :sswitch_1
    iget-object v0, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->j(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->k(Lcom/keniu/security/traffic/TrafficMainActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 478
    iget-object v1, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->k(Lcom/keniu/security/traffic/TrafficMainActivity;)I

    move-result v1

    const v2, 0x7f080304

    if-ne v1, v2, :cond_2

    .line 479
    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/traffic/y;->w:I

    .line 487
    :goto_1
    iget-object v1, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const v2, 0x7f0b03c4

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 489
    iget-object v0, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->j(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->k(Lcom/keniu/security/traffic/TrafficMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 480
    :cond_2
    iget-object v1, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->k(Lcom/keniu/security/traffic/TrafficMainActivity;)I

    move-result v1

    const v2, 0x7f080305

    if-ne v1, v2, :cond_3

    .line 481
    const/4 v1, 0x1

    iput v1, v0, Lcom/keniu/security/traffic/y;->w:I

    goto :goto_1

    .line 482
    :cond_3
    iget-object v1, p0, Lcom/keniu/security/traffic/bl;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->k(Lcom/keniu/security/traffic/TrafficMainActivity;)I

    move-result v1

    const v2, 0x7f080306

    if-ne v1, v2, :cond_4

    .line 483
    const/4 v1, 0x2

    iput v1, v0, Lcom/keniu/security/traffic/y;->w:I

    goto :goto_1

    .line 485
    :cond_4
    const/4 v1, 0x3

    iput v1, v0, Lcom/keniu/security/traffic/y;->w:I

    goto :goto_1

    .line 458
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x120 -> :sswitch_1
    .end sparse-switch
.end method
