.class final Lbrs;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lbrp;


# direct methods
.method constructor <init>(Lbrp;)V
    .locals 0

    iput-object p1, p0, Lbrs;->a:Lbrp;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lbrs;->a:Lbrp;

    invoke-static {v0}, Lbrp;->R(Lbrp;)Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbrs;->a:Lbrp;

    invoke-static {v0}, Lbrp;->ai(Lbrp;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lbrs;->a:Lbrp;

    invoke-static {v0}, Lbrp;->aj(Lbrp;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v0, p0, Lbrs;->a:Lbrp;

    invoke-static {v0}, Lbrp;->ak(Lbrp;)Landroid/content/Context;

    move-result-object v6

    const/4 v0, 0x0

    const-wide/32 v7, 0xea60

    cmp-long v7, v4, v7

    if-gez v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0b0433

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbrs;->a:Lbrp;

    iget-object v2, p0, Lbrs;->a:Lbrp;

    invoke-static {v2}, Lbrp;->al(Lbrp;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lbrp;->a(Lbrp;Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    :goto_1
    return-void

    :cond_1
    const-wide/32 v7, 0x36ee80

    cmp-long v7, v4, v7

    if-gez v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v7, 0xea60

    div-long v7, v4, v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v7, 0x7f0b0434

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v7, 0xea60

    rem-long v7, v4, v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/32 v7, 0xea60

    rem-long/2addr v4, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0b0433

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lbrs;->cancel()Z

    goto :goto_1
.end method
