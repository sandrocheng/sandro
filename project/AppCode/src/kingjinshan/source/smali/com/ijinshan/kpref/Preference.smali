.class public Lcom/ijinshan/kpref/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Lcom/ijinshan/kpref/j;
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:I = 0x7fffffff

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/Object;

.field private E:Z

.field private F:Z

.field private G:I

.field private H:I

.field private I:Z

.field private J:Lcom/ijinshan/kpref/l;

.field private K:Ljava/util/List;

.field private L:Z

.field private o:Landroid/content/Context;

.field private p:Lcom/ijinshan/kpref/t;

.field private q:J

.field private r:Lcom/ijinshan/kpref/m;

.field private s:Lcom/ijinshan/kpref/n;

.field private t:I

.field private u:Ljava/lang/CharSequence;

.field private v:Ljava/lang/CharSequence;

.field private w:Ljava/lang/String;

.field private x:Landroid/content/Intent;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    const/16 v0, 0xa

    sput v0, Lcom/ijinshan/kpref/Preference;->b:I

    .line 186
    const/16 v0, 0x9

    sput v0, Lcom/ijinshan/kpref/Preference;->c:I

    .line 187
    const/4 v0, 0x1

    sput v0, Lcom/ijinshan/kpref/Preference;->d:I

    .line 188
    const/4 v0, 0x5

    sput v0, Lcom/ijinshan/kpref/Preference;->e:I

    .line 189
    const/4 v0, 0x2

    sput v0, Lcom/ijinshan/kpref/Preference;->f:I

    .line 190
    const/4 v0, 0x7

    sput v0, Lcom/ijinshan/kpref/Preference;->g:I

    .line 191
    sput v1, Lcom/ijinshan/kpref/Preference;->h:I

    .line 192
    const/4 v0, 0x4

    sput v0, Lcom/ijinshan/kpref/Preference;->i:I

    .line 193
    const/16 v0, 0xb

    sput v0, Lcom/ijinshan/kpref/Preference;->j:I

    .line 194
    const/4 v0, 0x6

    sput v0, Lcom/ijinshan/kpref/Preference;->k:I

    .line 195
    const/4 v0, 0x3

    sput v0, Lcom/ijinshan/kpref/Preference;->l:I

    .line 196
    const/16 v0, 0x8

    sput v0, Lcom/ijinshan/kpref/Preference;->m:I

    .line 198
    sput-boolean v1, Lcom/ijinshan/kpref/Preference;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 340
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 330
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const v0, 0x7fffffff

    iput v0, p0, Lcom/ijinshan/kpref/Preference;->t:I

    .line 91
    iput-boolean v4, p0, Lcom/ijinshan/kpref/Preference;->y:Z

    .line 92
    iput-boolean v4, p0, Lcom/ijinshan/kpref/Preference;->z:Z

    .line 94
    iput-boolean v4, p0, Lcom/ijinshan/kpref/Preference;->B:Z

    .line 97
    iput-boolean v4, p0, Lcom/ijinshan/kpref/Preference;->E:Z

    .line 102
    iput-boolean v4, p0, Lcom/ijinshan/kpref/Preference;->F:Z

    .line 104
    const v0, 0x1090047

    iput v0, p0, Lcom/ijinshan/kpref/Preference;->G:I

    .line 106
    iput-boolean v1, p0, Lcom/ijinshan/kpref/Preference;->I:Z

    .line 273
    iput-object p1, p0, Lcom/ijinshan/kpref/Preference;->o:Landroid/content/Context;

    .line 276
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->b()V

    .line 278
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_c

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 282
    sget v3, Lcom/ijinshan/kpref/Preference;->e:I

    if-ne v2, v3, :cond_1

    .line 283
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    .line 280
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 284
    :cond_1
    sget v3, Lcom/ijinshan/kpref/Preference;->l:I

    if-ne v2, v3, :cond_2

    .line 285
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    goto :goto_1

    .line 286
    :cond_2
    sget v3, Lcom/ijinshan/kpref/Preference;->k:I

    if-ne v2, v3, :cond_3

    .line 287
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ijinshan/kpref/Preference;->v:Ljava/lang/CharSequence;

    goto :goto_1

    .line 288
    :cond_3
    sget v3, Lcom/ijinshan/kpref/Preference;->g:I

    if-ne v2, v3, :cond_4

    .line 289
    iget v3, p0, Lcom/ijinshan/kpref/Preference;->t:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/ijinshan/kpref/Preference;->t:I

    goto :goto_1

    .line 290
    :cond_4
    sget v3, Lcom/ijinshan/kpref/Preference;->f:I

    if-ne v2, v3, :cond_5

    .line 291
    iget v3, p0, Lcom/ijinshan/kpref/Preference;->G:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/ijinshan/kpref/Preference;->G:I

    goto :goto_1

    .line 292
    :cond_5
    sget v3, Lcom/ijinshan/kpref/Preference;->m:I

    if-ne v2, v3, :cond_6

    .line 293
    iget v3, p0, Lcom/ijinshan/kpref/Preference;->H:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/ijinshan/kpref/Preference;->H:I

    goto :goto_1

    .line 294
    :cond_6
    sget v3, Lcom/ijinshan/kpref/Preference;->d:I

    if-ne v2, v3, :cond_7

    .line 295
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ijinshan/kpref/Preference;->y:Z

    goto :goto_1

    .line 296
    :cond_7
    sget v3, Lcom/ijinshan/kpref/Preference;->i:I

    if-ne v2, v3, :cond_8

    .line 297
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ijinshan/kpref/Preference;->z:Z

    goto :goto_1

    .line 298
    :cond_8
    sget v3, Lcom/ijinshan/kpref/Preference;->h:I

    if-ne v2, v3, :cond_9

    .line 299
    iget-boolean v3, p0, Lcom/ijinshan/kpref/Preference;->B:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ijinshan/kpref/Preference;->B:Z

    goto :goto_1

    .line 300
    :cond_9
    sget v3, Lcom/ijinshan/kpref/Preference;->c:I

    if-ne v2, v3, :cond_a

    .line 301
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ijinshan/kpref/Preference;->C:Ljava/lang/String;

    goto :goto_1

    .line 302
    :cond_a
    sget v3, Lcom/ijinshan/kpref/Preference;->b:I

    if-ne v2, v3, :cond_b

    .line 303
    invoke-virtual {p0, v0, v2}, Lcom/ijinshan/kpref/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/ijinshan/kpref/Preference;->D:Ljava/lang/Object;

    goto :goto_1

    .line 304
    :cond_b
    sget v3, Lcom/ijinshan/kpref/Preference;->j:I

    if-ne v2, v3, :cond_0

    .line 305
    iget-boolean v3, p0, Lcom/ijinshan/kpref/Preference;->F:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ijinshan/kpref/Preference;->F:Z

    goto/16 :goto_1

    .line 307
    :cond_c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 313
    return-void
