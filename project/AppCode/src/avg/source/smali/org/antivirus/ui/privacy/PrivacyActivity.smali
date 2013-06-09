.class public Lorg/antivirus/ui/privacy/PrivacyActivity;
.super Lorg/antivirus/ui/BaseToolActivity;


# instance fields
.field a:Ljava/util/ArrayList;

.field private b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Lorg/antivirus/ui/privacy/f;

.field private j:Lorg/antivirus/core/b/a;

.field private k:Landroid/widget/ListView;

.field private l:Z

.field private m:I

.field private n:Landroid/app/Dialog;

.field private o:Lorg/antivirus/ui/WebViewAdsManager;

.field private p:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->a:Ljava/util/ArrayList;

    const/16 v0, 0x1e

    iput v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->g:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->h:I

    new-instance v0, Lorg/antivirus/ui/privacy/a;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/privacy/a;-><init>(Lorg/antivirus/ui/privacy/PrivacyActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->p:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/privacy/PrivacyActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->n:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/ui/privacy/PrivacyActivity;Lorg/antivirus/core/b/a;)Lorg/antivirus/core/b/a;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/ui/privacy/PrivacyActivity;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    const/4 v0, 0x5

    if-ge v4, v0, :cond_7

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    iget-object v0, v0, Lorg/antivirus/core/b/a;->d:Lorg/antivirus/core/b/c;

    sget-object v3, Lorg/antivirus/core/b/c;->a:Lorg/antivirus/core/b/c;

    if-eq v0, v3, :cond_0

    iget-object v5, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->a:Ljava/util/ArrayList;

    new-instance v6, Lorg/antivirus/ui/performance/b;

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_2
    iget-object v3, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    iget-object v3, v3, Lorg/antivirus/core/b/a;->d:Lorg/antivirus/core/b/c;

    sget-object v7, Lorg/antivirus/core/b/c;->c:Lorg/antivirus/core/b/c;

    if-eq v3, v7, :cond_3

    move v3, v2

    :goto_3
    invoke-direct {v6, v1, v0, v3}, Lorg/antivirus/ui/performance/b;-><init>(IZZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    iget-object v0, v0, Lorg/antivirus/core/b/a;->h:Lorg/antivirus/core/b/c;

    sget-object v3, Lorg/antivirus/core/b/c;->a:Lorg/antivirus/core/b/c;

    if-eq v0, v3, :cond_0

    iget-object v5, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->a:Ljava/util/ArrayList;

    new-instance v6, Lorg/antivirus/ui/performance/b;

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    :goto_4
    iget-object v3, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    iget-object v3, v3, Lorg/antivirus/core/b/a;->h:Lorg/antivirus/core/b/c;

    sget-object v7, Lorg/antivirus/core/b/c;->c:Lorg/antivirus/core/b/c;

    if-eq v3, v7, :cond_6

    move v3, v2

    :goto_5
    invoke-direct {v6, v2, v0, v3}, Lorg/antivirus/ui/performance/b;-><init>(IZZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v3, v1

    goto :goto_5

    :pswitch_2
    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->a:Ljava/util/ArrayList;

    new-instance v3, Lorg/antivirus/ui/performance/b;

    const/4 v5, 0x2

    invoke-direct {v3, v5, v1, v1}, Lorg/antivirus/ui/performance/b;-><init>(IZZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->a:Ljava/util/ArrayList;

    new-instance v3, Lorg/antivirus/ui/performance/b;

    const/4 v5, 0x4

    invoke-direct {v3, v5, v1, v1}, Lorg/antivirus/ui/performance/b;-><init>(IZZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->a:Ljava/util/ArrayList;

    new-instance v3, Lorg/antivirus/ui/performance/b;

    const/4 v5, 0x3

    invoke-direct {v3, v5, v1, v1}, Lorg/antivirus/ui/performance/b;-><init>(IZZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_8
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Landroid/text/SpannableString;

    const v4, 0x7f0901b9

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    invoke-virtual {v1}, Lorg/antivirus/core/b/a;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    iget v1, v1, Lorg/antivirus/core/b/a;->n:I

    iget v3, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->b:I

    if-le v1, v3, :cond_9

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    new-instance v1, Lorg/antivirus/ui/privacy/c;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/privacy/c;-><init>(Lorg/antivirus/ui/privacy/PrivacyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    iget v3, v3, Lorg/antivirus/core/b/a;->n:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    invoke-virtual {v3}, Lorg/antivirus/core/b/a;->c()Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    iget v3, v3, Lorg/antivirus/core/b/a;->n:I

    if-ltz v3, :cond_c

    sget-object v3, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    iget v3, v3, Lorg/antivirus/core/b/a;->n:I

    const v4, 0x7fffffff

    if-ge v3, v4, :cond_c

    sget-object v3, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    iget v3, v3, Lorg/antivirus/core/b/a;->n:I

    if-ne v3, v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0901bb

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    new-instance v0, Lorg/antivirus/ui/privacy/f;

    invoke-direct {v0, p0, p0}, Lorg/antivirus/ui/privacy/f;-><init>(Lorg/antivirus/ui/privacy/PrivacyActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->i:Lorg/antivirus/ui/privacy/f;

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->i:Lorg/antivirus/ui/privacy/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->k:Landroid/widget/ListView;

    new-instance v1, Lorg/antivirus/ui/privacy/b;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/privacy/b;-><init>(Lorg/antivirus/ui/privacy/PrivacyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0901ba

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_c
    sget-object v2, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    invoke-virtual {v2}, Lorg/antivirus/core/b/a;->c()Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    iget-boolean v2, v2, Lorg/antivirus/core/b/a;->m:Z

    if-eqz v2, :cond_a

    :cond_d
    const v1, 0x7f0901bc

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_e
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lorg/antivirus/ui/privacy/PrivacyActivity;I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "app_locker"

    :goto_1
    const-string v1, "privacy"

    const-string v2, "forbidden"

    invoke-static {p0, v1, v0, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "app_backup"

    goto :goto_1

    :pswitch_2
    const-string v0, "wipe_device"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lorg/antivirus/ui/privacy/PrivacyActivity;I)I
    .locals 0

    iput p1, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->m:I

    return p1
.end method

.method static synthetic b(Lorg/antivirus/ui/privacy/PrivacyActivity;)Lorg/antivirus/core/b/a;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->j:Lorg/antivirus/core/b/a;

    return-object v0
.end method

.method static synthetic c(Lorg/antivirus/ui/privacy/PrivacyActivity;)Lorg/antivirus/ui/WebViewAdsManager;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->o:Lorg/antivirus/ui/WebViewAdsManager;

    return-object v0
.end method

.method private c()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/antivirus/ui/privacy/d;

    invoke-direct {v1, p0, p0}, Lorg/antivirus/ui/privacy/d;-><init>(Lorg/antivirus/ui/privacy/PrivacyActivity;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic d(Lorg/antivirus/ui/privacy/PrivacyActivity;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, ":android:show_fragment"

    const-string v2, "com.android.settings.MasterClear"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "privacy"

    const-string v1, "wipe_device"

    const-string v2, "permitted"

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.MasterClear"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic e(Lorg/antivirus/ui/privacy/PrivacyActivity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/wipe/WipeSd;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "privacy"

    const-string v1, "wipe_sd"

    const-string v2, "permitted"

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lorg/antivirus/ui/privacy/PrivacyActivity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/wipe/WipeByApp;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "privacy"

    const-string v1, "wipe_data"

    const-string v2, "permitted"

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lorg/antivirus/ui/privacy/PrivacyActivity;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->m:I

    return v0
.end method

.method static synthetic h(Lorg/antivirus/ui/privacy/PrivacyActivity;)Lorg/antivirus/ui/privacy/f;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->i:Lorg/antivirus/ui/privacy/f;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->o:Lorg/antivirus/ui/WebViewAdsManager;

    const v1, 0x7f0800ba

    invoke-virtual {v0, p0, v1, p1}, Lorg/antivirus/ui/WebViewAdsManager;->onConfigurationChanged(Landroid/app/Activity;ILandroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->setContentView(I)V

    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->k:Landroid/widget/ListView;

    invoke-virtual {p0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030022

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v3, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v2, 0x7f02001a

    const v3, 0x7f02001b

    const v0, 0x7f0901b2

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/ui/privacy/PrivacyActivity;->a(ZIILjava/lang/String;Z)V

    new-instance v0, Lorg/antivirus/ui/WebViewAdsManager;

    invoke-direct {v0}, Lorg/antivirus/ui/WebViewAdsManager;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->o:Lorg/antivirus/ui/WebViewAdsManager;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->p:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v1}, Lorg/antivirus/ui/privacy/PrivacyActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v1, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->m:I

    invoke-direct {p0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->c()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->n:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->n:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->o:Lorg/antivirus/ui/WebViewAdsManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->o:Lorg/antivirus/ui/WebViewAdsManager;

    invoke-virtual {v0}, Lorg/antivirus/ui/WebViewAdsManager;->stop()V

    :cond_1
    iget-boolean v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->p:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/privacy/PrivacyActivity;->l:Z

    :cond_2
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onResume()V

    invoke-direct {p0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->c()V

    return-void
.end method
