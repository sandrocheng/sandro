.class public final Latl;
.super Lbft;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lbft;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljj;

    invoke-direct {v2}, Ljj;-><init>()V

    const-string v3, "module_file_safe"

    const-string v4, "privacy_secret_info"

    const-string v5, "Module=?"

    new-array v6, v0, [Ljava/lang/String;

    aput-object v3, v6, v1

    const-string v3, "Module ASC"

    invoke-virtual {v2, v4, v5, v6, v3}, Ljj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lmg;

    move-result-object v2

    invoke-virtual {v2}, Lmg;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Latl;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lmg;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Latl;->g:Ljava/lang/String;

    iget-object v2, p0, Latl;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Latl;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Latl;->f:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected final b()V
    .locals 3

    iget-object v0, p0, Latl;->b:Landroid/widget/TextView;

    iget-object v1, p0, Latl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0b0e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Latl;->b:Landroid/widget/TextView;

    iget-object v1, p0, Latl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected final c()V
    .locals 3

    invoke-super {p0}, Lbft;->c()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Latl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/filesafe/FileSafePrivacySafeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Latl;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Latl;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public final d()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "VerifyResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Latl;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Latl;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Lbft;->onCreate()V

    invoke-virtual {p0}, Latl;->b()V

    iget-boolean v0, p0, Latl;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Latl;->c:Landroid/widget/TextView;

    iget-object v1, p0, Latl;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0b0d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Latl;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final onOptionClick(I)V
    .locals 0

    invoke-super {p0, p1}, Lbft;->onOptionClick(I)V

    invoke-virtual {p0}, Latl;->c()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    invoke-super {p0, p1}, Lbft;->subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    iget-boolean v0, p0, Latl;->f:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020287

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    :cond_0
    return-void
.end method
