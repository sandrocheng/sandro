.class public Lcom/avast/android/generic/ui/widget/ContextDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ContextDialogFragment.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->a:[Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->b:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/avast/android/generic/ui/widget/ContextDialogFragment;
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->b:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcom/avast/android/generic/ui/widget/ContextDialogFragment;
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->a:[Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 95
    if-eqz p1, :cond_0

    .line 96
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->b:Ljava/lang/String;

    .line 97
    const-string v0, "items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->a:[Ljava/lang/String;

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 101
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->b:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    .line 108
    :goto_0
    iget-object v3, p0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 109
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    const-string v4, "name"

    iget-object v5, p0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    new-instance v8, Landroid/widget/ListView;

    invoke-direct {v8, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Landroid/widget/SimpleAdapter;

    sget v3, Lcom/avast/android/generic/v;->c:I

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v6

    new-array v5, v10, [I

    sget v9, Lcom/avast/android/generic/t;->N:I

    aput v9, v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 117
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    new-instance v0, Lcom/avast/android/generic/ui/widget/e;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/ui/widget/e;-><init>(Lcom/avast/android/generic/ui/widget/ContextDialogFragment;)V

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 133
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    const-string v0, "title"

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "items"

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->a:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method
