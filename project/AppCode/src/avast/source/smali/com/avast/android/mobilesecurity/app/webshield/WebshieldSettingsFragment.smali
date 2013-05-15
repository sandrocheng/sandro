.class public Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "WebshieldSettingsFragment.java"


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/t;

.field private b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private f:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private g:Lcom/avast/android/generic/ui/widget/NextRow;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->h:Z

    .line 209
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->S()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 210
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->T()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 211
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->U()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 212
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->V()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 213
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->f:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->W()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 214
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->h:Z

    .line 216
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 217
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 218
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 219
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->f:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 221
    return-void

    :cond_0
    move v0, v1

    .line 219
    goto :goto_0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->f:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "/ms/shieldControl/webShield"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0c02e4

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->a:Lcom/avast/android/mobilesecurity/t;

    .line 200
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->c()V

    .line 201
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    const v0, 0x7f03006e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 57
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f070184

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 60
    const v0, 0x7f070189

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->g:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 61
    const v0, 0x7f070187

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 62
    const v0, 0x7f070188

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->f:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 64
    const v0, 0x7f0700c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c02e8

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c02e9

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c02eb

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c02ec

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c02ed

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.dolphin.browser.permission.ACCESS_PROVIDER"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const v1, 0x7f0c02ef

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_0
    const v3, 0x7f0c02e7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->g:Lcom/avast/android/generic/ui/widget/NextRow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/NextRow;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/webshield/p;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/webshield/p;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 150
    const v0, 0x7f070185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 151
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/webshield/q;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/webshield/q;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 163
    const v0, 0x7f070186

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 164
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/webshield/r;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/webshield/r;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 176
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/webshield/s;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/webshield/s;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 189
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Z)V

    .line 190
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Z)V

    .line 191
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->f:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v6}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Z)V

    .line 193
    return-void

    .line 80
    :cond_0
    const v1, 0x7f0c02ee

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
