.class public abstract Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "AbstractFileBrowserFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field protected a:Lcom/avast/android/generic/filebrowser/a;

.field protected b:Lcom/avast/android/generic/filebrowser/e;

.field protected c:Ljava/lang/String;

.field private d:Lcom/avast/android/generic/filebrowser/d;

.field private e:Z

.field private f:Landroid/widget/ListView;

.field private g:Ljava/util/LinkedList;

.field private h:Lcom/avast/android/generic/filebrowser/f;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/lang/String;

.field private n:Lcom/actionbarsherlock/view/ActionMode;

.field private o:Lcom/actionbarsherlock/view/ActionMode$Callback;

.field private p:Lcom/actionbarsherlock/view/ActionMode$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/avast/android/generic/filebrowser/b;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/filebrowser/b;-><init>(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)V

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->o:Lcom/actionbarsherlock/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Lcom/actionbarsherlock/view/ActionMode$Callback;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->p:Lcom/actionbarsherlock/view/ActionMode$Callback;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;Lcom/actionbarsherlock/view/ActionMode;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->n:Lcom/actionbarsherlock/view/ActionMode;

    return-object p1
.end method

.method private a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 371
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->p:Lcom/actionbarsherlock/view/ActionMode$Callback;

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/filebrowser/a;->a(I)Lcom/avast/android/generic/filebrowser/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/avast/android/generic/filebrowser/f;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d:Lcom/avast/android/generic/filebrowser/d;

    sget-object v1, Lcom/avast/android/generic/filebrowser/d;->a:Lcom/avast/android/generic/filebrowser/d;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/filebrowser/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/filebrowser/a;->a(I)Lcom/avast/android/generic/filebrowser/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/avast/android/generic/filebrowser/f;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d:Lcom/avast/android/generic/filebrowser/d;

    sget-object v1, Lcom/avast/android/generic/filebrowser/d;->b:Lcom/avast/android/generic/filebrowser/d;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/filebrowser/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 382
    :cond_4
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 383
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->n:Lcom/actionbarsherlock/view/ActionMode;

    if-nez v0, :cond_5

    .line 384
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->o:Lcom/actionbarsherlock/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->n:Lcom/actionbarsherlock/view/ActionMode;

    .line 386
    :cond_5
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->n:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/avast/android/generic/x;->g:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 389
    :cond_6
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->n:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->n:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->k:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Lcom/avast/android/generic/filebrowser/f;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->h:Lcom/avast/android/generic/filebrowser/f;

    return-object v0
.end method

.method private h()Lcom/avast/android/generic/filebrowser/d;
    .locals 3

    .prologue
    .line 182
    sget-object v0, Lcom/avast/android/generic/filebrowser/d;->c:Lcom/avast/android/generic/filebrowser/d;

    .line 183
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pick"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pick"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :try_start_0
    invoke-static {v0}, Lcom/avast/android/generic/filebrowser/d;->valueOf(Ljava/lang/String;)Lcom/avast/android/generic/filebrowser/d;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 191
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    sget-object v0, Lcom/avast/android/generic/filebrowser/d;->c:Lcom/avast/android/generic/filebrowser/d;

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->h:Lcom/avast/android/generic/filebrowser/f;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->l:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->h:Lcom/avast/android/generic/filebrowser/f;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c(Lcom/avast/android/generic/filebrowser/f;)V

    .line 271
    :cond_0
    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->h:Lcom/avast/android/generic/filebrowser/f;

    invoke-interface {v0}, Lcom/avast/android/generic/filebrowser/f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d:Lcom/avast/android/generic/filebrowser/d;

    sget-object v1, Lcom/avast/android/generic/filebrowser/d;->a:Lcom/avast/android/generic/filebrowser/d;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/filebrowser/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d:Lcom/avast/android/generic/filebrowser/d;

    sget-object v1, Lcom/avast/android/generic/filebrowser/d;->c:Lcom/avast/android/generic/filebrowser/d;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/filebrowser/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d:Lcom/avast/android/generic/filebrowser/d;

    sget-object v1, Lcom/avast/android/generic/filebrowser/d;->b:Lcom/avast/android/generic/filebrowser/d;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/filebrowser/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d:Lcom/avast/android/generic/filebrowser/d;

    sget-object v1, Lcom/avast/android/generic/filebrowser/d;->c:Lcom/avast/android/generic/filebrowser/d;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/filebrowser/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Lcom/actionbarsherlock/view/ActionMode$Callback;
.end method

.method protected abstract a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/avast/android/generic/filebrowser/d;)Lcom/avast/android/generic/filebrowser/a;
.end method

.method protected abstract a(ILandroid/os/Bundle;)Lcom/avast/android/generic/filebrowser/e;
.end method

