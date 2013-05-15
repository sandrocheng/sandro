.class public Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "AdvisorAppsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/app/advisor/a;

.field private b:Landroid/net/Uri;

.field private c:Landroid/view/View;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 142
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/support/v4/app/FragmentBreadCrumbs;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->c:Landroid/view/View;

    invoke-super {p0, v0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->a(Landroid/view/View;)Landroid/support/v4/app/FragmentBreadCrumbs;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    invoke-static {p1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->b:Landroid/net/Uri;

    .line 99
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvisorAppsFragment.reloadFromArguments() - mAppsUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f070031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 105
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvisorAppsFragment.onLoadFinished() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->a:Lcom/avast/android/mobilesecurity/app/advisor/a;

    invoke-virtual {v0, p2}, Lcom/avast/android/mobilesecurity/app/advisor/a;->changeCursor(Landroid/database/Cursor;)V

    .line 128
    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    const-string v0, "/ms/appAdvisor/privacy/group"

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    :cond_1
    const-string v0, "/ms/appAdvisor/privacy/group"

    goto :goto_0

    .line 61
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/ms/appAdvisor/privacy/group/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/a;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/advisor/a;-><init>(Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->a:Lcom/avast/android/mobilesecurity/app/advisor/a;

    .line 90
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->a:Lcom/avast/android/mobilesecurity/app/advisor/a;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->a(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 118
    new-instance v0, Landroid/support/v4/a/f;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->b:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "packageName"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/f;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const v0, 0x7f030035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 69
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->c:Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 72
    const-string v2, "descriptionResourceId"

    const v3, 0x7f0c0064

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->d:I

    .line 73
    const-string v2, "iconResourceId"

    const v3, 0x7f0200e2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->e:I

    .line 75
    const v1, 0x7f0700c6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->d:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "packageName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x7f0700dd

    invoke-static {v1, v0, v2, v3}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailActivity;->call(Landroid/content/Context;Ljava/lang/String;II)V

    .line 114
    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;->a:Lcom/avast/android/mobilesecurity/app/advisor/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/advisor/a;->changeCursor(Landroid/database/Cursor;)V

    .line 135
    :cond_0
    return-void
.end method
