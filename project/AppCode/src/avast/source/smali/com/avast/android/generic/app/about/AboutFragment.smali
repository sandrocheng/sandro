.class public Lcom/avast/android/generic/app/about/AboutFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "AboutFragment.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 59
    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 319
    const/high16 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/generic/app/about/AboutFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/avast/android/generic/app/about/AboutFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->c:Z

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->a:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/y;->c:I

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/aw;->a(Landroid/content/Context;I)Lcom/avast/android/generic/util/aw;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/avast/android/generic/util/aw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avast/android/generic/util/aw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avast/android/generic/util/aw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    .line 284
    :cond_0
    const-string v0, ""

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 287
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/avast/android/generic/app/about/AboutFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->a:Z

    return v0
.end method

.method private d()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 301
    const-string v0, "market://details?id=com.avast.android.mobilesecurity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 303
    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->a:Z

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "/at/about"

    .line 116
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->c:Z

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "/ab/about"

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "/ms/about"

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 122
    sget v0, Lcom/avast/android/generic/z;->bm:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 127
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/AboutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 129
    const-string v0, "app_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The AboutActivity.EXTRA_APP_NAME argument has to be set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    const-string v0, "app_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->d:Ljava/lang/String;

    .line 134
    const-string v0, "anti_theft"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->a:Z

    .line 135
    const-string v0, "backup"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->c:Z

    .line 136
    const-string v0, "not_ams"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->b:Z

    .line 138
    sget v0, Lcom/avast/android/generic/z;->aq:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/app/about/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v2, "vps_version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/android/generic/app/about/AboutFragment;->e:Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lcom/avast/android/generic/app/about/AboutFragment;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 141
    iput-object v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->e:Ljava/lang/String;

    .line 143
    :cond_1
    const-string v2, "vps_definitions_count"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 144
    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    :goto_0
    iput-object v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->f:Ljava/lang/String;

    .line 145
    return-void

    .line 144
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    sget v0, Lcom/avast/android/generic/v;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->g:Landroid/widget/ScrollView;

    .line 150
    iget-object v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->g:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 155
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 157
    iget-boolean v0, p0, Lcom/avast/android/generic/app/about/AboutFragment;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;

    if-nez v0, :cond_0

    .line 158
    sget v0, Lcom/avast/android/generic/t;->z:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_0
    sget v0, Lcom/avast/android/generic/t;->al:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    iget-object v1, p0, Lcom/avast/android/generic/app/about/AboutFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v1, "com.avast.android.mobilesecurity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.avast.android.antitheft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.avast.android.at_play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.avast.android.backup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v3

    .line 170
    :goto_0
    sget v0, Lcom/avast/android/generic/t;->v:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 171
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/AboutFragment;->d()Landroid/content/Intent;

    move-result-object v2

    .line 172
    if-nez v1, :cond_3

    invoke-direct {p0, v2}, Lcom/avast/android/generic/app/about/AboutFragment;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    new-instance v1, Lcom/avast/android/generic/app/about/a;

    invoke-direct {v1, p0, v2}, Lcom/avast/android/generic/app/about/a;-><init>(Lcom/avast/android/generic/app/about/AboutFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :goto_1
    sget v0, Lcom/avast/android/generic/t;->aF:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    sget v1, Lcom/avast/android/generic/t;->ar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 185
    sget v2, Lcom/avast/android/generic/t;->y:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 187
    iget-boolean v5, p0, Lcom/avast/android/generic/app/about/AboutFragment;->a:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/avast/android/generic/app/about/AboutFragment;->b:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/avast/android/generic/app/about/AboutFragment;->c:Z

    if-eqz v5, :cond_4

    .line 188
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :goto_2
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/AboutFragment;->c()Ljava/lang/String;

    move-result-object v1

    .line 196
    sget v2, Lcom/avast/android/generic/z;->bn:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/avast/android/generic/app/about/AboutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    sget v0, Lcom/avast/android/generic/t;->ax:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 199
    new-instance v1, Lcom/avast/android/generic/app/about/b;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/about/b;-><init>(Lcom/avast/android/generic/app/about/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 218
    new-instance v2, Lcom/avast/android/generic/app/about/e;

    invoke-virtual {p0}, Lcom/avast/android/generic/app/about/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/avast/android/generic/app/about/AboutFragment;->g:Landroid/widget/ScrollView;

    invoke-direct {v2, v0, v3}, Lcom/avast/android/generic/app/about/e;-><init>(Landroid/content/Context;Landroid/widget/ScrollView;)V

    .line 219
    sget v0, Lcom/avast/android/generic/t;->an:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/SlideBlock;

    .line 225
    sget v3, Lcom/avast/android/generic/z;->aV:I

    invoke-virtual {p0, v3}, Lcom/avast/android/generic/app/about/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/SlideBlock;->a(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v0, v4}, Lcom/avast/android/generic/ui/widget/SlideBlock;->setEnabled(Z)V

    .line 227
    new-instance v3, Lcom/avast/android/generic/app/about/c;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/avast/android/generic/app/about/c;-><init>(Lcom/avast/android/generic/app/about/AboutFragment;Lcom/avast/android/generic/ui/widget/SlideBlock;Landroid/os/Handler;F)V

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/SlideBlock;->a(Lcom/avast/android/generic/ui/widget/y;)V

    .line 244
    new-instance v1, Lcom/avast/android/generic/app/about/d;

    invoke-direct {v1, p0, v0}, Lcom/avast/android/generic/app/about/d;-><init>(Lcom/avast/android/generic/app/about/AboutFragment;Lcom/avast/android/generic/ui/widget/SlideBlock;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/app/about/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 274
    return-void

    :cond_2
    move v1, v4

    .line 165
    goto/16 :goto_0

    .line 180
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 191
    :cond_4
    sget v5, Lcom/avast/android/generic/z;->aW:I

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/avast/android/generic/app/about/AboutFragment;->e:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/avast/android/generic/app/about/AboutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    sget v1, Lcom/avast/android/generic/z;->C:I

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/avast/android/generic/app/about/AboutFragment;->f:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {p0, v1, v5}, Lcom/avast/android/generic/app/about/AboutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