.end method

.method private M()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1523
    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    .line 1524
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1527
    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->p()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1528
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1531
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1535
    :cond_2
    return-object v0
.end method

.method private a(Lcom/ijinshan/kpref/Preference;)I
    .locals 2
    .parameter

    .prologue
    const v1, 0x7fffffff

    .line 983
    iget v0, p0, Lcom/ijinshan/kpref/Preference;->t:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ijinshan/kpref/Preference;->t:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/ijinshan/kpref/Preference;->t:I

    if-eq v0, v1, :cond_1

    .line 986
    :cond_0
    iget v0, p0, Lcom/ijinshan/kpref/Preference;->t:I

    iget v1, p1, Lcom/ijinshan/kpref/Preference;->t:I

    sub-int/2addr v0, v1

    .line 993
    :goto_0
    return v0

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 988
    const/4 v0, 0x1

    goto :goto_0

    .line 989
    :cond_2
    iget-object v0, p1, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 990
    const/4 v0, -0x1

    goto :goto_0

    .line 993
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .parameter

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 527
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 529
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 530
    check-cast p1, Landroid/view/ViewGroup;

    .line 531
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 532
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/ijinshan/kpref/Preference;->a(Landroid/view/View;Z)V

    .line 531
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 535
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/ijinshan/kpref/Preference;->D:Ljava/lang/Object;

    .line 1225
    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->z:Z

    if-eq v0, p1, :cond_0

    .line 670
    iput-boolean p1, p0, Lcom/ijinshan/kpref/Preference;->z:Z

    .line 671
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->G()V

    .line 673
    :cond_0
    return-void
