.class Lcom/antivirus/ui/callmessagefilter/fragment/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/i;

.field final synthetic b:Lcom/antivirus/ui/callmessagefilter/b/b;

.field final synthetic c:Z

.field final synthetic d:Lcom/antivirus/ui/callmessagefilter/fragment/v;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;Landroid/support/v4/app/i;Lcom/antivirus/ui/callmessagefilter/b/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->d:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->a:Landroid/support/v4/app/i;

    iput-object p3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    iput-boolean p4, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->a:Landroid/support/v4/app/i;

    invoke-static {v0}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v0

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/fragment/ae;->b:[I

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {v1}, Lcom/antivirus/ui/callmessagefilter/b/b;->d()Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v1

    check-cast v1, Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v1}, Lcom/antivirus/ui/callmessagefilter/b/d;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {v1}, Lcom/antivirus/ui/callmessagefilter/b/b;->e()J

    move-result-wide v1

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {v3}, Lcom/antivirus/ui/callmessagefilter/b/b;->d()Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v3

    check-cast v3, Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v3}, Lcom/antivirus/ui/callmessagefilter/b/d;->b()I

    move-result v3

    iget-object v4, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {v4}, Lcom/antivirus/ui/callmessagefilter/b/b;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {v5}, Lcom/antivirus/ui/callmessagefilter/b/b;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {v6}, Lcom/antivirus/ui/callmessagefilter/b/b;->i()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/antivirus/core/b/a/b;->a(JILjava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->a:Landroid/support/v4/app/i;

    new-instance v1, Lcom/antivirus/ui/callmessagefilter/fragment/ac;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/ac;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/ab;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->d:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-virtual {v1}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {v2}, Lcom/antivirus/ui/callmessagefilter/b/b;->e()J

    move-result-wide v2

    iget-object v4, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->d:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-virtual {v4}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v4

    const v5, 0x7f09015b

    invoke-static {v4, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->d:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-virtual {v5}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->h()Landroid/support/v4/app/i;

    move-result-object v5

    const v6, 0x7f09015c

    invoke-static {v5, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/antivirus/core/scanners/ad;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    const/4 v3, 0x0

    const/16 v4, 0x32

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/antivirus/ui/callmessagefilter/b/b;->a(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->c:Z

    if-eqz v1, :cond_0

    :pswitch_2
    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->d:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-virtual {v1}, Lcom/antivirus/ui/callmessagefilter/b/b;->d()Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v1

    check-cast v1, Lcom/antivirus/ui/callmessagefilter/b/d;

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->a:Landroid/support/v4/app/i;

    iget-object v4, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->b:Lcom/antivirus/ui/callmessagefilter/b/b;

    invoke-static {v2, v1, v3, v4, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/fragment/v;Lcom/antivirus/ui/callmessagefilter/b/d;Landroid/app/Activity;Lcom/antivirus/ui/callmessagefilter/b/b;Lcom/antivirus/core/b/a/b;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
