.class public Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/avast/android/mobilesecurity/ui/widget/y;


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/t;

.field private b:Lcom/avast/android/generic/ui/widget/NextRow;

.field private c:Lcom/avast/android/generic/ui/widget/NextRow;

.field private d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private f:Lcom/avast/android/generic/ui/widget/SelectorRow;

.field private g:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private i:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private j:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private k:Lcom/avast/android/generic/ui/widget/SelectorRow;

.field private l:Lcom/avast/android/generic/ui/widget/NextRow;

.field private m:Lcom/avast/android/generic/ui/widget/NextRow;

.field private n:Ljava/lang/Object;

.field private o:Landroid/os/Handler$Callback;

.field private p:Landroid/content/BroadcastReceiver;

.field private q:Ljava/lang/Object;

.field private r:Z

.field private s:I

.field private t:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->r:Z

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->s:I

    return p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/mobilesecurity/t;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 493
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->t:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 494
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->m:Lcom/avast/android/generic/ui/widget/NextRow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setEnabled(Z)V

    .line 495
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    const-string v1, "ms-Settings"

    const-string v2, "setRecoveryNumber"

    const-string v3, ""

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 470
    if-eqz p1, :cond_1

    .line 471
    new-instance v0, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;

    invoke-direct {v0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;-><init>()V

    .line 472
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 473
    const-string v2, "after_pin_setup"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->setArguments(Landroid/os/Bundle;)V

    .line 475
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_recovery_description"

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    new-instance v0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-direct {v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;-><init>()V

    .line 478
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 479
    const-string v2, "after_pin_setup"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 480
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->setArguments(Landroid/os/Bundle;)V

    .line 481
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_recovery_number"

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->c()V

    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const v4, 0x7f0c0080

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 564
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->l:Lcom/avast/android/generic/ui/widget/NextRow;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->d(Ljava/lang/String;)V

    .line 571
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->l:Lcom/avast/android/generic/ui/widget/NextRow;

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f0c0081

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/generic/ui/widget/SelectorRow;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->k:Lcom/avast/android/generic/ui/widget/SelectorRow;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 619
    const-string v1, "ms-Settings"

    const-string v2, "changePassword"

    const-string v3, ""

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 620
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a(Landroid/support/v4/app/FragmentManager;Z)V

    .line 623
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->r:Z

    return v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->d()V

    return-void
.end method

.method static synthetic h(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->s:I

    return v0
.end method

.method static synthetic i(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->t:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "/ms/settings"

    return-object v0
.end method

.method public a(Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0, v6}, Lcom/avast/android/mobilesecurity/t;->e(Z)V

    .line 631
    const-string v1, "ms-Settings"

    const-string v2, "notificationAlwaysOn"

    const-string v3, "no"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 632
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Landroid/content/Context;)V

    .line 633
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/notification/j;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/j;->c()V

    .line 640
    iput v6, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->s:I

    .line 641
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->f:Lcom/avast/android/generic/ui/widget/SelectorRow;

    invoke-virtual {v0, v6}, Lcom/avast/android/generic/ui/widget/SelectorRow;->c(I)V

    .line 642
    return-void
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 139
    const v0, 0x7f0c01f4

    return v0
.end method

.method public b(Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 649
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->f:Lcom/avast/android/generic/ui/widget/SelectorRow;

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->s:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SelectorRow;->c(I)V

    .line 650
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f07001a

    const/4 v1, 0x1

    .line 579
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    :cond_0
    const/4 v0, 0x0

    .line 612
    :goto_0
    return v0

    .line 582
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 612
    goto :goto_0

    .line 585
    :pswitch_0
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->r:Z

    .line 586
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 587
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 588
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->k:Lcom/avast/android/generic/ui/widget/SelectorRow;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/SelectorRow;->setEnabled(Z)V

    .line 589
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aY()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Landroid/content/Context;)V

    .line 594
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/f/b/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 598
    invoke-direct {p0, v1, v1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(ZZ)V

    .line 601
    :cond_3
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    .line 603
    const v2, 0x7f070019

    invoke-virtual {v0, v2, p0}, Lcom/avast/android/generic/util/s;->b(ILandroid/os/Handler$Callback;)V

    .line 605
    invoke-virtual {v0, v3, p0}, Lcom/avast/android/generic/util/s;->b(ILandroid/os/Handler$Callback;)V

    goto :goto_1

    .line 582
    :pswitch_data_0
    .packed-switch 0x7f070019
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 144
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    .line 148
    if-eqz p1, :cond_0

    .line 149
    const-string v0, "old_notification_type"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->s:I

    .line 154
    :goto_0
    new-instance v0, Lcom/avast/android/mobilesecurity/app/settings/d;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/settings/d;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->p:Landroid/content/BroadcastReceiver;

    .line 166
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->p:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.avast.android.generic.app.settings.ACTION_NUMBER_ENTERED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 168
    return-void

    .line 151
    :cond_0
    iput v2, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->s:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    const v0, 0x7f030063

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 173
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 540
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDestroy()V

    .line 546
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;)V

    .line 547
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 518
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 520
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 522
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 523
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->p()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 525
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->i:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b()V

    .line 527
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->f:Lcom/avast/android/generic/ui/widget/SelectorRow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SelectorRow;->b(I)V

    .line 528
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->f:Lcom/avast/android/generic/ui/widget/SelectorRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->b()V

    .line 531
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->f:Lcom/avast/android/generic/ui/widget/SelectorRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->c()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->s:I

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->c()V

    .line 536
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 551
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 557
    const-string v0, "old_notification_type"

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 558
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 508
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onStart()V

    .line 510
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "yesNoDialogFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    .line 512
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/Fragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 514
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onStop()V

    .line 500
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Landroid/content/Context;)V

    .line 504
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 180
    const v0, 0x7f070159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->c:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 181
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->c:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/k;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/k;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f07015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 189
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/l;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/l;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v0, 0x7f07015b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 198
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 199
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/m;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/m;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 285
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07001d

    new-instance v2, Lcom/avast/android/mobilesecurity/app/settings/r;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/settings/r;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/content/Context;ILcom/avast/android/generic/ui/ad;)Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->n:Ljava/lang/Object;

    .line 297
    const v0, 0x7f07015c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/s;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/s;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07001e

    new-instance v2, Lcom/avast/android/mobilesecurity/app/settings/t;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/settings/t;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/content/Context;ILcom/avast/android/generic/ui/ad;)Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->o:Landroid/os/Handler$Callback;

    .line 327
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070022

    new-instance v2, Lcom/avast/android/mobilesecurity/app/settings/u;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/settings/u;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/content/Context;ILcom/avast/android/generic/ui/ad;)Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->q:Ljava/lang/Object;

    .line 340
    const v0, 0x7f07015f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/SelectorRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->k:Lcom/avast/android/generic/ui/widget/SelectorRow;

    .line 341
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->k:Lcom/avast/android/generic/ui/widget/SelectorRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SelectorRow;->setEnabled(Z)V

    .line 343
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->k:Lcom/avast/android/generic/ui/widget/SelectorRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aZ()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SelectorRow;->c(I)V

    .line 345
    const v0, 0x7f07015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->l:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 346
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->l:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/v;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/v;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/f/b/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    const v0, 0x7f07015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->l:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v0, v5}, Lcom/avast/android/generic/ui/widget/NextRow;->setVisibility(I)V

    .line 364
    :cond_0
    const v0, 0x7f070160

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 365
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aY()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 366
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/e;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/e;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 377
    const v0, 0x7f070162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->g:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 378
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->g:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aW()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 379
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->g:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/f;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/f;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 390
    const v0, 0x7f070166

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/g;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/g;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    const v0, 0x7f070113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 402
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 403
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/h;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/h;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 411
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 412
    const v1, 0x7f070164

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/SelectorRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->f:Lcom/avast/android/generic/ui/widget/SelectorRow;

    .line 413
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->f:Lcom/avast/android/generic/ui/widget/SelectorRow;

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/ui/widget/SelectorRow;->a(I)V

    .line 414
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->f:Lcom/avast/android/generic/ui/widget/SelectorRow;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/ui/widget/SelectorRow;->a([I)V

    .line 418
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->f:Lcom/avast/android/generic/ui/widget/SelectorRow;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/settings/i;

    invoke-direct {v2, p0, v0}, Lcom/avast/android/mobilesecurity/app/settings/i;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;Lcom/avast/android/mobilesecurity/t;)V

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/ui/widget/SelectorRow;->a(Lcom/avast/android/generic/ui/widget/u;)V

    .line 442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->t:Landroid/os/Bundle;

    .line 443
    const v0, 0x7f070167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->m:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 444
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->m:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/j;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/j;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->m:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/NextRow;->setEnabled(Z)V

    .line 452
    new-instance v0, Lcom/avast/android/mobilesecurity/app/settings/w;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/settings/w;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/settings/d;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 454
    const v0, 0x7f070161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->i:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 455
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->i:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v4}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Z)V

    .line 457
    const v0, 0x7f070163

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->j:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 458
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->j:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v4}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Z)V

    .line 459
    return-void

    .line 414
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
