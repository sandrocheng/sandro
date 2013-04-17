.class public final Lag;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lr;

.field public final b:Lap;

.field public c:Ly;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    iput-object v0, p0, Lag;->a:Lr;

    invoke-static {}, Lap;->a()Lap;

    move-result-object v0

    iput-object v0, p0, Lag;->b:Lap;

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v0

    iput-object v0, p0, Lag;->c:Ly;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILbf;)V
    .locals 9

    const/4 v8, 0x2

    const/16 v6, 0x19

    const/high16 v7, 0x7f04

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    iget-object v0, p0, Lag;->a:Lr;

    invoke-virtual {v0}, Lr;->c()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v0

    invoke-static {}, Lap;->a()Lap;

    move-result-object v3

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v4

    invoke-virtual {v3}, Lap;->b()Z

    move-result v5

    invoke-virtual {v0, v5}, Ly;->h(Z)V

    invoke-virtual {v3}, Lap;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Ly;->i(Z)V

    invoke-virtual {v4}, Lr;->i()Z

    move-result v3

    invoke-virtual {v0, v3}, Ly;->k(Z)V

    invoke-virtual {v4}, Lr;->k()Z

    move-result v3

    invoke-virtual {v0, v3}, Ly;->j(Z)V

    :cond_0
    if-eq p2, v8, :cond_1

    iget-object v0, p0, Lag;->a:Lr;

    invoke-virtual {v0}, Lr;->c()I

    move-result v0

    if-ne v0, v8, :cond_1

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v0

    invoke-static {}, Lap;->a()Lap;

    move-result-object v3

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v4

    invoke-virtual {v3}, Lap;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Ly;->l(Z)V

    invoke-virtual {v4}, Lr;->k()Z

    move-result v3

    invoke-virtual {v0, v3}, Ly;->m(Z)V

    :cond_1
    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lag;->a:Lr;

    invoke-virtual {v0}, Lr;->c()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v0

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v3

    invoke-virtual {v3}, Lr;->k()Z

    move-result v3

    invoke-virtual {v0, v3}, Ly;->n(Z)V

    :cond_2
    packed-switch p2, :pswitch_data_0

    if-eqz p3, :cond_3

    iget v0, p3, Lbf;->c:I

    if-gtz v0, :cond_17

    invoke-static {}, Laq;->a()Laq;

    move-result-object v0

    invoke-virtual {v0}, Laq;->e()V

    :goto_0
    iget-object v0, p0, Lag;->a:Lr;

    iget v3, p3, Lbf;->d:I

    invoke-virtual {v0, v3}, Lr;->c(I)V

    iget-object v0, p0, Lag;->b:Lap;

    iget-boolean v3, p3, Lbf;->f:Z

    invoke-virtual {v0, v3}, Lap;->a(Z)Z

    iget-object v0, p0, Lag;->b:Lap;

    iget-boolean v3, p3, Lbf;->g:Z

    invoke-virtual {v0, v3}, Lap;->b(Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lag;->a:Lr;

    iget v3, p3, Lbf;->e:I

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lr;->e(I)V

    iget-object v0, p0, Lag;->a:Lr;

    iget-boolean v3, p3, Lbf;->k:Z

    invoke-virtual {v0, v3}, Lr;->b(Z)V

    iget-object v0, p0, Lag;->a:Lr;

    iget-boolean v3, p3, Lbf;->j:Z

    invoke-virtual {v0, v3}, Lr;->c(Z)V

    iget-object v0, p0, Lag;->a:Lr;

    iget-boolean v0, p3, Lbf;->i:Z

    invoke-static {v0}, Lr;->d(Z)V

    iget v0, p3, Lbf;->l:I

    if-ne v0, v8, :cond_18

    iget-object v0, p0, Lag;->a:Lr;

    invoke-virtual {v0, v1}, Lr;->a(Z)V

    move v0, v1

    :goto_1
    iget-boolean v3, p3, Lbf;->h:Z

    if-eqz v3, :cond_19

    invoke-static {}, Lah;->a()Lah;

    move-result-object v3

    invoke-virtual {v3}, Lah;->c()V

    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-string v3, "action.mode.status.changed"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "extra_wifi_status"

    iget-boolean v3, p3, Lbf;->f:Z

    if-eqz v3, :cond_1a

    move v3, v1

    :goto_3
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "extra_gprs_status"

    iget-boolean v3, p3, Lbf;->g:Z

    if-eqz v3, :cond_1b

    move v3, v1

    :goto_4
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "extra_vibrate"

    iget-boolean v5, p3, Lbf;->j:Z

    if-eqz v5, :cond_1c

    :goto_5
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_flight_status"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_screen_light"

    iget v1, p3, Lbf;->c:I

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    iget-object v0, p3, Lbf;->b:Ljava/lang/String;

    const v1, 0xc355

    invoke-static {v1}, Lab;->a(I)V

    :goto_6
    iget-object v1, p0, Lag;->a:Lr;

    invoke-virtual {v1, p2}, Lr;->a(I)V

    iget-object v1, p0, Lag;->a:Lr;

    invoke-virtual {v1, v0}, Lr;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060016

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lp;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Laf;->b()V

    invoke-static {}, Laf;->a()Laf;

    move-result-object v0

    invoke-virtual {v0}, Laf;->c()D

    move-result-wide v0

    invoke-static {}, Lbo;->a()Lbo;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lbo;->a(D)V

    return-void

    :pswitch_0
    invoke-static {}, Laq;->a()Laq;

    move-result-object v0

    invoke-virtual {v0}, Laq;->e()V

    iget-object v0, p0, Lag;->a:Lr;

    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Lr;->c(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lag;->a:Lr;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lr;->e(I)V

    iget-object v0, p0, Lag;->a:Lr;

    invoke-static {v2}, Lr;->d(Z)V

    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->b()V

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v3

    invoke-static {}, Lap;->a()Lap;

    move-result-object v4

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v5

    invoke-virtual {v3}, Ly;->n()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {v3}, Ly;->n()I

    move-result v0

    if-lez v0, :cond_8

    move v0, v1

    :goto_7
    invoke-virtual {v4, v0}, Lap;->a(Z)Z

    :cond_4
    invoke-virtual {v3}, Ly;->o()I

    move-result v0

    if-ltz v0, :cond_5

    invoke-virtual {v3}, Ly;->o()I

    move-result v0

    if-lez v0, :cond_9

    move v0, v1

    :goto_8
    invoke-virtual {v4, v0}, Lap;->b(Z)Z

    :cond_5
    invoke-virtual {v3}, Ly;->q()I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {v3}, Ly;->q()I

    move-result v0

    if-lez v0, :cond_a

    move v0, v1

    :goto_9
    invoke-virtual {v5, v0}, Lr;->b(Z)V

    :cond_6
    invoke-virtual {v3}, Ly;->p()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-virtual {v3}, Ly;->p()I

    move-result v0

    if-lez v0, :cond_b

    :goto_a
    invoke-virtual {v5, v1}, Lr;->c(Z)V

    :cond_7
    iget-object v0, p0, Lag;->a:Lr;

    invoke-virtual {v0, v2}, Lr;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.mode.status.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_wifi_status"

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v3

    invoke-virtual {v3}, Ly;->n()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_gprs_status"

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v3

    invoke-virtual {v3}, Ly;->o()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_vibrate"

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v3

    invoke-virtual {v3}, Ly;->p()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_flight_status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_screen_light"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Ls;->b:Ljava/lang/String;

    const v1, 0xc352

    invoke-static {v1}, Lab;->a(I)V

    goto/16 :goto_6

    :cond_8
    move v0, v2

    goto :goto_7

    :cond_9
    move v0, v2

    goto :goto_8

    :cond_a
    move v0, v2

    goto :goto_9

    :cond_b
    move v1, v2

    goto :goto_a

    :pswitch_1
    invoke-static {}, Laq;->a()Laq;

    move-result-object v0

    invoke-virtual {v0}, Laq;->d()V

    invoke-static {}, Laq;->a()Laq;

    move-result-object v0

    invoke-virtual {v0, v6, p1}, Laq;->a(ILandroid/content/Context;)V

    iget-object v0, p0, Lag;->a:Lr;

    const/16 v3, 0x3a98

    invoke-virtual {v0, v3}, Lr;->c(I)V

    iget-object v0, p0, Lag;->b:Lap;

    invoke-virtual {v0, v2}, Lap;->a(Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lag;->a:Lr;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lr;->e(I)V

    iget-object v0, p0, Lag;->a:Lr;

    invoke-virtual {v0, v2}, Lr;->b(Z)V

    iget-object v0, p0, Lag;->a:Lr;

    invoke-static {v2}, Lr;->d(Z)V

    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->b()V

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v3

    invoke-static {}, Lap;->a()Lap;

    move-result-object v4

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v5

    invoke-virtual {v3}, Ly;->r()I

    move-result v0

    if-ltz v0, :cond_c

    invoke-virtual {v3}, Ly;->r()I

    move-result v0

    if-lez v0, :cond_e

    move v0, v1

    :goto_b
    invoke-virtual {v4, v0}, Lap;->b(Z)Z

    :cond_c
    invoke-virtual {v3}, Ly;->t()I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {v3}, Ly;->t()I

    move-result v0

    if-lez v0, :cond_f

    :goto_c
    invoke-virtual {v5, v1}, Lr;->c(Z)V

    :cond_d
    iget-object v0, p0, Lag;->a:Lr;

    invoke-virtual {v0, v2}, Lr;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.mode.status.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_wifi_status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_gprs_status"

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v3

    invoke-virtual {v3}, Ly;->r()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_vibrate"

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v3

    invoke-virtual {v3}, Ly;->t()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_flight_status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_screen_light"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Ls;->c:Ljava/lang/String;

    const v1, 0xc353

    invoke-static {v1}, Lab;->a(I)V

    goto/16 :goto_6

    :cond_e
    move v0, v2

    goto :goto_b

    :cond_f
    move v1, v2

    goto :goto_c

    :pswitch_2
    invoke-static {}, Laq;->a()Laq;

    move-result-object v0

    invoke-virtual {v0}, Laq;->d()V

    invoke-static {}, Laq;->a()Laq;

    move-result-object v0

    invoke-virtual {v0, v6, p1}, Laq;->a(ILandroid/content/Context;)V

    iget-object v0, p0, Lag;->a:Lr;

    const/16 v3, 0x3a98

    invoke-virtual {v0, v3}, Lr;->c(I)V

    iget-object v0, p0, Lag;->b:Lap;

    invoke-virtual {v0, v2}, Lap;->a(Z)Z

    iget-object v0, p0, Lag;->b:Lap;

    invoke-virtual {v0, v2}, Lap;->b(Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lag;->a:Lr;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lr;->e(I)V

    iget-object v0, p0, Lag;->a:Lr;

    invoke-virtual {v0, v2}, Lr;->b(Z)V

    iget-object v0, p0, Lag;->a:Lr;

    invoke-static {v2}, Lr;->d(Z)V

    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->b()V

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v0

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v3

    invoke-virtual {v0}, Ly;->t()I

    move-result v4

    if-ltz v4, :cond_10

    invoke-virtual {v0}, Ly;->s()I

    move-result v0

    if-lez v0, :cond_11

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Lr;->c(Z)V

    :cond_10
    iget-object v0, p0, Lag;->a:Lr;

    invoke-virtual {v0, v1}, Lr;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "action.mode.status.changed"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra_wifi_status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "extra_gprs_status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "extra_flight_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_vibrate"

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v2

    invoke-virtual {v2}, Ly;->s()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_screen_light"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Ls;->d:Ljava/lang/String;

    const v1, 0xc354

    invoke-static {v1}, Lab;->a(I)V

    goto/16 :goto_6

    :cond_11
    move v0, v2

    goto :goto_d

    :pswitch_3
    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v3

    invoke-static {}, Lap;->a()Lap;

    move-result-object v0

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v4

    invoke-virtual {v3}, Ly;->e()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_12

    invoke-static {}, Laq;->a()Laq;

    move-result-object v5

    invoke-virtual {v5}, Laq;->e()V

    :goto_e
    invoke-virtual {v3}, Ly;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Lr;->c(I)V

    invoke-virtual {v3}, Ly;->c()Z

    move-result v5

    invoke-virtual {v0, v5}, Lap;->a(Z)Z

    invoke-virtual {v3}, Ly;->d()Z

    move-result v5

    invoke-virtual {v0, v5}, Lap;->b(Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ly;->g()I

    move-result v5

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lr;->e(I)V

    invoke-virtual {v3}, Ly;->j()Z

    move-result v0

    invoke-virtual {v4, v0}, Lr;->b(Z)V

    invoke-virtual {v3}, Ly;->h()Z

    move-result v0

    invoke-virtual {v4, v0}, Lr;->c(Z)V

    invoke-virtual {v3}, Ly;->i()Z

    move-result v0

    invoke-static {v0}, Lr;->d(Z)V

    invoke-virtual {v3}, Ly;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->c()V

    :goto_f
    invoke-virtual {v3}, Ly;->m()Z

    move-result v5

    invoke-virtual {v4, v5}, Lr;->a(Z)V

    new-instance v4, Landroid/content/Intent;

    const-string v0, "action.mode.status.changed"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "extra_wifi_status"

    invoke-virtual {v3}, Ly;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_10
    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "extra_gprs_status"

    invoke-virtual {v3}, Ly;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_11
    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "extra_vibrate"

    invoke-virtual {v3}, Ly;->h()Z

    move-result v6

    if-eqz v6, :cond_16

    :goto_12
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "extra_flight_status"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_screen_light"

    invoke-virtual {v3}, Ly;->e()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Ls;->a:Ljava/lang/String;

    goto/16 :goto_6

    :cond_12
    invoke-static {}, Laq;->a()Laq;

    move-result-object v6

    invoke-virtual {v6}, Laq;->d()V

    invoke-static {}, Laq;->a()Laq;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Laq;->a(ILandroid/content/Context;)V

    goto/16 :goto_e

    :cond_13
    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->b()V

    goto :goto_f

    :cond_14
    move v0, v2

    goto :goto_10

    :cond_15
    move v0, v2

    goto :goto_11

    :cond_16
    move v1, v2

    goto :goto_12

    :cond_17
    invoke-static {}, Laq;->a()Laq;

    move-result-object v0

    invoke-virtual {v0}, Laq;->d()V

    invoke-static {}, Laq;->a()Laq;

    move-result-object v0

    iget v3, p3, Lbf;->c:I

    invoke-virtual {v0, v3, p1}, Laq;->a(ILandroid/content/Context;)V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lag;->a:Lr;

    invoke-virtual {v0, v2}, Lr;->a(Z)V

    move v0, v2

    goto/16 :goto_1

    :cond_19
    invoke-static {}, Lah;->a()Lah;

    move-result-object v3

    invoke-virtual {v3}, Lah;->b()V

    goto/16 :goto_2

    :cond_1a
    move v3, v2

    goto/16 :goto_3

    :cond_1b
    move v3, v2

    goto/16 :goto_4

    :cond_1c
    move v1, v2

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
