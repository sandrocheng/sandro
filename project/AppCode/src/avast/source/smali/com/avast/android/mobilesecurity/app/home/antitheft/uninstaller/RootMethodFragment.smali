.class public Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "RootMethodFragment.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private i:Lcom/avast/android/generic/ui/widget/CheckBoxRow;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->d:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->g:Z

    .line 52
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->e:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->f:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/avast/android/generic/util/am;Lcom/avast/android/generic/util/o;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Lcom/avast/android/generic/util/o;Lcom/avast/android/generic/util/am;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Lcom/avast/android/generic/util/am;Lcom/avast/android/generic/util/o;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->a(Lcom/avast/android/generic/util/am;Lcom/avast/android/generic/util/o;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0c01ca

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 259
    new-array v0, v3, [Ljava/lang/Object;

    const v1, 0x7f0c01cb

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0063

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0064

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/p;

    invoke-direct {v4, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/p;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 271
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0c01c9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    new-array v0, v3, [Ljava/lang/Object;

    const v1, 0x7f0c01cb

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0063

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0064

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/c;

    invoke-direct {v4, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/c;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 286
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/avast/android/mobilesecurity/Application;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->d()V

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->e()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->c()V

    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c01bf

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c01c0

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c01c1

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/k;

    invoke-direct {v4, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/k;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V

    new-instance v5, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/m;

    invoke-direct {v5, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/m;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 204
    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;

    invoke-direct {v2, p0, v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 251
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 254
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 255
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedActivity;->call(Landroid/content/Context;)V

    .line 256
    return-void
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->g()V

    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/z;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->f:Ljava/lang/String;

    const v2, 0x7f0c0063

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0064

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/d;

    invoke-direct {v4, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/d;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V

    new-instance v5, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/e;

    invoke-direct {v5, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/e;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->f()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->f()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "/ms/antiTheftUninstall/rootMethod"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 57
    const v0, 0x7f03005f

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 58
    const v0, 0x7f070147

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    const v1, 0x7f070148

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    const v2, 0x7f07014c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->a:Landroid/widget/Button;

    .line 62
    const v2, 0x7f0700c9

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->b:Landroid/widget/Button;

    .line 64
    const v2, 0x7f070149

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 65
    const v2, 0x7f07014a

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 66
    const v2, 0x7f07014b

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->i:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 68
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v2, v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 69
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v2, v6}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 70
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v2, v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 71
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v2, v4}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 73
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->i:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v2, v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 74
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->i:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v2, v4}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 75
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->i:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setVisibility(I)V

    .line 77
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    const v4, 0x7f0c01ba

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    const v4, 0x7f0c03e5

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    const v4, 0x7f0c01bc

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    const v4, 0x7f0c01bd

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 81
    invoke-static {v6}, Lcom/avast/android/mobilesecurity/Application;->c(Z)V

    .line 83
    const v2, 0x7f0c03e1

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v0, 0x7f0c03e2

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v0, 0x7f0c03e3

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->e:Ljava/lang/String;

    .line 86
    const v0, 0x7f0c03e4

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->f:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->b:Landroid/widget/Button;

    const v1, 0x7f0c0248

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->a:Landroid/widget/Button;

    const v1, 0x7f0c0067

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/b;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/b;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 103
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->h:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/f;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/f;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 116
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->a:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/g;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/g;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/h;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/h;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-object v3
.end method
