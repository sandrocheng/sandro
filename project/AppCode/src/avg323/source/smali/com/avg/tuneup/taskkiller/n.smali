.class public Lcom/avg/tuneup/taskkiller/n;
.super Lcom/avg/ui/general/fragments/i;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/ui/general/fragments/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected F()I
    .locals 1

    sget v0, Lcom/avg/a/f;->tabs_fragment:I

    return v0
.end method

.method protected G()[Lcom/avg/ui/general/fragments/j;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avg/ui/general/fragments/j;

    const/4 v1, 0x0

    new-instance v2, Lcom/avg/ui/general/fragments/j;

    iget-object v3, p0, Lcom/avg/tuneup/taskkiller/n;->b:Ljava/lang/String;

    const-class v4, Lcom/avg/tuneup/taskkiller/d;

    invoke-direct {v2, v3, v4, v5}, Lcom/avg/ui/general/fragments/j;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/avg/ui/general/fragments/j;

    iget-object v3, p0, Lcom/avg/tuneup/taskkiller/n;->c:Ljava/lang/String;

    const-class v4, Lcom/avg/tuneup/taskkiller/a;

    invoke-direct {v2, v3, v4, v5}, Lcom/avg/ui/general/fragments/j;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/n;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->title_task_killer_Tasks:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/taskkiller/n;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/n;->ag:Lcom/avg/ui/general/a/a;

    sget v1, Lcom/avg/a/g;->title_task_killer_Processes:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/taskkiller/n;->c:Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Lcom/avg/ui/general/fragments/i;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/n;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/n;->ag:Lcom/avg/ui/general/a/a;

    sget v2, Lcom/avg/a/g;->title_task_killer_preference:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/avg/a/e;->fragment_title:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/avg/tuneup/taskkiller/n;->a(Ljava/lang/String;Landroid/view/View;I)V

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/n;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    invoke-virtual {v0}, Lcom/avg/ui/general/fragments/FragmentTabHost;->getCurrenTabFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/taskkiller/d;

    instance-of v1, v0, Lcom/avg/tuneup/taskkiller/a;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/avg/tuneup/taskkiller/d;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/n;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    invoke-virtual {v0}, Lcom/avg/ui/general/fragments/FragmentTabHost;->getCurrenTabFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/taskkiller/d;

    instance-of v1, v0, Lcom/avg/tuneup/taskkiller/a;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/avg/tuneup/taskkiller/d;->b(I)Z

    move-result v0

    goto :goto_0
.end method

.method public e(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/n;->a:Lcom/avg/ui/general/fragments/FragmentTabHost;

    invoke-virtual {v0}, Lcom/avg/ui/general/fragments/FragmentTabHost;->getCurrenTabFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/taskkiller/d;

    instance-of v1, v0, Lcom/avg/tuneup/taskkiller/a;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/avg/tuneup/taskkiller/d;->e(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
