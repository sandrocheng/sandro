.class public Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "GlobalActivityLogFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/t;

.field private b:Landroid/widget/Button;

.field private c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Ljava/util/List;

.field private f:[Z

.field private g:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 458
    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 4
    .parameter

    .prologue
    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 137
    new-instance v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/o;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/o;-><init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 144
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)[Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->f:[Z

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->d()V

    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->g:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aU()Ljava/util/Set;

    move-result-object v2

    move v0, v1

    .line 182
    :goto_0
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->f:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->f:[Z

    aput-boolean v1, v3, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v1

    .line 188
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 189
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 190
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->f:[Z

    const/4 v4, 0x1

    aput-boolean v4, v0, v2

    goto :goto_1

    .line 188
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 200
    :cond_3
    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)Lcom/avast/android/mobilesecurity/t;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->a:Lcom/avast/android/mobilesecurity/t;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->a()Ljava/util/List;

    move-result-object v0

    .line 272
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 278
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_0
    const-string v0, "filter_types"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 283
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v2, 0x2717

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 285
    return-void
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3

    .prologue
    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->f:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->f:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 306
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    return-object v1
.end method

.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;

    invoke-virtual {v0, p2}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->changeCursor(Landroid/database/Cursor;)V

    .line 265
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 205
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;

    .line 206
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->a:Lcom/avast/android/mobilesecurity/t;

    .line 87
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;->a(Landroid/content/res/Resources;)Ljava/util/Map;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->g:Ljava/util/LinkedHashMap;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->e:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->f:[Z

    .line 94
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/n;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/n;-><init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->d:Landroid/content/BroadcastReceiver;

    .line 125
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 230
    .line 231
    if-eqz p2, :cond_4

    const-string v0, "filter_types"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 232
    const-string v0, "filter_types"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 237
    :goto_0
    if-eqz v0, :cond_3

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 242
    const-string v4, "type = -1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 245
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;->a(I)Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 247
    const-string v6, "type = ?"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v4, 0x4

    if-le v0, v4, :cond_2

    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 254
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 258
    :goto_2
    new-instance v0, Landroid/support/v4/a/f;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/m;->a()Landroid/net/Uri;

    move-result-object v2

    const-string v6, "date DESC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/f;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    move-object v5, v3

    move-object v4, v3

    goto :goto_2

    :cond_4
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    const v0, 0x7f030058

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;

    invoke-virtual {v0, p3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->a(I)V

    .line 295
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 2
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->changeCursor(Landroid/database/Cursor;)V

    .line 290
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onResume()V

    .line 225
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->d()V

    .line 226
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 211
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onStart()V

    .line 212
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.avast.android.mobilesecurity.app.globalactivitylog.ACTION_FILTER_SELECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 214
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onStop()V

    .line 219
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;)V

    .line 220
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->getListView()Landroid/widget/ListView;

    .line 163
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->c()V

    .line 165
    const v0, 0x7f070138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->b:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/p;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/p;-><init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/GlobalActivityLogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method
