.class public Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "AppDetailFragment.java"


# instance fields
.field final a:Ljava/text/NumberFormat;

.field final b:Lcom/avast/android/mobilesecurity/app/manager/h;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lcom/avast/android/generic/ui/widget/SlideBlock;

.field private g:Landroid/content/pm/PackageManager;

.field private h:Landroid/content/pm/ApplicationInfo;

.field private i:Landroid/content/pm/PackageInfo;

.field private j:Lcom/avast/android/mobilesecurity/app/manager/a/b;

.field private k:Lcom/avast/android/mobilesecurity/t;

.field private l:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

.field private m:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

.field private n:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

.field private o:Z

.field private p:Z

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

.field private s:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

.field private t:Lcom/avast/android/mobilesecurity/app/manager/g;

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->o:Z

    .line 115
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->a:Ljava/text/NumberFormat;

    .line 119
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/manager/a;-><init>(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->q:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/b;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/manager/b;-><init>(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->r:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    .line 146
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/c;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/manager/c;-><init>(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->s:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    .line 632
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/h;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/manager/h;-><init>(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    .line 645
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput p1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->d:I

    return p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->d()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->g()V

    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f:Lcom/avast/android/generic/ui/widget/SlideBlock;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f:Lcom/avast/android/generic/ui/widget/SlideBlock;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/SlideBlock;->a()V

    .line 329
    :cond_0
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->k:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aK()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 339
    :goto_0
    const v0, 0x7f0700d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/SlideBlock;

    .line 340
    if-eqz v1, :cond_1

    .line 341
    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/SlideBlock;->setVisibility(I)V

    .line 343
    const v0, 0x7f0700da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->l:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    .line 344
    const v0, 0x7f0700db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->m:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    .line 345
    const v0, 0x7f0700dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->n:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    .line 347
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->l:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->o:Z

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->g(Z)V

    .line 348
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->m:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->o:Z

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->g(Z)V

    .line 349
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->n:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->o:Z

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->g(Z)V

    .line 351
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->l:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const v1, 0x7f0c036d

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->l:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->b(I)V

    .line 353
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->l:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c()V

    .line 355
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->m:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const v1, 0x7f0c036e

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->m:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->b(I)V

    .line 357
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->m:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c()V

    .line 359
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->n:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const v1, 0x7f0c036f

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->n:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->b(I)V

    .line 361
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->n:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c()V

    .line 363
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->d()V

    .line 367
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 335
    goto/16 :goto_0

    .line 365
    :cond_1
    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/SlideBlock;->setVisibility(I)V

    goto :goto_1
.end method

.method private d()V
    .locals 20

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->l:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->m:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->n:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    if-eqz v2, :cond_3

    .line 372
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 375
    invoke-static {}, Lcom/avast/android/mobilesecurity/r;->a()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/avast/android/mobilesecurity/r;->a:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 379
    if-eqz v2, :cond_2

    .line 380
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    :cond_0
    :try_start_1
    invoke-static {v2, v8}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Landroid/database/Cursor;Ljava/util/HashMap;)Lcom/avast/android/mobilesecurity/app/trafficinfo/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 387
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 390
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;

    move-object/from16 v19, v0

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->l:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v3, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v5, v5, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v7, v7, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v9, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v11, v11, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v13, v13, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    move-object/from16 v0, v19

    iget-object v15, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v15, v15, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v2 .. v18}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(JJJJJJJJ)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->m:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v3, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v5, v5, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v7, v7, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v9, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v11, v11, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v13, v13, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    move-object/from16 v0, v19

    iget-object v15, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v15, v15, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v2 .. v18}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(JJJJJJJJ)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->n:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v3, v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v5, v5, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v7, v7, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v9, v9, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v11, v11, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v13, v13, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    move-object/from16 v0, v19

    iget-object v15, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    iget-wide v15, v15, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v2 .. v18}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(JJJJJJJJ)V

    .line 416
    :cond_3
    :goto_1
    return-void

    .line 384
    :catch_0
    move-exception v3

    .line 385
    const-string v4, "AvastMobileSecurityNetworkInfo"

    const-string v5, "Can not read network info"

    invoke-static {v4, v5, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 412
    :catch_1
    move-exception v2

    .line 413
    const-string v3, "AvastMobileSecurity"

    const-string v4, "Somehow could not update app data info"

    invoke-static {v3, v4, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 408
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->l:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-virtual/range {v2 .. v18}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(JJJJJJJJ)V

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->m:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-virtual/range {v2 .. v18}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(JJJJJJJJ)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->n:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-virtual/range {v2 .. v18}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(JJJJJJJJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method private d(Landroid/view/View;)V
    .locals 12
    .parameter

    .prologue
    .line 424
    new-instance v2, Ljava/util/EnumMap;

    const-class v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-direct {v2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 426
    const-class v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    .line 427
    new-instance v3, Lcom/avast/android/mobilesecurity/app/manager/f;

    invoke-direct {v3}, Lcom/avast/android/mobilesecurity/app/manager/f;-><init>()V

    .line 428
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "l_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/advisor/h;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/avast/android/mobilesecurity/app/manager/f;->a:Ljava/lang/String;

    .line 430
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 434
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->i:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 435
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->i:Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_5

    aget-object v6, v4, v1

    .line 436
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->i:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_2

    .line 435
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 441
    :cond_2
    sget-object v0, Lcom/avast/android/mobilesecurity/app/advisor/g;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    .line 442
    if-eqz v0, :cond_1

    .line 446
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/manager/f;

    .line 447
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "."

    const-string v9, "_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 449
    if-lez v7, :cond_3

    .line 450
    iget-object v8, v0, Lcom/avast/android/mobilesecurity/app/manager/f;->b:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :goto_3
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "descr_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    const-string v10, "_"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 456
    if-lez v7, :cond_4

    .line 457
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/manager/f;->c:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 452
    :cond_3
    iget-object v7, v0, Lcom/avast/android/mobilesecurity/app/manager/f;->b:Ljava/util/List;

    const-string v8, "."

    const-string v9, "_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 459
    :cond_4
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/manager/f;->c:Ljava/util/List;

    const-string v7, "."

    const-string v8, "_"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 464
    :cond_5
    const v0, 0x7f0700de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 465
    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 467
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v8, v0

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 468
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/avast/android/mobilesecurity/app/manager/f;

    .line 469
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/advisor/h;->g:Lcom/avast/android/mobilesecurity/app/advisor/h;

    if-ne v0, v1, :cond_7

    .line 470
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/e;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "groupId = ? and packageName = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v11, Lcom/avast/android/mobilesecurity/app/advisor/h;->g:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-virtual {v11}, Lcom/avast/android/mobilesecurity/app/advisor/h;->a()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    iget-object v11, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c:Ljava/lang/String;

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 474
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 475
    const v0, 0x7f030090

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 477
    iget-object v2, v7, Lcom/avast/android/mobilesecurity/app/manager/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 479
    const v0, 0x7f03008f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 480
    const v0, 0x7f0701be

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 487
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 488
    const v3, 0x7f0c0297

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    const v0, 0x7f0701bf

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 490
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 491
    const v3, 0x7f0c0298

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    const/4 v8, 0x1

    .line 496
    :cond_6
    if-eqz v1, :cond_7

    .line 497
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_7
    iget-object v0, v7, Lcom/avast/android/mobilesecurity/app/manager/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 502
    const v0, 0x7f030090

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 504
    iget-object v1, v7, Lcom/avast/android/mobilesecurity/app/manager/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 506
    const/4 v0, 0x0

    move v2, v0

    :goto_5
    iget-object v0, v7, Lcom/avast/android/mobilesecurity/app/manager/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 507
    const v0, 0x7f03008f

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 508
    const v0, 0x7f0701be

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 509
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 510
    iget-object v1, v7, Lcom/avast/android/mobilesecurity/app/manager/f;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    const v0, 0x7f0701bf

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 512
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 513
    iget-object v1, v7, Lcom/avast/android/mobilesecurity/app/manager/f;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 506
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 496
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_8

    .line 497
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 516
    :cond_9
    const/4 v0, 0x1

    :goto_6
    move v8, v0

    .line 518
    goto/16 :goto_4

    .line 520
    :cond_a
    if-nez v8, :cond_b

    .line 521
    const v0, 0x7f03008f

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 522
    const v0, 0x7f0701be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c02e2

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    const-string v0, "permission name id 3 = 2131165630"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 524
    const v0, 0x7f0701bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    const-string v0, "permission descr id 3 = 2131165631"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 526
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 528
    :cond_b
    return-void

    :cond_c
    move v0, v8

    goto :goto_6
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->d:I

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 539
    return-void

    .line 537
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->u:Z

    return v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->d:I

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 549
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 550
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 551
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 552
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 564
    :goto_0
    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 565
    return-void

    .line 559
    :cond_0
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const-string v0, "pkg"

    .line 560
    :goto_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 559
    :cond_1
    const-string v0, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/b;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->j:Lcom/avast/android/mobilesecurity/app/manager/a/b;

    return-object v0
.end method

.method private g()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 569
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 572
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 574
    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 828
    :try_start_0
    const-string v0, "AvastMobileSecurity"

    const-string v1, "Registered stats receiver"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 831
    const-string v1, "com.avast.android.mobilesecurity.trafficinfo.STATS_DB_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->e()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 839
    :try_start_0
    const-string v0, "AvastMobileSecurity"

    const-string v1, "Unregistered stats receiver"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_0
    return-void

    .line 842
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "/ms/appManager/detail"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 167
    const v0, 0x7f0c02c3

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onAttach(Landroid/app/Activity;)V

    .line 545
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 184
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->k:Lcom/avast/android/mobilesecurity/t;

    .line 187
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/u;->a(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->o:Z

    .line 189
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->d:I

    .line 191
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "expandBlock"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->e:I

    .line 192
    iput-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f:Lcom/avast/android/generic/ui/widget/SlideBlock;

    .line 194
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/b;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->j:Lcom/avast/android/mobilesecurity/app/manager/a/b;

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->g:Landroid/content/pm/PackageManager;

    .line 198
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->g:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h:Landroid/content/pm/ApplicationInfo;

    .line 200
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->g:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->i:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "notification_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/notification/j;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "notification_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/notification/j;->a(J)V

    .line 215
    :cond_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h:Landroid/content/pm/ApplicationInfo;

    .line 203
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c02d4

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h:Landroid/content/pm/ApplicationInfo;

    const/4 v1, -0x1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 206
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->i:Landroid/content/pm/PackageInfo;

    .line 207
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->i:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c02d5

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->i:Landroid/content/pm/PackageInfo;

    iput-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const v11, 0x7f0700df

    const/4 v6, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 306
    :goto_0
    return-object v0

    .line 222
    :cond_1
    iput-boolean v6, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->u:Z

    .line 224
    const v0, 0x7f030039

    invoke-virtual {p1, v0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 226
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->e:I

    if-lez v0, :cond_2

    .line 227
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->e:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 228
    instance-of v3, v0, Lcom/avast/android/generic/ui/widget/SlideBlock;

    if-eqz v3, :cond_2

    .line 229
    check-cast v0, Lcom/avast/android/generic/ui/widget/SlideBlock;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f:Lcom/avast/android/generic/ui/widget/SlideBlock;

    .line 233
    :cond_2
    const v0, 0x7f0701b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 235
    :try_start_0
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_1
    const v0, 0x7f0701ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    const-string v3, "app name id = 2131165626"

    invoke-static {v3}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 244
    :try_start_1
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :goto_2
    const v0, 0x7f0701bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0c02dd

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->i:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const v0, 0x7f0700cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->a:Ljava/text/NumberFormat;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->j:Lcom/avast/android/mobilesecurity/app/manager/a/b;

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/avast/android/mobilesecurity/app/manager/a/b;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c00d1

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const v0, 0x7f0700ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/avast/android/mobilesecurity/app/manager/d;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/manager/d;-><init>(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const v0, 0x7f0700cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/avast/android/mobilesecurity/app/manager/e;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/manager/e;-><init>(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->d(Landroid/view/View;)V

    .line 273
    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->k:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v2

    .line 277
    const v0, 0x7f0700e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    .line 278
    if-eqz v2, :cond_5

    .line 280
    :try_start_2
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->g:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 281
    if-nez v2, :cond_3

    .line 282
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c:Ljava/lang/String;

    .line 284
    :cond_3
    new-instance v3, Lcom/avast/android/mobilesecurity/app/firewall/a/d;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/l;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->s:Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    invoke-direct {v3, v4, v2, v5}, Lcom/avast/android/mobilesecurity/app/firewall/a/d;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/avast/android/mobilesecurity/app/firewall/a/b;)V

    .line 286
    invoke-virtual {v0, v3}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(Lcom/avast/android/generic/d/e;)V

    .line 287
    const v2, 0x7f0c033e

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 288
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->k:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->aJ()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 289
    const v2, 0x7f0c033f

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0305

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 302
    :goto_3
    iput-boolean v9, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->p:Z

    .line 304
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h()V

    move-object v0, v1

    .line 306
    goto/16 :goto_0

    .line 236
    :catch_0
    move-exception v3

    .line 238
    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 245
    :catch_1
    move-exception v3

    .line 247
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0c02d4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 292
    :catch_2
    move-exception v2

    .line 293
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v3, v2}, La/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 294
    invoke-virtual {v0, v10}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setVisibility(I)V

    .line 295
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 298
    :cond_5
    invoke-virtual {v0, v10}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setVisibility(I)V

    .line 299
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDestroy()V

    .line 319
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->i()V

    .line 320
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 578
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->u:Z

    .line 579
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->t:Lcom/avast/android/mobilesecurity/app/manager/g;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->t:Lcom/avast/android/mobilesecurity/app/manager/g;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/g;->cancel(Z)Z

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->t:Lcom/avast/android/mobilesecurity/app/manager/g;

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 586
    :try_start_0
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->p:Z

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->r:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onPause()V

    .line 594
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    const-string v1, "Firewall: Error applying rules"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 599
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 600
    iput-boolean v6, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->u:Z

    .line 602
    const-string v1, "ms-AppManager"

    const-string v2, "Open App Detail"

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c:Ljava/lang/String;

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 604
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/g;-><init>(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;Lcom/avast/android/mobilesecurity/app/manager/a;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->t:Lcom/avast/android/mobilesecurity/app/manager/g;

    .line 605
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->t:Lcom/avast/android/mobilesecurity/app/manager/g;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 607
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 311
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onStart()V

    .line 312
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c()V

    .line 313
    return-void
.end method
