.class public final Lahm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)V
    .locals 0

    iput-object p1, p0, Lahm;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lahm;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lft;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lahm;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    const v1, 0x7f0b07f5

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lahm;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->d(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getHelperNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lahm;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->bE()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lahm;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->d(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setHelperNumber(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lxn;

    iget-object v1, p0, Lahm;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-direct {v0, v1}, Lxn;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lxn;->a(I)V

    goto :goto_0
.end method
