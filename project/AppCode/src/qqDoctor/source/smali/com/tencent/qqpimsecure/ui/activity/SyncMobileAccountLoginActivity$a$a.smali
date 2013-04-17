.class final Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private synthetic b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;I)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;->a:I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/high16 v3, 0x400

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->q(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->r(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;->finish()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->s(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->t(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0802ae
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
