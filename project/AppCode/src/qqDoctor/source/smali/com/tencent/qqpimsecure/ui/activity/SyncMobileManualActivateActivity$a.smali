.class public final Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Lcy;

.field private f:Lcz;

.field private g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private h:I

.field private i:Ldf;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/os/Handler;

.field private synthetic n:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->n:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;

    const v0, 0x7f0300da

    invoke-direct {p0, p2, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->e:Lcy;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->f:Lcz;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->h:I

    new-instance v0, Laej;

    invoke-direct {v0, p0}, Laej;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->m:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b05f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b05e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    invoke-static {}, Lda;->b()Ljava/lang/String;

    invoke-static {}, Lda;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lda;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lda;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->n:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->n:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b05f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b05f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->j:Ljava/lang/String;

    invoke-static {v1}, Lda;->b(Ljava/lang/String;)V

    invoke-static {p2}, Lda;->c(Ljava/lang/String;)V

    :cond_0
    invoke-static {p3}, Lda;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->f:Lcz;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, p3, v2}, Lcz;->a(Ljava/lang/String;Ljava/lang/String;B)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->h:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->i:Ldf;

    if-nez v0, :cond_1

    new-instance v0, Ldf;

    invoke-direct {v0, p0}, Ldf;-><init>(Lcg;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->i:Ldf;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->i:Ldf;

    iget-object v1, v0, Ldf;->c:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, v0, Ldf;->d:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Ldf;->c:Landroid/os/Handler;

    iget-object v0, v0, Ldf;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0122

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    return-void
.end method

.method private b()V
    .locals 3

    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->h:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->i:Ldf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->i:Ldf;

    iget-object v1, v0, Ldf;->c:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldf;->d:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldf;->c:Landroid/os/Handler;

    iget-object v0, v0, Ldf;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0127

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->e:Lcy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->e:Lcy;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcy;->c:Z

    iget-object v1, v0, Lcy;->a:Ldl;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcy;->a:Ldl;

    iget-object v2, v1, Ldl;->e:Lorg/apache/http/client/HttpClient;

    if-eqz v2, :cond_0

    iget-object v2, v1, Ldl;->e:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    iget-object v2, v1, Ldl;->b:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    iget-object v2, v1, Ldl;->b:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    const/4 v2, 0x0

    iput-object v2, v1, Ldl;->b:Ljava/lang/Thread;

    :cond_1
    iget-object v1, v0, Lcy;->b:Landroid/os/Handler;

    const/16 v2, 0x3004

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcy;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;I)V
    .locals 2

    const v1, 0x7f0b05ef

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xce -> :sswitch_1
        0xd1 -> :sswitch_2
        0xff -> :sswitch_3
        0x194 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->h:I

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->h:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->h:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    const v3, 0x7f0b05f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->i:Ldf;

    if-nez v0, :cond_2

    new-instance v0, Ldf;

    invoke-direct {v0, p0}, Ldf;-><init>(Lcg;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->i:Ldf;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->i:Ldf;

    iget-object v1, v0, Ldf;->c:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldf;->d:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldf;->c:Landroid/os/Handler;

    iget-object v0, v0, Ldf;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->l:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->b()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->n:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;

    const v1, 0x7f0b05e7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v2, 0x7f0b0033

    new-instance v3, Laek;

    invoke-direct {v3, p0}, Laek;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->e:Lcy;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcy;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0802b1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreate()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f0802b1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f0802b3

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802b2

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a$a;

    invoke-direct {v2, p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x22

    invoke-virtual {v1, v2, v5, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->d:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->d:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v0, Lcz;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->m:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcz;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->f:Lcz;

    new-instance v0, Lcy;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->m:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcy;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->e:Lcy;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->n:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "intent_key_mobile_area_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->j:Ljava/lang/String;

    const-string v1, "intent_key_mobile_num"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->k:Ljava/lang/String;

    const-string v1, "intent_key_mobile_pwd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "DFG#$%^#%$RGHR(&*M<><"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, La;->a([B[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->l:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const v1, 0x7f0b05dd

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(I)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileManualActivateActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStop()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b014f

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
