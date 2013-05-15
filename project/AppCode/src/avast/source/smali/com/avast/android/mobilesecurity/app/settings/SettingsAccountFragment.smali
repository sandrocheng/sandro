.class public Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;
.super Lcom/avast/android/generic/app/account/AccountSettingsFragment;
.source "SettingsAccountFragment.java"


# instance fields
.field private a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private b:Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;

.field private c:Lcom/avast/android/generic/ae;

.field private d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->e()Lcom/avast/android/generic/ui/widget/NextRow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setEnabled(Z)V

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;)Lcom/avast/android/generic/ae;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->c:Lcom/avast/android/generic/ae;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;)Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->b:Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "/ms/settings/account"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f0c00cd

    return v0
.end method

.method protected d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-super {p0}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->d()V

    .line 147
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->c:Lcom/avast/android/generic/ae;

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->A()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 149
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->c:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->w()Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->b:Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->c:Lcom/avast/android/generic/ae;

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->A()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->setEnabled(Z)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->b:Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;->setEnabled(Z)V

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 161
    const v0, 0x7f070168

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 166
    const v0, 0x7f070169

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->c:Lcom/avast/android/generic/ae;

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const v0, 0x7f030064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/app/account/AccountSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f07016a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 96
    const v0, 0x7f07016b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->b:Lcom/avast/android/mobilesecurity/ui/widget/ReportFrequencyRow;

    .line 98
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->d()V

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->d:Landroid/os/Bundle;

    .line 101
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->e()Lcom/avast/android/generic/ui/widget/NextRow;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/a;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/a;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->e()Lcom/avast/android/generic/ui/widget/NextRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/NextRow;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->e()Lcom/avast/android/generic/ui/widget/NextRow;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/NextRow;->setEnabled(Z)V

    .line 113
    new-instance v0, Lcom/avast/android/mobilesecurity/app/settings/c;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/settings/c;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/settings/a;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->a:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/settings/b;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/settings/b;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 128
    return-void
.end method
