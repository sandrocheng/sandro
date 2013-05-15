.class public Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "ManagerAppFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field a:Landroid/os/Handler;

.field b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/avast/android/generic/ae;

.field private h:J

.field private i:[Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:J

.field private o:Lcom/avast/android/mobilesecurity/app/manager/a/e;

.field private p:Landroid/widget/RadioButton;

.field private q:Landroid/widget/RadioButton;

.field private r:Landroid/widget/RadioButton;

.field private s:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 87
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->j:Z

    .line 92
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->m:Z

    .line 431
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/e;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->o:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;Lcom/avast/android/mobilesecurity/app/manager/a/e;)Lcom/avast/android/mobilesecurity/app/manager/a/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->o:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    return-object p1
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->k:Z

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    const-string v0, "ManagerAppFragment.refresh() - END"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 294
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v0, "ManagerAppFragment.refresh()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    .line 283
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 284
    const-string v0, "listType"

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v0, "order"

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    if-nez p1, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/e/a;->changeCursor(Landroid/database/Cursor;)V

    .line 290
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->n:J

    .line 291
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->f:I

    invoke-virtual {v1, v0, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/m;->o()V

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b:J

    .line 293
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->g()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    return v0
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    .line 329
    iput p1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->c:I

    .line 331
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 332
    sget-object v1, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    sget-object v2, Lcom/avast/android/mobilesecurity/app/manager/a/a/c;->l:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 335
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0700cc

    invoke-static {v2, v1, v0, v3}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailActivity;->call(Landroid/content/Context;Ljava/lang/String;II)V

    .line 336
    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->h:J

    return-wide v0
.end method

.method private c(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 172
    const v0, 0x7f0700e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->s:Landroid/widget/RadioButton;

    .line 173
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->s:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 174
    const v0, 0x7f0700e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->r:Landroid/widget/RadioButton;

    .line 175
    const v0, 0x7f0700e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->q:Landroid/widget/RadioButton;

    .line 176
    const v0, 0x7f0700e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->p:Landroid/widget/RadioButton;

    .line 178
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/i;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/manager/i;-><init>(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;)V

    .line 198
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->s:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 199
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->r:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 200
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->q:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 201
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->p:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->j:Z

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->j:Z

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Z)V

    .line 268
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Z)V

    .line 272
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 300
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->j:Z

    if-eqz v0, :cond_3

    .line 301
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->s:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 304
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 305
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->r:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 307
    :cond_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 308
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->q:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 310
    :cond_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    if-ne v0, v2, :cond_3

    .line 311
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->p:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 314
    :cond_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    return v0
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 415
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iput p1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    .line 419
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->g:Lcom/avast/android/generic/ae;

    const-string v1, "am_order"

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;I)V

    .line 420
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->g:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->b()Z

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->m:Z

    .line 422
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d()V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0xbb8

    const/4 v8, 0x1

    .line 363
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_4

    .line 364
    check-cast p1, Lcom/avast/android/mobilesecurity/app/manager/a/a/b;

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManagerAppFragment.onLoadFinished() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 367
    invoke-interface {p1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/b;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->h:J

    .line 368
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    invoke-virtual {v0, p2}, Landroid/support/v4/e/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    if-ne v0, v8, :cond_1

    .line 374
    const-string v1, "ms-AppManager"

    const-string v2, "countOfAllApps"

    const-string v3, ""

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 375
    const-string v1, "ms-AppManager"

    const-string v2, "timeToLoadAllApps"

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->i:[Ljava/lang/String;

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    aget-object v3, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->n:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    int-to-long v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 379
    :cond_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    if-nez v0, :cond_2

    .line 380
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->m:Z

    if-nez v0, :cond_2

    .line 381
    const-string v1, "ms-AppManager"

    const-string v2, "countOfRunningApps"

    const-string v3, ""

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 382
    const-string v1, "ms-AppManager"

    const-string v2, "timeToLoadRunningApps"

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->i:[Ljava/lang/String;

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    aget-object v3, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->n:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    int-to-long v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 384
    iput-boolean v8, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->m:Z

    .line 388
    :cond_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 390
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManagerAppFragment.onLoadFinished() - REFRESH INTERVAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v9, v0

    iget-wide v5, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b:J

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 393
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a:Landroid/os/Handler;

    const/4 v3, 0x0

    sub-long v0, v9, v0

    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 396
    :cond_4
    return-void
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f0c01ed

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->o:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->o:Lcom/avast/android/mobilesecurity/app/manager/a/e;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/a/e;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e()V

    .line 358
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 212
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/j;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/manager/j;-><init>(Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 213
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 216
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 217
    const-string v2, "listType"

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const-string v2, "order"

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->n:J

    .line 220
    iget v2, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->f:I

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 221
    const-string v0, "ManagerAppFragment.onActivityCreated()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->l:Z

    .line 224
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->g()V

    .line 225
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->setRetainInstance(Z)V

    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v2

    const-string v1, "size"

    aput-object v1, v0, v3

    const-string v1, "memory"

    aput-object v1, v0, v4

    const-string v1, "cpu"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->i:[Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a:Landroid/os/Handler;

    .line 121
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->g:Lcom/avast/android/generic/ae;

    .line 123
    if-eqz p1, :cond_2

    .line 124
    const-string v0, "listType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order_by"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    .line 130
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    if-ne v0, v5, :cond_1

    .line 131
    :cond_0
    iput v2, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->d:I

    .line 133
    :cond_1
    const v0, 0xd6d8

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->f:I

    .line 134
    return-void

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "list_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManagerAppFragment.onCreateLoader() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 341
    const-string v0, "listType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 342
    const-string v1, "order"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 343
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 344
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/a;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/a;-><init>(Landroid/content/Context;I)V

    .line 346
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/h;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    const v0, 0x7f03005b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->c(Landroid/view/View;)V

    .line 145
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-direct {p0, p3}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->b(I)V

    .line 326
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 2
    .parameter

    .prologue
    .line 400
    const-string v0, "ManagerAppFragment.onLoaderReset()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onPause()V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->k:Z

    .line 246
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onResume()V

    .line 230
    iput-boolean v3, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->k:Z

    .line 231
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->l:Z

    if-nez v0, :cond_0

    .line 235
    const-string v0, "ManagerAppFragment.onResume() - QUEUE MESSAGE"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 238
    :cond_0
    iput-boolean v3, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->l:Z

    .line 239
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->g()V

    .line 240
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 319
    const-string v0, "curChoice"

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    const-string v0, "listType"

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 150
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 152
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 153
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->j:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->r:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->q:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->j:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->r:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;->q:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method
