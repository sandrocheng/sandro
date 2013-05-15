.class public Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "GlobalActivityLogFragment.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 494
    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 483
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 484
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->b:[Z

    .line 485
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->a:[Ljava/lang/String;

    .line 486
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;[Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 475
    const-string v0, "selector_row_dialog"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 476
    if-nez v0, :cond_0

    .line 477
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;

    invoke-direct {v0, p1, p2}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;-><init>([Ljava/lang/String;[Z)V

    .line 478
    const-string v1, "selector_row_dialog"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 480
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;)[Z
    .locals 1
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->b:[Z

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 498
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 499
    if-eqz p1, :cond_0

    .line 500
    const-string v0, "mEntriesNames"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->a:[Ljava/lang/String;

    .line 501
    const-string v0, "mSelected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->b:[Z

    .line 503
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 508
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 510
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->b:[Z

    new-instance v3, Lcom/avast/android/mobilesecurity/app/globalactivitylog/s;

    invoke-direct {v3, p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/s;-><init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 521
    const v0, 0x7f0c0065

    new-instance v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/t;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/t;-><init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 526
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 527
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 529
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 534
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 535
    const-string v0, "mEntriesNames"

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->a:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 536
    const-string v0, "mSelected"

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment$SelectorDialog;->b:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 537
    return-void
.end method
