.class public abstract Lcom/ijinshan/kpref/PreferenceGroup;
.super Lcom/ijinshan/kpref/Preference;
.source "PreferenceGroup.java"

# interfaces
.implements Lcom/ijinshan/kpref/g;


# instance fields
.field private o:Ljava/util/List;

.field private p:Z

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ijinshan/kpref/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kpref/PreferenceGroup;->p:Z

    .line 45
    iput v2, p0, Lcom/ijinshan/kpref/PreferenceGroup;->q:I

    .line 47
    iput-boolean v2, p0, Lcom/ijinshan/kpref/PreferenceGroup;->r:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/PreferenceGroup;->o:Ljava/util/List;

    .line 54
    sget-object v0, Lcom/android/internal/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    iget-boolean v1, p0, Lcom/ijinshan/kpref/PreferenceGroup;->p:Z

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ijinshan/kpref/PreferenceGroup;->p:Z

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/ijinshan/kpref/PreferenceGroup;->p:Z

    .line 78
    return-void
.end method

.method private e(Lcom/ijinshan/kpref/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->K()V

    .line 179
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceGroup;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/ijinshan/kpref/PreferenceGroup;->p:Z

    return v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/ijinshan/kpref/PreferenceGroup;->o:Ljava/util/List;

    .line 189
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 190
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/Preference;

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/PreferenceGroup;->e(Lcom/ijinshan/kpref/Preference;)Z

    .line 189
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 192
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceGroup;->H()V

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final J()V
    .locals 3

    .prologue
    .line 261
    invoke-super {p0}, Lcom/ijinshan/kpref/Preference;->J()V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kpref/PreferenceGroup;->r:Z

    .line 268
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceGroup;->b()I

    move-result v0

    .line 269
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 270
    invoke-virtual {p0, v1}, Lcom/ijinshan/kpref/PreferenceGroup;->a(I)Lcom/ijinshan/kpref/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ijinshan/kpref/Preference;->J()V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_0
    return-void
.end method

.method protected final K()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lcom/ijinshan/kpref/Preference;->K()V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kpref/PreferenceGroup;->r:Z

    .line 280
    return-void
.end method

.method public final a(I)Lcom/ijinshan/kpref/Preference;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceGroup;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kpref/Preference;

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/ijinshan/kpref/Preference;

    invoke-virtual {p0, p1}, Lcom/ijinshan/kpref/PreferenceGroup;->c(Lcom/ijinshan/kpref/Preference;)Z

    return-void
.end method

.method protected a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 203
    invoke-super {p0}, Lcom/ijinshan/kpref/Preference;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 207
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceGroup;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final b(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/Preference;->b(Landroid/os/Bundle;)V

    .line 304
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceGroup;->b()I

    move-result v0

    .line 305
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 306
    invoke-virtual {p0, v1}, Lcom/ijinshan/kpref/PreferenceGroup;->a(I)Lcom/ijinshan/kpref/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ijinshan/kpref/Preference;->b(Landroid/os/Bundle;)V

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method

.method public final b(Lcom/ijinshan/kpref/Preference;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/ijinshan/kpref/PreferenceGroup;->c(Lcom/ijinshan/kpref/Preference;)Z

    .line 95
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;
    .locals 4
    .parameter

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceGroup;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 245
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceGroup;->b()I

    move-result v1

    .line 228
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 229
    invoke-virtual {p0, v2}, Lcom/ijinshan/kpref/PreferenceGroup;->a(I)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/ijinshan/kpref/Preference;->A()Ljava/lang/String;

    move-result-object v3

    .line 232
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    :cond_2
    instance-of v3, v0, Lcom/ijinshan/kpref/PreferenceGroup;

    if-eqz v3, :cond_3

    .line 237
    check-cast v0, Lcom/ijinshan/kpref/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/ijinshan/kpref/PreferenceGroup;->c(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    .line 239
    if-nez v0, :cond_0

    .line 228
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 245
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceGroup;->b()I

    move-result v0

    .line 288
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 289
    invoke-virtual {p0, v1}, Lcom/ijinshan/kpref/PreferenceGroup;->a(I)Lcom/ijinshan/kpref/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ijinshan/kpref/Preference;->c(Z)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method public final c(Lcom/ijinshan/kpref/Preference;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 123
    iget-object v1, p0, Lcom/ijinshan/kpref/PreferenceGroup;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 161
    :goto_0
    return v1

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->v()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 129
    iget-boolean v1, p0, Lcom/ijinshan/kpref/PreferenceGroup;->p:Z

    if-eqz v1, :cond_1

    .line 130
    iget v1, p0, Lcom/ijinshan/kpref/PreferenceGroup;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ijinshan/kpref/PreferenceGroup;->q:I

    invoke-virtual {p1, v1}, Lcom/ijinshan/kpref/Preference;->d(I)V

    .line 133
    :cond_1
    instance-of v1, p1, Lcom/ijinshan/kpref/PreferenceGroup;

    if-eqz v1, :cond_2

    .line 136
    move-object v0, p1

    check-cast v0, Lcom/ijinshan/kpref/PreferenceGroup;

    move-object v1, v0

    iget-boolean v2, p0, Lcom/ijinshan/kpref/PreferenceGroup;->p:Z

    iput-boolean v2, v1, Lcom/ijinshan/kpref/PreferenceGroup;->p:Z

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/ijinshan/kpref/PreferenceGroup;->o:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 141
    if-gez v1, :cond_3

    .line 142
    mul-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v3

    .line 145
    :cond_3
    invoke-virtual {p0, p1}, Lcom/ijinshan/kpref/PreferenceGroup;->a(Lcom/ijinshan/kpref/Preference;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 146
    const/4 v1, 0x0

    goto :goto_0

    .line 149
    :cond_4
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/ijinshan/kpref/PreferenceGroup;->o:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceGroup;->I()Lcom/ijinshan/kpref/t;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/t;)V

    .line 155
    iget-boolean v1, p0, Lcom/ijinshan/kpref/PreferenceGroup;->r:Z

    if-eqz v1, :cond_5

    .line 156
    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->J()V

    .line 159
    :cond_5
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceGroup;->H()V

    move v1, v3

    .line 161
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected final d(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/Preference;->d(Landroid/os/Bundle;)V

    .line 315
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceGroup;->b()I

    move-result v0

    .line 316
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 317
    invoke-virtual {p0, v1}, Lcom/ijinshan/kpref/PreferenceGroup;->a(I)Lcom/ijinshan/kpref/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ijinshan/kpref/Preference;->d(Landroid/os/Bundle;)V

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method public final d(Lcom/ijinshan/kpref/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/PreferenceGroup;->e(Lcom/ijinshan/kpref/Preference;)Z

    move-result v0

    .line 172
    invoke-virtual {p0}, Lcom/ijinshan/kpref/PreferenceGroup;->H()V

    .line 173
    return v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method final f()V
    .locals 1

    .prologue
    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/PreferenceGroup;->o:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 296
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
