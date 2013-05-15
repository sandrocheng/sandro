.class public Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "FilterContactsFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x3

    const v7, 0x7f020109

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 494
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f0c0032

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x7f0c02a2

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0x7f0c02a3

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x7f0c0031

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x4

    const v2, 0x7f0c02a4

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0c02a5

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 499
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 500
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 501
    const v2, 0x7f0c02a0

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 503
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 505
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 506
    const-string v4, "name"

    aget-object v5, v0, v10

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v4, "image"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 511
    const-string v4, "name"

    aget-object v5, v0, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v4, "image"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 516
    const-string v4, "name"

    aget-object v5, v0, v9

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v4, "image"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 521
    const-string v4, "name"

    aget-object v5, v0, v11

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v4, "image"

    const v5, 0x7f020107

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 526
    const-string v4, "name"

    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v4, "image"

    const v5, 0x7f020108

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 531
    const-string v4, "name"

    const/4 v5, 0x5

    aget-object v0, v0, v5

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v0, "image"

    const v4, 0x7f02010a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 536
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030080

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v10

    const-string v5, "image"

    aput-object v5, v4, v8

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 540
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 541
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/g;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/filter/g;-><init>(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 548
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 550
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 551
    return-object v0

    .line 536
    nop

    :array_0
    .array-data 0x4
        0x40t 0x1t 0x7t 0x7ft
        0xa1t 0x1t 0x7t 0x7ft
    .end array-data
.end method
