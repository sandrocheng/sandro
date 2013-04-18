.class final Lcom/ijinshan/kpref/p;
.super Landroid/widget/BaseAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Lcom/ijinshan/kpref/l;


# static fields
.field private static final a:Ljava/lang/String; = "PreferenceGroupAdapter"


# instance fields
.field private b:Lcom/ijinshan/kpref/PreferenceGroup;

.field private c:Ljava/util/List;

.field private d:Ljava/util/ArrayList;

.field private e:Lcom/ijinshan/kpref/r;

.field private f:Z

.field private volatile g:Z

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kpref/PreferenceGroup;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 75
    new-instance v0, Lcom/ijinshan/kpref/r;

    invoke-direct {v0}, Lcom/ijinshan/kpref/r;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/p;->e:Lcom/ijinshan/kpref/r;

    .line 80
    iput-boolean v1, p0, Lcom/ijinshan/kpref/p;->f:Z

    .line 82
    iput-boolean v1, p0, Lcom/ijinshan/kpref/p;->g:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/p;->h:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/ijinshan/kpref/q;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/q;-><init>(Lcom/ijinshan/kpref/p;)V

    iput-object v0, p0, Lcom/ijinshan/kpref/p;->i:Ljava/lang/Runnable;

    .line 116
    iput-object p1, p0, Lcom/ijinshan/kpref/p;->b:Lcom/ijinshan/kpref/PreferenceGroup;

    .line 118
    iget-object v0, p0, Lcom/ijinshan/kpref/p;->b:Lcom/ijinshan/kpref/PreferenceGroup;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/PreferenceGroup;->a(Lcom/ijinshan/kpref/l;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/p;->c:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/p;->d:Ljava/util/ArrayList;

    .line 123
    invoke-direct {p0}, Lcom/ijinshan/kpref/p;->c()V

    .line 124
    return-void
.end method

.method private a(I)Lcom/ijinshan/kpref/Preference;
    .locals 1
    .parameter

    .prologue
    .line 202
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/ijinshan/kpref/p;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kpref/p;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kpref/Preference;

    move-object v0, p0

    goto :goto_0
.end method

.method private static a(Lcom/ijinshan/kpref/Preference;Lcom/ijinshan/kpref/r;)Lcom/ijinshan/kpref/r;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 178
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 179
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/kpref/r;->a(Lcom/ijinshan/kpref/r;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->s()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ijinshan/kpref/r;->a(Lcom/ijinshan/kpref/r;I)I

    .line 181
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->u()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ijinshan/kpref/r;->b(Lcom/ijinshan/kpref/r;I)I

    .line 182
    return-object v0

    .line 178
    :cond_0
    new-instance v0, Lcom/ijinshan/kpref/r;

    invoke-direct {v0}, Lcom/ijinshan/kpref/r;-><init>()V

    goto :goto_0
.end method

.method private a(Lcom/ijinshan/kpref/Preference;)V
    .locals 3
    .parameter

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ijinshan/kpref/p;->a(Lcom/ijinshan/kpref/Preference;Lcom/ijinshan/kpref/r;)Lcom/ijinshan/kpref/r;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/ijinshan/kpref/p;->d:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 190
    if-gez v1, :cond_0

    .line 192
    mul-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 193
    iget-object v2, p0, Lcom/ijinshan/kpref/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kpref/p;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ijinshan/kpref/p;->c()V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/ijinshan/kpref/PreferenceGroup;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-virtual {p2}, Lcom/ijinshan/kpref/PreferenceGroup;->f()V

    .line 151
    invoke-virtual {p2}, Lcom/ijinshan/kpref/PreferenceGroup;->b()I

    move-result v3

    .line 152
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    .line 153
    invoke-virtual {p2, v4}, Lcom/ijinshan/kpref/PreferenceGroup;->a(I)Lcom/ijinshan/kpref/Preference;

    move-result-object v2

    .line 155
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-boolean v1, p0, Lcom/ijinshan/kpref/p;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/ijinshan/kpref/Preference;->L()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/ijinshan/kpref/p;->a(Lcom/ijinshan/kpref/Preference;Lcom/ijinshan/kpref/r;)Lcom/ijinshan/kpref/r;

    move-result-object v1

    iget-object v5, p0, Lcom/ijinshan/kpref/p;->d:Ljava/util/ArrayList;

    invoke-static {v5, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_0

    mul-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/ijinshan/kpref/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 161
    :cond_0
    instance-of v1, v2, Lcom/ijinshan/kpref/PreferenceGroup;

    if-eqz v1, :cond_1

    .line 162
    move-object v0, v2

    check-cast v0, Lcom/ijinshan/kpref/PreferenceGroup;

    move-object v1, v0

    .line 163
    invoke-virtual {v1}, Lcom/ijinshan/kpref/PreferenceGroup;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    invoke-direct {p0, p1, v1}, Lcom/ijinshan/kpref/p;->a(Ljava/util/List;Lcom/ijinshan/kpref/PreferenceGroup;)V

    .line 168
    :cond_1
    invoke-virtual {v2, p0}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/l;)V

    .line 152
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 170
    :cond_2
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lcom/ijinshan/kpref/p;->g:Z

    if-eqz v0, :cond_0

    .line 129
    monitor-exit p0

    .line 144
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kpref/p;->g:Z

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ijinshan/kpref/p;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    iget-object v1, p0, Lcom/ijinshan/kpref/p;->b:Lcom/ijinshan/kpref/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Lcom/ijinshan/kpref/p;->a(Ljava/util/List;Lcom/ijinshan/kpref/PreferenceGroup;)V

    .line 137
    iput-object v0, p0, Lcom/ijinshan/kpref/p;->c:Ljava/util/List;

    .line 139
    invoke-virtual {p0}, Lcom/ijinshan/kpref/p;->notifyDataSetChanged()V

    .line 141
    monitor-enter p0

    .line 142
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/ijinshan/kpref/p;->g:Z

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/ijinshan/kpref/p;->notifyDataSetChanged()V

    .line 240
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ijinshan/kpref/p;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ijinshan/kpref/p;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Lcom/ijinshan/kpref/p;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ijinshan/kpref/p;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/ijinshan/kpref/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/p;->a(I)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 207
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/ijinshan/kpref/p;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000

    .line 208
    :goto_0
    return-wide v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/p;->a(I)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kpref/Preference;->z()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 254
    iget-boolean v0, p0, Lcom/ijinshan/kpref/p;->f:Z

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kpref/p;->f:Z

    .line 258
    :cond_0
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/p;->a(I)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/ijinshan/kpref/Preference;->L()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 271
    :cond_1
    :goto_0
    return v0

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/ijinshan/kpref/p;->e:Lcom/ijinshan/kpref/r;

    invoke-static {v0, v1}, Lcom/ijinshan/kpref/p;->a(Lcom/ijinshan/kpref/Preference;Lcom/ijinshan/kpref/r;)Lcom/ijinshan/kpref/r;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/p;->e:Lcom/ijinshan/kpref/r;

    .line 265
    iget-object v0, p0, Lcom/ijinshan/kpref/p;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ijinshan/kpref/p;->e:Lcom/ijinshan/kpref/r;

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 266
    if-gez v0, :cond_1

    move v0, v2

    .line 269
    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/p;->a(I)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/ijinshan/kpref/p;->e:Lcom/ijinshan/kpref/r;

    invoke-static {v0, v1}, Lcom/ijinshan/kpref/p;->a(Lcom/ijinshan/kpref/Preference;Lcom/ijinshan/kpref/r;)Lcom/ijinshan/kpref/r;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kpref/p;->e:Lcom/ijinshan/kpref/r;

    .line 218
    iget-object v1, p0, Lcom/ijinshan/kpref/p;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ijinshan/kpref/p;->e:Lcom/ijinshan/kpref/r;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 222
    :goto_0
    invoke-virtual {v0, v1, p3}, Lcom/ijinshan/kpref/Preference;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 277
    iget-boolean v0, p0, Lcom/ijinshan/kpref/p;->f:Z

    if-nez v0, :cond_0

    .line 278
    iput-boolean v1, p0, Lcom/ijinshan/kpref/p;->f:Z

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 227
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/ijinshan/kpref/p;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/p;->a(I)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kpref/Preference;->y()Z

    move-result v0

    goto :goto_0
.end method
