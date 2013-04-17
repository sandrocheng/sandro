.class public final Lahc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;)V
    .locals 0

    iput-object p1, p0, Lahc;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lahc;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;->d(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extra_url"

    const-string v2, "http://aq.qq.com/lost_pwd?lang=zh_cn&login_type=normal&source_id=2369"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lahc;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;->e(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