.method public a(Landroid/support/v4/a/m;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 289
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    if-nez v0, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d:Lcom/avast/android/generic/filebrowser/d;

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/avast/android/generic/filebrowser/d;)Lcom/avast/android/generic/filebrowser/a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    .line 291
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->n:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->n:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/avast/android/generic/x;->g:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->b:Lcom/avast/android/generic/filebrowser/e;

    invoke-virtual {v0}, Lcom/avast/android/generic/filebrowser/e;->w()Lcom/avast/android/generic/filebrowser/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d(Lcom/avast/android/generic/filebrowser/f;)V

    .line 307
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/filebrowser/a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected a(Lcom/avast/android/generic/filebrowser/f;)V
    .locals 3
    .parameter

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const v1, 0x3ac831f4

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->b(Lcom/avast/android/generic/filebrowser/f;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 418
    return-void
.end method

.method protected final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 495
    return-void
.end method

.method protected abstract b(Lcom/avast/android/generic/filebrowser/f;)Landroid/os/Bundle;
.end method

.method protected final c()Ljava/util/List;
    .locals 5

    .prologue
    .line 400
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 401
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 403
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 404
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_1
    return-object v2
.end method

.method protected c(Lcom/avast/android/generic/filebrowser/f;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    return-void
.end method

.method protected d(Lcom/avast/android/generic/filebrowser/f;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected final e()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/filebrowser/f;

    .line 464
    invoke-virtual {p0, v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Lcom/avast/android/generic/filebrowser/f;)V

    .line 465
    const/4 v0, 0x1

    .line 467
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "/filebrowser"

    return-object v0
.end method

.method protected abstract g()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    .line 165
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->g:Ljava/util/LinkedList;

    .line 166
    invoke-direct {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->h()Lcom/avast/android/generic/filebrowser/d;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d:Lcom/avast/android/generic/filebrowser/d;

    .line 167
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pick_multiple"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->e:Z

    .line 169
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a()Lcom/actionbarsherlock/view/ActionMode$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->p:Lcom/actionbarsherlock/view/ActionMode$Callback;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->m:Ljava/lang/String;

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->setRetainInstance(Z)V

    .line 173
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/filebrowser/a;->a(Ljava/util/List;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(ILandroid/os/Bundle;)Lcom/avast/android/generic/filebrowser/e;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->b:Lcom/avast/android/generic/filebrowser/e;

    .line 258
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->b:Lcom/avast/android/generic/filebrowser/e;

    invoke-virtual {v0}, Lcom/avast/android/generic/filebrowser/e;->w()Lcom/avast/android/generic/filebrowser/f;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->h:Lcom/avast/android/generic/filebrowser/f;

    .line 259
    invoke-direct {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->i()V

    .line 260
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->b:Lcom/avast/android/generic/filebrowser/e;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    sget v0, Lcom/avast/android/generic/v;->z:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 351
    iget-object v2, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->e:Z

    if-eqz v2, :cond_1

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 353
    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    iget-object v2, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v2, p3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 358
    :goto_0
    invoke-direct {p0, p3}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(I)V

    move v0, v1

    .line 361
    :cond_1
    return v0

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->n:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_1

    .line 333
    invoke-direct {p0, p3}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(I)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->f:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 336
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    invoke-virtual {v0, p3}, Lcom/avast/android/generic/filebrowser/a;->a(I)Lcom/avast/android/generic/filebrowser/f;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Lcom/avast/android/generic/filebrowser/f;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->g:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->h:Lcom/avast/android/generic/filebrowser/f;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {p0, v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Lcom/avast/android/generic/filebrowser/f;)V

    goto :goto_0

    .line 340
    :cond_2
    invoke-direct {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/avast/android/generic/filebrowser/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 344
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Landroid/support/v4/a/m;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 2
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/filebrowser/a;->a(Ljava/util/List;)V

    .line 285
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 213
    sget v0, Lcom/avast/android/generic/t;->aB:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->i:Landroid/view/View;

    .line 214
    sget v0, Lcom/avast/android/generic/t;->aQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->j:Landroid/view/View;

    .line 215
    sget v0, Lcom/avast/android/generic/t;->ab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->l:Landroid/widget/TextView;

    .line 216
    sget v0, Lcom/avast/android/generic/t;->aA:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->k:Landroid/widget/Button;

    .line 217
    invoke-direct {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->k:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->k:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/generic/filebrowser/c;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/filebrowser/c;-><init>(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->i()V

    .line 237
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const v1, 0x3ac831f4

    iget-object v2, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->h:Lcom/avast/android/generic/filebrowser/f;

    invoke-virtual {p0, v2}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->b(Lcom/avast/android/generic/filebrowser/f;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 239
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->f:Landroid/widget/ListView;

    .line 240
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->f:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 241
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->n:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->o:Lcom/actionbarsherlock/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->n:Lcom/actionbarsherlock/view/ActionMode;

    .line 246
    :cond_2
    return-void
.end method
