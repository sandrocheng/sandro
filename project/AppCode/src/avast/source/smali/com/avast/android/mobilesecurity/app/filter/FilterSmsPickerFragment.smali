.class public Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "FilterSmsPickerFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/app/filter/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 116
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/t;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/t;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/avast/android/mobilesecurity/app/filter/t;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/t;

    .line 81
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/t;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/t;

    invoke-virtual {v0, p2}, Lcom/avast/android/mobilesecurity/app/filter/t;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "/ms/filter/group/contacts/smsPicker"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 54
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/core/q;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const v0, 0x7f03004f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    add-int/lit8 v0, p3, -0x1

    .line 95
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 96
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/t;

    invoke-virtual {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/t;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 98
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/t;

    invoke-virtual {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/t;->a(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 100
    const-string v3, "contact_uris"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/t;

    invoke-virtual {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/t;->b(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 104
    const-string v2, "numbers"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->j()V

    .line 109
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/t;

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f030084

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 70
    return-void
.end method
