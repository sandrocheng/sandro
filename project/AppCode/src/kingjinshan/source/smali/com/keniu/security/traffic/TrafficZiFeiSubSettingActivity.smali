.class public Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "TrafficZiFeiSubSettingActivity.java"


# static fields
.field public static a:Z


# instance fields
.field private b:Lcom/keniu/security/traffic/y;

.field private c:Ljava/util/ArrayList;

.field private d:[Ljava/lang/String;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/keniu/security/util/aw;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/keniu/security/util/aw;

    invoke-direct {v0}, Lcom/keniu/security/util/aw;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->g:Lcom/keniu/security/util/aw;

    .line 46
    new-instance v0, Lcom/keniu/security/traffic/fh;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/fh;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/util/aw;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->g:Lcom/keniu/security/util/aw;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;Lcom/keniu/security/util/aw;)Lcom/keniu/security/util/aw;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->g:Lcom/keniu/security/util/aw;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->d:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b:Lcom/keniu/security/traffic/y;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const v7, 0x7f0b02d4

    const v6, 0x7f030034

    const/4 v5, 0x1

    .line 224
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->a()Lcom/ijinshan/kpref/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/t;->a(Landroid/content/Context;)Lcom/ijinshan/kpref/PreferenceScreen;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->a(Lcom/ijinshan/kpref/PreferenceScreen;)V

    .line 227
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b:Lcom/keniu/security/traffic/y;

    .line 229
    new-instance v1, Lcom/ijinshan/kpref/Preference;

    invoke-direct {v1, p0}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;)V

    .line 230
    const v2, 0x7f0b02df

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->e(I)V

    .line 232
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    const-string v2, ""

    .line 243
    :goto_0
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    invoke-virtual {v1, v7}, Lcom/ijinshan/kpref/Preference;->f(I)V

    .line 247
    :goto_1
    invoke-virtual {v1, v6}, Lcom/ijinshan/kpref/Preference;->c(I)V

    .line 249
    new-instance v2, Lcom/keniu/security/traffic/fl;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/fl;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)V

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 264
    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 266
    new-instance v1, Lcom/ijinshan/kpref/Preference;

    invoke-direct {v1, p0}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;)V

    .line 267
    const v2, 0x7f0b02e0

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->e(I)V

    .line 269
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    const-string v2, ""

    .line 274
    :goto_2
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 275
    invoke-virtual {v1, v7}, Lcom/ijinshan/kpref/Preference;->f(I)V

    .line 279
    :goto_3
    invoke-virtual {v1, v6}, Lcom/ijinshan/kpref/Preference;->c(I)V

    .line 281
    new-instance v2, Lcom/keniu/security/traffic/fm;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/fm;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)V

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 296
    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 298
    new-instance v1, Lcom/ijinshan/kpref/Preference;

    invoke-direct {v1, p0}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;)V

    .line 299
    const v2, 0x7f0b02e1

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->e(I)V

    .line 301
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 302
    const-string v2, ""

    .line 306
    :goto_4
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 307
    invoke-virtual {v1, v7}, Lcom/ijinshan/kpref/Preference;->f(I)V

    .line 311
    :goto_5
    invoke-virtual {v1, v6}, Lcom/ijinshan/kpref/Preference;->c(I)V

    .line 313
    new-instance v2, Lcom/keniu/security/traffic/fn;

    invoke-direct {v2, p0}, Lcom/keniu/security/traffic/fn;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)V

    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 335
    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/PreferenceScreen;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 337
    return-void

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-object v3, v3, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    goto/16 :goto_0

    .line 239
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-object v3, v3, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-object v3, v3, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 246
    :cond_2
    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 272
    :cond_3
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    goto/16 :goto_2

    .line 278
    :cond_4
    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 304
    :cond_5
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b:Lcom/keniu/security/traffic/y;

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    goto/16 :goto_4

    .line 310
    :cond_6
    invoke-virtual {v1, v2}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 213
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    move v1, v4

    .line 215
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 216
    aget-object v2, p1, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 220
    :goto_1
    return v0

    .line 215
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 220
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->requestWindowFeature(I)Z

    .line 69
    invoke-super {p0, p1}, Lcom/keniu/security/util/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f030113

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->c()V

    .line 72
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 73
    const v0, 0x7f0803e8

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->e:Landroid/widget/Button;

    .line 74
    const v0, 0x7f0803e9

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->f:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/traffic/fi;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/fi;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/traffic/fk;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/fk;-><init>(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->finish()V

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/keniu/security/util/BasePreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->onResume()V

    .line 205
    sget-boolean v0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->a:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->a:Z

    .line 207
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->c()V

    .line 209
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/keniu/security/util/BasePreferenceActivity;->onStart()V

    .line 199
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->c()V

    .line 200
    return-void
.end method
