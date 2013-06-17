.class public Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;
.super Lcom/avg/ui/general/fragments/i;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/antivirus/ui/callmessagefilter/fragment/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/ui/general/fragments/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected F()I
    .locals 1

    const v0, 0x7f030040

    return v0
.end method

.method protected G()[Lcom/avg/ui/general/fragments/j;
    .locals 6

    const/4 v5, 0x0

    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->b:Ljava/lang/String;

    const v0, 0x7f0901e5

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->c:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avg/ui/general/fragments/j;

    const/4 v1, 0x0

    new-instance v2, Lcom/avg/ui/general/fragments/j;

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->b:Ljava/lang/String;

    const-class v4, Lcom/antivirus/ui/callmessagefilter/fragment/g;

    invoke-direct {v2, v3, v4, v5}, Lcom/avg/ui/general/fragments/j;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/avg/ui/general/fragments/j;

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->c:Ljava/lang/String;

    const-class v4, Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-direct {v2, v3, v4, v5}, Lcom/avg/ui/general/fragments/j;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public H()Lcom/antivirus/ui/callmessagefilter/fragment/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    invoke-virtual {v0}, Lcom/avg/ui/general/fragments/FragmentTabHost;->getCurrenTabFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/a;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/avg/ui/general/fragments/i;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0901dd

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080052

    invoke-virtual {p0, v1, v0, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->a(Ljava/lang/String;Landroid/view/View;I)V

    :cond_0
    return-object v0
.end method

.method public a()Lcom/antivirus/ui/callmessagefilter/fragment/n;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->d:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    invoke-virtual {v0}, Lcom/avg/ui/general/fragments/FragmentTabHost;->getCurrenTabFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/a;->b(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "tab host does not contain a current tab that is visible!"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/avg/ui/general/fragments/i;->d(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;->a:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->d:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "default_tab_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;

    sget-object v1, Lcom/antivirus/ui/callmessagefilter/fragment/m;->a:[I

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/n;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/fragments/FragmentTabHost;->setCurrentTab(I)V

    :goto_1
    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->d:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/fragments/FragmentTabHost;->setCurrentTab(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;->a:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->d:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "call_message_blocker"

    const-string v2, "call_message_blocker_call_tab_selected"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/antivirus/ui/callmessagefilter/fragment/n;->b:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->d:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/CallMessageTabFragment;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "call_message_blocker"

    const-string v2, "call_message_blocker_message_tab_selected"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
