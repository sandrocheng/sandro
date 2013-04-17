.class public final Lyj;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lho;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyj;->a:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lyj;->b:Lho;

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0}, Lpx;->a(Landroid/content/Context;)Lpx;

    move-result-object v0

    invoke-virtual {v0}, Lpx;->b()V

    invoke-static {}, Lpc;->b()Lpc;

    move-result-object v0

    invoke-virtual {v0}, Lpc;->e()V

    :cond_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/permission/PermissionControlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/SecureSpaceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Laai;->a()Laai;

    move-result-object v1

    invoke-virtual {v1}, Laai;->b()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/filesafe/FileSafeGridActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lyj;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lyj;->b:Lho;

    invoke-virtual {v2}, Lho;->cd()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lyj;->b:Lho;

    invoke-virtual {v3}, Lho;->cl()I

    move-result v3

    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    iget-object v2, p0, Lyj;->b:Lho;

    invoke-virtual {v2}, Lho;->cj()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lyj;->b:Lho;

    invoke-virtual {v0}, Lho;->cH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyj;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, La;->a(Landroid/content/Context;ILjava/lang/String;)V

    const/16 v0, 0x673c

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    :goto_1
    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyj;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacyPatternPasswordEnterActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2, p1, v5, p2}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v0, 0x673b

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lho;->a()Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->cd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lho;->n()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_5

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v0

    :goto_2
    if-nez v2, :cond_3

    if-eqz v4, :cond_6

    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v0

    :goto_3
    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    if-eqz v0, :cond_7

    iget-object v0, p0, Lyj;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacyPswGuideActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-static {v1, p1, v5, v2}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lyj;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/privacy/VerifyPrivacyPasswordActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, p1, v5, p2}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
