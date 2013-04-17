.class public final Lahf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;)V
    .locals 0

    iput-object p1, p0, Lahf;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lahf;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;->i(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;)Lmw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahf;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;->i(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;)Lmw;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmw;->e:Z

    :cond_0
    iget-object v0, p0, Lahf;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;->j(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lahf;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;->j(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_1
    return-void
.end method
