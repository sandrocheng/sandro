.class public Lcom/avast/android/generic/app/account/AccountDisconnectDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AccountDisconnectDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)Lcom/avast/android/generic/app/account/AccountDisconnectDialog;
    .locals 2
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/avast/android/generic/app/account/AccountDisconnectDialog;

    invoke-direct {v0}, Lcom/avast/android/generic/app/account/AccountDisconnectDialog;-><init>()V

    .line 39
    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Lcom/avast/android/generic/app/account/AccountDisconnectDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountDisconnectDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avast.android.generic.app.account.ACTION_DISCONNECT_CONFIRMED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/AccountDisconnectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountDisconnectDialog;->a()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountDisconnectDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 46
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/avast/android/generic/v;->F:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 49
    sget v0, Lcom/avast/android/generic/t;->X:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountDisconnectDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/avast/android/generic/util/z;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/avast/android/generic/z;->au:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/app/account/AccountDisconnectDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->O:I

    new-instance v2, Lcom/avast/android/generic/app/account/b;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/app/account/b;-><init>(Lcom/avast/android/generic/app/account/AccountDisconnectDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->Q:I

    new-instance v2, Lcom/avast/android/generic/app/account/a;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/app/account/a;-><init>(Lcom/avast/android/generic/app/account/AccountDisconnectDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
