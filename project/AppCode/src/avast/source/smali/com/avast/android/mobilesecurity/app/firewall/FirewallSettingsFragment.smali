.class public Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "FirewallSettingsFragment.java"


# static fields
.field public static a:Lcom/avast/android/mobilesecurity/app/firewall/core/a;


# instance fields
.field private b:Lcom/avast/android/generic/ui/widget/NextRow;

.field private c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private f:Lcom/avast/android/generic/ui/widget/NextRow;

.field private g:[Ljava/lang/String;

.field private h:Lcom/avast/android/mobilesecurity/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/ad;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/firewall/ad;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->a:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->e()V

    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)Lcom/avast/android/mobilesecurity/t;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->h:Lcom/avast/android/mobilesecurity/t;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)Lcom/avast/android/generic/ui/widget/NextRow;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->f:Lcom/avast/android/generic/ui/widget/NextRow;

    return-object v0
.end method

.method private c()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->d()V

    .line 93
    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aJ()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c033f

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_0
    const v1, 0x7f0c0091

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/NextRow;->d(Ljava/lang/String;)V

    .line 305
    return-void

    .line 299
    :cond_0
    const v0, 0x7f0c033e

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 308
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 310
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->g:[Ljava/lang/String;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/firewall/ao;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/firewall/ao;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 337
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 338
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 339
    return-void
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->c()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "/ms/firewall/settings"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0c0335

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 296
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0c033f

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0c033e

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->g:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    const v0, 0x7f030057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v1, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/t;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->h:Lcom/avast/android/mobilesecurity/t;

    .line 80
    const v1, 0x7f070133

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 81
    const v1, 0x7f070137

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->f:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 82
    const v1, 0x7f070136

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 83
    const v1, 0x7f070134

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 84
    const v1, 0x7f070135

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 86
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->c()V

    .line 88
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 71
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/ae;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/firewall/ae;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->f:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/af;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/firewall/af;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->f:Lcom/avast/android/generic/ui/widget/NextRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->Y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->Y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 122
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->Z()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 123
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->h:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aa()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 125
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/ag;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/firewall/ag;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 153
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/ah;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/firewall/ah;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 266
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/an;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/firewall/an;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 291
    return-void
.end method
