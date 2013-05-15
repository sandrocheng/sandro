.class public Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TelBlockOfferActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/TextView;

.field private c:Z

.field private d:Z

.field private e:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->c:Z

    .line 43
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->d:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->e:Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->c()V

    .line 83
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->finish()V

    .line 118
    :goto_0
    return-void

    .line 87
    :cond_0
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 88
    new-instance v1, Lcom/avast/android/mobilesecurity/app/filter/ad;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/filter/ad;-><init>(Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 97
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v1, 0x7f0c02b9

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/ae;

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/ae;-><init>(Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->e:Landroid/content/Intent;

    .line 187
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->e:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->finish()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->e:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 193
    if-nez v0, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->finish()V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    .line 199
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->finish()V

    goto :goto_0

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    .line 207
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 208
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->finish()V

    goto :goto_0

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    .line 215
    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 137
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->d:Z

    if-eqz v0, :cond_2

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->d:Z

    .line 146
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->finish()V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->c:Z

    .line 156
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->e:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->e:Landroid/content/Intent;

    const v2, 0x10040

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 165
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 166
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->e:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->e:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->setContentView(I)V

    .line 56
    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->b:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a(Landroid/content/Intent;)V

    .line 59
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a()V

    .line 62
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 129
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->b()V

    .line 130
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->setIntent(Landroid/content/Intent;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a(Landroid/content/Intent;)V

    .line 72
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->a()V

    .line 73
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 123
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->b()V

    .line 124
    return-void
.end method
