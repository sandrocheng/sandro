.class public Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "FilterCallLogPickerFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/app/filter/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 116
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/b;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007e

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0c02af

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    check-cast p1, Lcom/avast/android/mobilesecurity/app/filter/core/a;

    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 80
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/b;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/avast/android/mobilesecurity/app/filter/b;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/b;

    .line 81
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/b;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->getView()Landroid/view/View;

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
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/b;

    invoke-virtual {v0, p2}, Lcom/avast/android/mobilesecurity/app/filter/b;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "/ms/filter/group/contacts/callLogPicker"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 52
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/core/a;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const v0, 0x7f03004e

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
    if-nez p3, :cond_0

    .line 109
    :goto_0
    return-void

    .line 97
    :cond_0
    add-int/lit8 v0, p3, -0x1

    .line 98
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 99
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/b;

    invoke-virtual {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 100
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/b;

    invoke-virtual {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/b;->a(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 107
    :goto_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->j()V

    goto :goto_0

    .line 104
    :cond_1
    const-string v2, "number"

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/b;

    invoke-virtual {v3, v0}, Lcom/avast/android/mobilesecurity/app/filter/b;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

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
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->a:Lcom/avast/android/mobilesecurity/app/filter/b;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_0
    return-void
.end method
