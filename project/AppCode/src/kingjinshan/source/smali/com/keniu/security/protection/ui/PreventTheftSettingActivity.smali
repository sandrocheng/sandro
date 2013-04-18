.class public Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "PreventTheftSettingActivity.java"


# static fields
.field private static final a:Ljava/lang/String; = "PreventTheftSettingActivity"

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3


# instance fields
.field private e:Lcom/ijinshan/kpref/PreferenceScreen;

.field private f:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->f:Landroid/widget/EditText;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Landroid/content/DialogInterface;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PreventTheftSettingActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)Lcom/ijinshan/kpref/PreferenceScreen;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->e:Lcom/ijinshan/kpref/PreferenceScreen;

    return-object v0
.end method

.method private static b(Landroid/content/DialogInterface;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 400
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 402
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 404
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    const-string v1, "PreventTheftSettingActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 63
    const v0, 0x7f0b0775

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    .line 64
    const v1, 0x7f0b07bc

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->f(I)V

    .line 65
    new-instance v1, Lcom/keniu/security/protection/ui/q;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/q;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    .line 74
    const v0, 0x7f0b0776

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->e:Lcom/ijinshan/kpref/PreferenceScreen;

    .line 75
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->e:Lcom/ijinshan/kpref/PreferenceScreen;

    new-instance v1, Lcom/keniu/security/protection/ui/v;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/v;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    .line 83
    invoke-static {}, Lcom/keniu/security/protection/ui/ag;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const v0, 0x7f0b077a

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 85
    const-string v1, "kn_protection_setting_preferences"

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kpref/PreferenceScreen;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->d(Lcom/ijinshan/kpref/Preference;)Z

    .line 89
    :cond_0
    const v0, 0x7f0b0772

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 90
    new-instance v1, Lcom/keniu/security/protection/ui/ad;

    const v2, 0x7f0b0219

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b07f3

    invoke-virtual {p0, v3}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/keniu/security/protection/ui/ad;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 101
    const v0, 0x7f0b077b

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    .line 102
    const v1, 0x7f0b078d

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->f(I)V

    .line 103
    new-instance v1, Lcom/keniu/security/protection/ui/w;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/w;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    .line 113
    return-void
.end method

.method private d()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    const/high16 v5, -0x100

    .line 177
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 181
    const v0, 0x7f080355

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 183
    const v0, 0x7f080356

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    const v0, 0x7f080351

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    const v1, 0x7f080353

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 190
    const v2, 0x7f08034f

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 193
    const v4, 0x7f0b0600

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 194
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    const v2, 0x7f0b0601

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 196
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    const v0, 0x7f0b0602

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 198
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b07fa

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v6}, Lcom/keniu/security/util/aq;->a(Z)Lcom/keniu/security/util/aq;

    .line 205
    const v1, 0x7f0b0682

    new-instance v2, Lcom/keniu/security/protection/ui/x;

    invoke-direct {v2, p0, v3}, Lcom/keniu/security/protection/ui/x;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 269
    const v1, 0x7f0b0683

    new-instance v2, Lcom/keniu/security/protection/ui/y;

    invoke-direct {v2, p0}, Lcom/keniu/security/protection/ui/y;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 278
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/keniu/security/protection/ui/z;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/z;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/ap;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 287
    return-object v0
.end method