.end method

.method private a(F)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x7fc0

    .line 1380
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1381
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    move v0, v3

    .line 1391
    :goto_1
    return v0

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1387
    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1388
    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    move v0, v3

    .line 1389
    goto :goto_1

    .line 1391
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1336
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1337
    xor-int/lit8 v0, p1, -0x1

    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    if-ne p1, v0, :cond_1

    move v0, v3

    .line 1347
    :goto_1
    return v0

    .line 1337
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v1}, Lcom/ijinshan/kpref/t;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 1342
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1343
    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1344
    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    move v0, v3

    .line 1345
    goto :goto_1

    .line 1347
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1424
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1425
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p1

    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    move v0, v4

    .line 1435
    :goto_1
    return v0

    .line 1425
    :cond_0
    iget-object v2, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v2}, Lcom/ijinshan/kpref/t;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 1430
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1431
    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1432
    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    move v0, v4

    .line 1433
    goto :goto_1

    .line 1435
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(I)I
    .locals 2
    .parameter

    .prologue
    .line 1362
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, p1

    .line 1366
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 239
    const/4 v0, -0x1

    .line 241
    :try_start_0
    const-string v1, "com.android.internal.R$styleable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 243
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 244
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 245
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 248
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(J)J
    .locals 2
    .parameter

    .prologue
    .line 1450
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    if-nez v0, :cond_0

    move-wide v0, p1

    .line 1454
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/ijinshan/kpref/Preference;->n:Z

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ijinshan/kpref/Preference;->n:Z

    .line 206
    const-string v0, "Preference_defaultValue"

    invoke-static {v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ijinshan/kpref/Preference;->b:I

    .line 207
    const-string v0, "Preference_dependency"

    invoke-static {v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ijinshan/kpref/Preference;->c:I

    .line 208
    const-string v0, "Preference_enabled"

    invoke-static {v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ijinshan/kpref/Preference;->d:I

    .line 209
    const-string v0, "Preference_key"

    invoke-static {v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ijinshan/kpref/Preference;->e:I

    .line 210
    const-string v0, "Preference_layout"

    invoke-static {v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ijinshan/kpref/Preference;->f:I

    .line 211
    const-string v0, "Preference_order"

    invoke-static {v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ijinshan/kpref/Preference;->g:I

    .line 212
    const-string v0, "Preference_persistent"

    invoke-static {v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ijinshan/kpref/Preference;->h:I

    .line 213
    const-string v0, "Preference_selectable"

    invoke-static {v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ijinshan/kpref/Preference;->i:I

    .line 214
    const-string v0, "Preference_shouldDisableView"

    invoke-static {v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ijinshan/kpref/Preference;->j:I

    .line 215
    const-string v0, "Preference_summary"

    invoke-static {v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ijinshan/kpref/Preference;->k:I

    .line 216
    const-string v0, "Preference_title"

    invoke-static {v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ijinshan/kpref/Preference;->l:I

    .line 217
    const-string v0, "Preference_widgetLayout"

    invoke-static {v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ijinshan/kpref/Preference;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lcom/ijinshan/kpref/Preference;)V
    .locals 1
    .parameter

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->K:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/Preference;->K:Ljava/util/List;

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ijinshan/kpref/Preference;->b(Z)V

    .line 1119
    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/ijinshan/kpref/Preference;
    .locals 1
    .parameter

    .prologue
    .line 1095
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    if-nez v0, :cond_1

    .line 1096
    :cond_0
    const/4 v0, 0x0

    .line 1099
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0, p1}, Lcom/ijinshan/kpref/t;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lcom/ijinshan/kpref/Preference;)V
    .locals 1
    .parameter

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->K:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1133
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->F:Z

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 761
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->A:Z

    .line 765
    return-void
.end method

.method private g(Z)V
    .locals 0
    .parameter

    .prologue
    .line 696
    iput-boolean p1, p0, Lcom/ijinshan/kpref/Preference;->F:Z

    .line 697
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->G()V

    .line 698
    return-void
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->B:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Lcom/ijinshan/kpref/m;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->r:Lcom/ijinshan/kpref/m;

    return-object v0
.end method

.method private j()Lcom/ijinshan/kpref/n;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->s:Lcom/ijinshan/kpref/n;

    return-object v0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    if-nez v0, :cond_0

    .line 969
    const/4 v0, 0x0

    .line 972
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->e()Z

    move-result v0

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->C:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/Preference;->c(Ljava/lang/String;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_2

    .line 1068
    iget-object v1, v0, Lcom/ijinshan/kpref/Preference;->K:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ijinshan/kpref/Preference;->K:Ljava/util/List;

    :cond_1
    iget-object v1, v0, Lcom/ijinshan/kpref/Preference;->K:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/ijinshan/kpref/Preference;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/Preference;->b(Z)V

    goto :goto_0

    .line 1070
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kpref/Preference;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->C:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/Preference;->c(Ljava/lang/String;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    .line 1078
    if-eqz v0, :cond_0

    .line 1079
    iget-object v1, v0, Lcom/ijinshan/kpref/Preference;->K:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/ijinshan/kpref/Preference;->K:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1082
    :cond_0
    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->C:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 1229
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    .line 1230
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->E()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->D:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1232
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->D:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kpref/Preference;->a(ZLjava/lang/Object;)V

    .line 1237
    :cond_1
    :goto_0
    return-void

    .line 1235
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kpref/Preference;->a(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private q()F
    .locals 3

    .prologue
    const/high16 v2, 0x7fc0

    .line 1406
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1410
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final B()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->B:Z

    return v0
.end method

.method public final C()V
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->B:Z

    .line 808
    return-void
.end method

.method public final D()Landroid/content/Context;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->o:Landroid/content/Context;

    return-object v0
.end method

.method public final E()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    if-nez v0, :cond_0

    .line 926
    const/4 v0, 0x0

    .line 929
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public final F()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    if-nez v0, :cond_0

    .line 953
    const/4 v0, 0x0

    .line 956
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method protected final G()V
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->J:Lcom/ijinshan/kpref/l;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->J:Lcom/ijinshan/kpref/l;

    invoke-interface {v0}, Lcom/ijinshan/kpref/l;->a()V

    .line 1014
    :cond_0
    return-void
.end method

.method protected final H()V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->J:Lcom/ijinshan/kpref/l;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->J:Lcom/ijinshan/kpref/l;

    invoke-interface {v0}, Lcom/ijinshan/kpref/l;->b()V

    .line 1025
    :cond_0
    return-void
.end method

.method public final I()Lcom/ijinshan/kpref/t;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    return-object v0
.end method

.method protected J()V
    .locals 0

    .prologue
    .line 1059
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->l()V

    .line 1060
    return-void
.end method

.method protected K()V
    .locals 0

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->m()V

    .line 1214
    return-void
.end method

.method protected K_()V
    .locals 0

    .prologue
    .line 726
    return-void
.end method

.method final L()Z
    .locals 1

    .prologue
    .line 1502
    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->I:Z

    return v0
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 452
    invoke-virtual {p0, p2}, Lcom/ijinshan/kpref/Preference;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 454
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/Preference;->a(Landroid/view/View;)V

    .line 455
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method protected a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->o:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 475
    iget v1, p0, Lcom/ijinshan/kpref/Preference;->G:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 477
    iget v1, p0, Lcom/ijinshan/kpref/Preference;->H:I

    if-eqz v1, :cond_0

    .line 478
    const v1, 0x1020018

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 479
    iget v3, p0, Lcom/ijinshan/kpref/Preference;->H:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 482
    :cond_0
    return-object v2
.end method

.method protected a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 1322
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/ijinshan/kpref/Preference;->x:Landroid/content/Intent;

    .line 367
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 1547
    invoke-virtual {p0, p1}, Lcom/ijinshan/kpref/Preference;->b(Landroid/os/Bundle;)V

    .line 1548
    return-void
.end method

.method protected a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 1638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->L:Z

    .line 1639
    sget-object v0, Lcom/ijinshan/kpref/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1642
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 497
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 498
    if-eqz v0, :cond_0

    .line 499
    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    :cond_0
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 503
    if-eqz v0, :cond_2

    .line 504
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->p()Ljava/lang/CharSequence;

    move-result-object v1

    .line 505
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 506
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->p()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->F:Z

    if-eqz v0, :cond_3

    .line 519
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->x()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kpref/Preference;->a(Landroid/view/View;Z)V

    .line 521
    :cond_3
    return-void

    .line 512
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 513
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method final a(Lcom/ijinshan/kpref/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->x()Z

    move-result v0

    if-nez v0, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->K_()V

    .line 875
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->s:Lcom/ijinshan/kpref/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->s:Lcom/ijinshan/kpref/n;

    invoke-interface {v0, p0}, Lcom/ijinshan/kpref/n;->a(Lcom/ijinshan/kpref/Preference;)Z

    .line 876
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    .line 880
    if-eqz v0, :cond_3

    .line 881
    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->k()Lcom/ijinshan/kpref/x;

    move-result-object v0

    .line 883
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p0}, Lcom/ijinshan/kpref/x;->a(Lcom/ijinshan/kpref/PreferenceScreen;Lcom/ijinshan/kpref/Preference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->x:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->o:Landroid/content/Context;

    .line 891
    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->x:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method final a(Lcom/ijinshan/kpref/l;)V
    .locals 0
    .parameter

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/ijinshan/kpref/Preference;->J:Lcom/ijinshan/kpref/l;

    .line 1005
    return-void
.end method

.method public final a(Lcom/ijinshan/kpref/m;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/ijinshan/kpref/Preference;->r:Lcom/ijinshan/kpref/m;

    .line 830
    return-void
.end method

.method public final a(Lcom/ijinshan/kpref/n;)V
    .locals 0
    .parameter

    .prologue
    .line 848
    iput-object p1, p0, Lcom/ijinshan/kpref/Preference;->s:Lcom/ijinshan/kpref/n;

    .line 849
    return-void
.end method

.method protected a(Lcom/ijinshan/kpref/t;)V
    .locals 2
    .parameter

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    .line 1045
    invoke-virtual {p1}, Lcom/ijinshan/kpref/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ijinshan/kpref/Preference;->q:J

    .line 1047
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->E()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->D:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->D:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kpref/Preference;->a(ZLjava/lang/Object;)V

    .line 1048
    :cond_1
    :goto_0
    return-void

    .line 1047
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kpref/Preference;->a(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 621
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->v:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->v:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 622
    :cond_1
    iput-object p1, p0, Lcom/ijinshan/kpref/Preference;->v:Ljava/lang/CharSequence;

    .line 623
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->G()V

    .line 625
    :cond_2
    return-void
.end method

.method protected a(ZLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1257
    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1561
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->L:Z

    .line 1563
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->d()Landroid/os/Parcelable;

    move-result-object v0

    .line 1564
    iget-boolean v1, p0, Lcom/ijinshan/kpref/Preference;->L:Z

    if-nez v1, :cond_0

    .line 1565
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1568
    :cond_0
    if-eqz v0, :cond_1

    .line 1569
    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1572
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 579
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 580
    :cond_1
    iput-object p1, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    .line 581
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->G()V

    .line 583
    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1162
    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->E:Z

    if-ne v0, p1, :cond_0

    .line 1163
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->E:Z

    .line 1166
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/Preference;->d(Z)V

    .line 1168
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->G()V

    .line 1170
    :cond_0
    return-void

    .line 1163
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 819
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->r:Lcom/ijinshan/kpref/m;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->r:Lcom/ijinshan/kpref/m;

    invoke-interface {v0, p0, p1}, Lcom/ijinshan/kpref/m;->a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1
    .parameter

    .prologue
    .line 393
    iget v0, p0, Lcom/ijinshan/kpref/Preference;->G:I

    if-eq p1, v0, :cond_0

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->I:Z

    .line 398
    :cond_0
    iput p1, p0, Lcom/ijinshan/kpref/Preference;->G:I

    .line 399
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 1600
    invoke-virtual {p0, p1}, Lcom/ijinshan/kpref/Preference;->d(Landroid/os/Bundle;)V

    .line 1601
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->y:Z

    if-eq v0, p1, :cond_0

    .line 645
    iput-boolean p1, p0, Lcom/ijinshan/kpref/Preference;->y:Z

    .line 648
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/Preference;->d(Z)V

    .line 650
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->G()V

    .line 652
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->x()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    const v1, 0x7fffffff

    .line 68
    check-cast p1, Lcom/ijinshan/kpref/Preference;

    iget v0, p0, Lcom/ijinshan/kpref/Preference;->t:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ijinshan/kpref/Preference;->t:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/ijinshan/kpref/Preference;->t:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/ijinshan/kpref/Preference;->t:I

    iget v1, p1, Lcom/ijinshan/kpref/Preference;->t:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method protected d()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->L:Z

    .line 1588
    sget-object v0, Lcom/ijinshan/kpref/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public final d(I)V
    .locals 1
    .parameter

    .prologue
    .line 551
    iget v0, p0, Lcom/ijinshan/kpref/Preference;->t:I

    if-eq p1, v0, :cond_0

    .line 552
    iput p1, p0, Lcom/ijinshan/kpref/Preference;->t:I

    .line 555
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->H()V

    .line 557
    :cond_0
    return-void
.end method

.method d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1614
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1616
    if-eqz v0, :cond_0

    .line 1617
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ijinshan/kpref/Preference;->L:Z

    .line 1618
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/Preference;->a(Landroid/os/Parcelable;)V

    .line 1619
    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->L:Z

    if-nez v0, :cond_0

    .line 1620
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1625
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    .line 737
    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->A:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->A:Z

    .line 740
    :cond_1
    return-void
.end method

.method public final d(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->K:Ljava/util/List;

    .line 1145
    if-nez v0, :cond_1

    .line 1153
    :cond_0
    return-void

    .line 1149
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1150
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1151
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kpref/Preference;

    invoke-virtual {p0, p1}, Lcom/ijinshan/kpref/Preference;->b(Z)V

    .line 1150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final e(I)V
    .locals 1
    .parameter

    .prologue
    .line 592
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->o:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/Preference;->b(Ljava/lang/CharSequence;)V

    .line 593
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1190
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->m()V

    .line 1193
    iput-object p1, p0, Lcom/ijinshan/kpref/Preference;->C:Ljava/lang/String;

    .line 1194
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->l()V

    .line 1195
    return-void
.end method

.method protected final e(Z)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1468
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1469
    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/Preference;->f(Z)Z

    move-result v0

    if-ne p1, v0, :cond_1

    move v0, v2

    .line 1479
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 1469
    goto :goto_0

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1475
    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1476
    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    move v0, v2

    .line 1477
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1479
    goto :goto_1
.end method

.method public final f(I)V
    .locals 1
    .parameter

    .prologue
    .line 634
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->o:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 635
    return-void
.end method

.method protected final f(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1289
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 1301
    :goto_0
    return v0

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1297
    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1298
    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    move v0, v2

    .line 1299
    goto :goto_0

    .line 1301
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final f(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 1494
    invoke-direct {p0}, Lcom/ijinshan/kpref/Preference;->h()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, p1

    .line 1498
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->p:Lcom/ijinshan/kpref/t;

    invoke-virtual {v0}, Lcom/ijinshan/kpref/t;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->w:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public p()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->v:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final r()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->x:Landroid/content/Intent;

    return-object v0
.end method

.method public final s()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/ijinshan/kpref/Preference;->G:I

    return v0
.end method

.method public final t()V
    .locals 2

    .prologue
    const v1, 0x7f0300e0

    .line 421
    iget v0, p0, Lcom/ijinshan/kpref/Preference;->H:I

    if-eq v1, v0, :cond_0

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->I:Z

    .line 425
    :cond_0
    iput v1, p0, Lcom/ijinshan/kpref/Preference;->H:I

    .line 426
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kpref/Preference;->p()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/ijinshan/kpref/Preference;->H:I

    return v0
.end method

.method public final v()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/ijinshan/kpref/Preference;->t:I

    return v0
.end method

.method public final w()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/ijinshan/kpref/Preference;->u:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->y:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/ijinshan/kpref/Preference;->z:Z

    return v0
.end method

.method final z()J
    .locals 2

    .prologue
    .line 716
    iget-wide v0, p0, Lcom/ijinshan/kpref/Preference;->q:J

    return-wide v0
.end method
