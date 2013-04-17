.class public final Lahl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)V
    .locals 0

    iput-object p1, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->a(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)V

    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->c(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->d(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->a()V

    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lho;

    move-result-object v0

    invoke-virtual {v0, v2}, Lho;->C(Z)V

    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lft;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->finish()V

    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lho;

    move-result-object v0

    iput-boolean v3, v0, Lho;->b:Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->d(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->bJ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_2
    iget-object v1, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lho;

    move-result-object v1

    invoke-virtual {v1, v0}, Lho;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->e(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lho;

    move-result-object v0

    iput-boolean v3, v0, Lho;->b:Z

    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->finish()V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lahl;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0af4

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method
