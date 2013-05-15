.class Lcom/avast/android/mobilesecurity/app/settings/m;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    .line 234
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->e(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const v2, 0x7f0c03b3

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const v3, 0x7f0c0063

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const v4, 0x7f0c0064

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avast/android/mobilesecurity/app/settings/n;

    invoke-direct {v4, p0}, Lcom/avast/android/mobilesecurity/app/settings/n;-><init>(Lcom/avast/android/mobilesecurity/app/settings/m;)V

    new-instance v5, Lcom/avast/android/mobilesecurity/app/settings/o;

    invoke-direct {v5, p0}, Lcom/avast/android/mobilesecurity/app/settings/o;-><init>(Lcom/avast/android/mobilesecurity/app/settings/m;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/settings/m;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/settings/m;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/settings/m;->b()V

    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    .line 257
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->e(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const v2, 0x7f0c03b2

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const v3, 0x7f0c0063

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const v4, 0x7f0c0064

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avast/android/mobilesecurity/app/settings/p;

    invoke-direct {v4, p0}, Lcom/avast/android/mobilesecurity/app/settings/p;-><init>(Lcom/avast/android/mobilesecurity/app/settings/m;)V

    new-instance v5, Lcom/avast/android/mobilesecurity/app/settings/q;

    invoke-direct {v5, p0}, Lcom/avast/android/mobilesecurity/app/settings/q;-><init>(Lcom/avast/android/mobilesecurity/app/settings/m;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/settings/m;->c()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/settings/m;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/settings/m;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Z)V

    .line 278
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->c(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 279
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->d(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/generic/ui/widget/SelectorRow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/SelectorRow;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Landroid/content/Context;)V

    .line 282
    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 202
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const-string v1, "ms-Settings"

    const-string v2, "passwordProtection"

    if-eqz p2, :cond_1

    const-string v3, "on"

    :goto_0
    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 203
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->e()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 204
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a(Landroid/support/v4/app/FragmentManager;Z)V

    .line 206
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    .line 208
    const v1, 0x7f070019

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 210
    const v1, 0x7f07001a

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 226
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;Z)Z

    .line 227
    return-void

    .line 202
    :cond_1
    const-string v3, "off"

    goto :goto_0

    .line 213
    :cond_2
    if-eqz p2, :cond_3

    .line 214
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/avast/android/mobilesecurity/t;->b(Z)V

    .line 215
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->c(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->d(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/generic/ui/widget/SelectorRow;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/avast/android/generic/ui/widget/SelectorRow;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 222
    :cond_3
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/settings/m;->a()V

    goto :goto_1
.end method
