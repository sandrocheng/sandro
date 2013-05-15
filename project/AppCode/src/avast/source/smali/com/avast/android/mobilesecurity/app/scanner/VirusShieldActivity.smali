.class public Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;
.super Landroid/app/Activity;
.source "VirusShieldActivity.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/avast/android/mobilesecurity/app/locking/core/App;

.field private g:Ljava/util/Queue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->c:Landroid/net/Uri;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a(Landroid/content/Intent;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->finish()V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 12
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 146
    const-string v0, "app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->f:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->c:Landroid/net/Uri;

    .line 150
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->c:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->d:Ljava/lang/String;

    .line 155
    :goto_0
    const-string v0, "isRealtimeShield"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->e:Z

    .line 156
    const-string v0, "isStorageShield"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a:Z

    .line 158
    iput-object v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->b:Ljava/lang/String;

    .line 159
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->c:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->b:Ljava/lang/String;

    .line 163
    :cond_1
    const v0, 0x7f070075

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 164
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a:Z

    if-eqz v1, :cond_2

    .line 165
    const v1, 0x7f0c01db

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 167
    :cond_2
    new-instance v1, Lcom/avast/android/mobilesecurity/app/scanner/ak;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/scanner/ak;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 197
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a:Z

    if-eqz v1, :cond_6

    .line 198
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :goto_1
    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->e:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a:Z

    if-eqz v1, :cond_4

    .line 213
    :cond_3
    const v1, 0x7f0c024a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    :cond_4
    new-instance v1, Lcom/avast/android/mobilesecurity/app/scanner/am;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/scanner/am;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 234
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a:Z

    if-eqz v1, :cond_7

    .line 235
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->b:Ljava/lang/String;

    move-object v2, v0

    .line 249
    :goto_2
    const-string v0, "infectionType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "infectionType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_3
    check-cast v0, [Ljava/lang/String;

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    array-length v8, v0

    move v5, v6

    :goto_4
    if-ge v5, v8, :cond_c

    aget-object v1, v0, v5

    .line 254
    const/16 v3, 0x7c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 255
    if-lez v3, :cond_e

    .line 256
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 259
    :goto_5
    const-string v1, "detectionCategory"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "detectionCategory"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 261
    :goto_6
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_b

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/engine/u;->a(I)Lcom/avast/android/mobilesecurity/engine/u;

    move-result-object v1

    .line 265
    :goto_7
    sget-object v9, Lcom/avast/android/mobilesecurity/app/scanner/an;->a:[I

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/u;->ordinal()I

    move-result v1

    aget v1, v9, v1

    packed-switch v1, :pswitch_data_0

    .line 278
    const v1, 0x7f0c0247

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v6

    aput-object v3, v9, v10

    invoke-virtual {p0, v1, v9}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 281
    :goto_8
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, "<br/>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_4

    .line 153
    :cond_5
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 200
    :cond_6
    new-instance v1, Lcom/avast/android/mobilesecurity/app/scanner/al;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/scanner/al;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 238
    :cond_7
    :try_start_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 246
    goto/16 :goto_2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->c:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 242
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_2

    .line 244
    :cond_8
    const-string v0, ""

    move-object v2, v0

    goto/16 :goto_2

    .line 249
    :cond_9
    new-array v0, v6, [Ljava/lang/String;

    goto/16 :goto_3

    :cond_a
    move-object v1, v4

    .line 259
    goto :goto_6

    .line 261
    :cond_b
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/u;->a:Lcom/avast/android/mobilesecurity/engine/u;

    goto :goto_7

    .line 267
    :pswitch_0
    const v1, 0x7f0c0244

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v6

    aput-object v3, v9, v10

    invoke-virtual {p0, v1, v9}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 270
    :pswitch_1
    const v1, 0x7f0c0245

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v6

    aput-object v3, v9, v10

    invoke-virtual {p0, v1, v9}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 273
    :pswitch_2
    const v1, 0x7f0c0246

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v6

    aput-object v3, v9, v10

    invoke-virtual {p0, v1, v9}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 284
    :cond_c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_d

    .line 285
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 288
    :cond_d
    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 289
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-void

    :cond_e
    move-object v3, v1

    goto/16 :goto_5

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b()V
    .locals 3

    .prologue
    .line 293
    invoke-static {p0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avast.android.mobilesecurity.app.scanner.ACTION_LOG_CLEARED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 295
    const-class v0, Lcom/avast/android/generic/notification/j;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    const-wide/32 v1, 0x7f0b000e

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/notification/j;->a(J)V

    .line 296
    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a:Z

    return v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static call(Landroid/content/Context;Landroid/net/Uri;Lcom/avast/android/mobilesecurity/app/locking/core/App;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/avast/android/mobilesecurity/app/scanner/ao;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    if-eqz p2, :cond_0

    .line 90
    const-string v0, "app"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 92
    :cond_0
    const-string v2, "infectionType"

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/x;

    .line 96
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_1
    const-string v0, "result"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/u;

    .line 102
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/u;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_2
    const-string v0, "detectionCategory"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 106
    if-eqz p6, :cond_3

    .line 107
    const-string v0, "isRealtimeShield"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/scanner/ao;->a:Lcom/avast/android/mobilesecurity/app/scanner/ao;

    invoke-virtual {p6, v2}, Lcom/avast/android/mobilesecurity/app/scanner/ao;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const-string v0, "isStorageShield"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/scanner/ao;->b:Lcom/avast/android/mobilesecurity/app/scanner/ao;

    invoke-virtual {p6, v2}, Lcom/avast/android/mobilesecurity/app/scanner/ao;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    :cond_3
    invoke-virtual {v1, p7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->b()V

    return-void
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->e:Z

    return v0
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Lcom/avast/android/mobilesecurity/app/locking/core/App;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->f:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->setContentView(I)V

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->g:Ljava/util/Queue;

    .line 128
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_queue"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->g:Ljava/util/Queue;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent_queue"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a()V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    const-string v0, "VirusShield: onNewIntent: adding intent to queue."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->g:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 302
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->finish()V

    .line 304
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/fileshield/v;->a()Lcom/avast/android/mobilesecurity/app/fileshield/v;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/fileshield/v;->c(Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->g:Ljava/util/Queue;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 312
    const-string v2, "intent_queue"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->startActivity(Landroid/content/Intent;)V

    .line 315
    :cond_1
    return-void
.end method
