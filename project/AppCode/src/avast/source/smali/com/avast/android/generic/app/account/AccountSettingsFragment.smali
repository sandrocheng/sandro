.class public abstract Lcom/avast/android/generic/app/account/AccountSettingsFragment;
.super Lcom/avast/android/generic/app/account/DisconnectFragment;
.source "AccountSettingsFragment.java"


# instance fields
.field private a:Lcom/avast/android/generic/ui/widget/NextRow;

.field private b:Lcom/avast/android/generic/ui/widget/NextRow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/avast/android/generic/t;->be:I

    return v0
.end method

.method protected d()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 97
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->w()Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    sget v2, Lcom/avast/android/generic/z;->bf:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/NextRow;->d(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v0, v5}, Lcom/avast/android/generic/ui/widget/NextRow;->setEnabled(Z)V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    sget v1, Lcom/avast/android/generic/z;->cJ:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->d(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v0, v4}, Lcom/avast/android/generic/ui/widget/NextRow;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected e()Lcom/avast/android/generic/ui/widget/NextRow;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    return-object v0
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/avast/android/generic/app/account/DisconnectFragment;->handleMessage(Landroid/os/Message;)Z

    .line 80
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    .line 84
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/avast/android/generic/t;->q:I

    if-ne v0, v1, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->d()V

    .line 88
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->onResume()V

    .line 69
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->d()V

    .line 70
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/app/account/DisconnectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->b(Landroid/view/View;)V

    .line 32
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 33
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 35
    iget-object v0, p0, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/generic/app/account/s;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/s;-><init>(Lcom/avast/android/generic/app/account/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method
