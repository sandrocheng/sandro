.class public Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SelectorRow.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 470
    return-void
.end method

.method private constructor <init>(I[Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 459
    iput p1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->b:I

    .line 460
    iput p3, p0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->c:I

    .line 461
    iput-object p2, p0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->a:[Ljava/lang/String;

    .line 462
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 423
    iget v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->b:I

    return v0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;I[Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    const-string v0, "selector_row_dialog"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 449
    if-nez v0, :cond_0

    .line 450
    new-instance v0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;-><init>(I[Ljava/lang/String;I)V

    .line 452
    const-string v1, "selector_row_dialog"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 454
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 474
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 475
    if-eqz p1, :cond_0

    .line 476
    const-string v0, "mEntriesNames"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->a:[Ljava/lang/String;

    .line 478
    const-string v0, "mMessageId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->b:I

    .line 479
    const-string v0, "mSelected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->c:I

    .line 481
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 487
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->c:I

    new-instance v3, Lcom/avast/android/generic/ui/widget/w;

    invoke-direct {v3, p0}, Lcom/avast/android/generic/ui/widget/w;-><init>(Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 502
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 504
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 510
    const-string v0, "mEntriesNames"

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->a:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 511
    const-string v0, "mMessageId"

    iget v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    const-string v0, "mSelected"

    iget v1, p0, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    return-void
.end method