.method private e()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 291
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030075

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 294
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b07bf

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v2

    .line 296
    new-instance v0, Lcom/keniu/security/protection/ui/aa;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/aa;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 302
    const v0, 0x7f0801f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 303
    new-instance v3, Lcom/keniu/security/protection/ui/ab;

    invoke-direct {v3, p0}, Lcom/keniu/security/protection/ui/ab;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v0, 0x7f0801f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->f:Landroid/widget/EditText;

    .line 320
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->f:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 321
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->f:Landroid/widget/EditText;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 324
    new-instance v0, Lcom/keniu/security/protection/ui/ac;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/ac;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    .line 354
    const v1, 0x7f0b0682

    invoke-virtual {v2, v1, v0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 355
    const v0, 0x7f0b0683

    new-instance v1, Lcom/keniu/security/protection/ui/r;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/r;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 363
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 365
    new-instance v1, Lcom/keniu/security/protection/ui/s;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/s;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 371
    return-object v0
.end method

.method private f()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 375
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 377
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 378
    const v1, 0x7f0b07b1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 380
    const v1, 0x7f0b0218

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/protection/ui/t;

    invoke-direct {v2, p0}, Lcom/keniu/security/protection/ui/t;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 387
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 389
    new-instance v1, Lcom/keniu/security/protection/ui/u;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/u;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 395
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 42
    const v0, 0x7f0b0768

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->setTitle(I)V

    .line 43
    const v0, 0x7f05000e

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 46
    const v0, 0x7f0b0775

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    const v1, 0x7f0b07bc

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->f(I)V

    new-instance v1, Lcom/keniu/security/protection/ui/q;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/q;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    const v0, 0x7f0b0776

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->e:Lcom/ijinshan/kpref/PreferenceScreen;

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->e:Lcom/ijinshan/kpref/PreferenceScreen;

    new-instance v1, Lcom/keniu/security/protection/ui/v;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/v;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    invoke-static {}, Lcom/keniu/security/protection/ui/ag;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b077a

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    const-string v1, "kn_protection_setting_preferences"

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kpref/PreferenceScreen;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/PreferenceScreen;->d(Lcom/ijinshan/kpref/Preference;)Z

    :cond_0
    const v0, 0x7f0b0772

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    new-instance v1, Lcom/keniu/security/protection/ui/ad;

    const v2, 0x7f0b0219

    invoke-virtual {p0, v2}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b07f3

    invoke-virtual {p0, v3}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/keniu/security/protection/ui/ad;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    const v0, 0x7f0b077b

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/PreferenceScreen;

    const v1, 0x7f0b078d

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->f(I)V

    new-instance v1, Lcom/keniu/security/protection/ui/w;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/w;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Lcom/ijinshan/kpref/n;)V

    .line 47
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0b0683

    const v7, 0x7f0b0682

    const/16 v4, 0x8

    const/high16 v6, -0x100

    const/4 v5, 0x0

    .line 164
    packed-switch p1, :pswitch_data_0

    .line 172
    invoke-super {p0, p1}, Lcom/keniu/security/util/BasePreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 166
    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f080355

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080356

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080351

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080353

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f08034f

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0b0600

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0b0601

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0b0602

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b07fa

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/keniu/security/util/aq;->a(Z)Lcom/keniu/security/util/aq;

    new-instance v1, Lcom/keniu/security/protection/ui/x;

    invoke-direct {v1, p0, v3}, Lcom/keniu/security/protection/ui/x;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;Landroid/view/View;)V

    invoke-virtual {v0, v7, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    new-instance v1, Lcom/keniu/security/protection/ui/y;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/y;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v8, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/protection/ui/z;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/z;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/ap;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 168
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030075

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b07bf

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v2

    new-instance v0, Lcom/keniu/security/protection/ui/aa;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/aa;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0801f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v3, Lcom/keniu/security/protection/ui/ab;

    invoke-direct {v3, p0}, Lcom/keniu/security/protection/ui/ab;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->f:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->f:Landroid/widget/EditText;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v0, Lcom/keniu/security/protection/ui/ac;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/ac;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v2, v7, v0}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    new-instance v0, Lcom/keniu/security/protection/ui/r;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/r;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v2, v8, v0}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/protection/ui/s;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/s;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 170
    :pswitch_2
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b07b1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0218

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/protection/ui/t;

    invoke-direct {v2, p0}, Lcom/keniu/security/protection/ui/t;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/protection/ui/u;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/ui/u;-><init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->onStart()V

    .line 52
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->e:Lcom/ijinshan/kpref/PreferenceScreen;

    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->a(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/protection/ui/ag;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method
