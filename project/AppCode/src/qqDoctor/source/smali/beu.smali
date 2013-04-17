.class final Lbeu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lbet;


# direct methods
.method constructor <init>(Lbet;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbeu;->b:Lbet;

    iput-object p2, p0, Lbeu;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lbeu;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    const-class v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getHelperNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbeu;->b:Lbet;

    invoke-static {v1}, Lbet;->a(Lbet;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0835

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lbeu;->b:Lbet;

    invoke-static {v4}, Lbet;->b(Lbet;)Lho;

    move-result-object v4

    invoke-virtual {v4}, Lho;->bT()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbeu;->b:Lbet;

    invoke-static {v2}, Lbet;->c(Lbet;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lbeu;->b:Lbet;

    invoke-static {v0}, Lbet;->d(Lbet;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04e3

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lbeu;->b:Lbet;

    invoke-static {v1}, Lbet;->e(Lbet;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lbeu;->b:Lbet;

    invoke-static {v1}, Lbet;->f(Lbet;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lbeu;->b:Lbet;

    invoke-static {v0}, Lbet;->g(Lbet;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
