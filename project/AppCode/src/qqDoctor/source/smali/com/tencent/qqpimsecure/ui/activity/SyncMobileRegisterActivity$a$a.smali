.class final Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a$a;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private synthetic b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const v0, 0x7f0802b7

    iput v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a$a;->a:I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a$a;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a$a;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;->n(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileRegisterActivity$a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0802b7
        :pswitch_0
    .end packed-switch
.end method
