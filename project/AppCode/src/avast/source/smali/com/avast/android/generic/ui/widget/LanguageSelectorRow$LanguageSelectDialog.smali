.class public Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "LanguageSelectorRow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    const-string v0, "dialog"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 139
    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;

    invoke-direct {v0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;-><init>()V

    .line 141
    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    sget v0, Lcom/avast/android/generic/o;->a:I

    new-instance v2, Lcom/avast/android/generic/ui/widget/i;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/ui/widget/i;-><init>(Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 162
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 164
    return-object v0
.end method
