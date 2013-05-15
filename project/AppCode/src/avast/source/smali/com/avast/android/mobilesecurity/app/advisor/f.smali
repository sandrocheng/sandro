.class Lcom/avast/android/mobilesecurity/app/advisor/f;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "AdvisorPagerFragment.java"


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 246
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/advisor/f;->b:Landroid/content/Context;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/f;->a:Ljava/util/List;

    .line 248
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/f;->a:Ljava/util/List;

    const-class v1, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorGroupsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v1, v2}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorGroupsFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 265
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/f;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/af;

    invoke-interface {v0}, Lcom/avast/android/generic/ui/af;->a_()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
