.class final Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a$a;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private synthetic b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const v0, 0x7f0802b2

    iput v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a$a;->a:I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a$a;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x8

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a$a;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a$a;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0802b2
        :pswitch_0
    .end packed-switch
.end method
