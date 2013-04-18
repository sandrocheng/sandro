.class abstract Lcom/ijinshan/kpref/d;
.super Ljava/lang/Object;
.source "GenericInflater.java"


# static fields
.field private static final f:[Ljava/lang/Class;

.field private static final g:Ljava/util/HashMap;


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Z

.field private c:Z

.field private d:Lcom/ijinshan/kpref/e;

.field private final e:[Ljava/lang/Object;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ijinshan/kpref/d;->f:[Ljava/lang/Class;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ijinshan/kpref/d;->g:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kpref/d;->b:Z

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ijinshan/kpref/d;->e:[Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lcom/ijinshan/kpref/d;->a:Landroid/content/Context;

    .line 110
    return-void
.end method

.method protected constructor <init>(Lcom/ijinshan/kpref/d;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kpref/d;->b:Z

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ijinshan/kpref/d;->e:[Ljava/lang/Object;

    .line 121
    iput-object p2, p0, Lcom/ijinshan/kpref/d;->a:Landroid/content/Context;

    .line 122
    iget-object v0, p1, Lcom/ijinshan/kpref/d;->d:Lcom/ijinshan/kpref/e;

    iput-object v0, p0, Lcom/ijinshan/kpref/d;->d:Lcom/ijinshan/kpref/e;

    .line 123
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/ijinshan/kpref/d;->h:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/ijinshan/kpref/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    sget-object v0, Lcom/ijinshan/kpref/d;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 372
    if-nez v0, :cond_0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/ijinshan/kpref/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 377
    sget-object v2, Lcom/ijinshan/kpref/d;->f:[Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 378
    sget-object v1, Lcom/ijinshan/kpref/d;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/kpref/d;->e:[Ljava/lang/Object;

    .line 382
    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :cond_1
    move-object v2, p1

    .line 375
    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 391
    throw v1

    :cond_2
    move-object v3, p1

    .line 386
    goto :goto_1

    .line 393
    :catch_1
    move-exception v0

    throw v0

    .line 396
    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 397
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 402
    throw v2
.end method

.method private a(Lcom/ijinshan/kpref/e;)V
    .locals 2
    .parameter

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/ijinshan/kpref/d;->c:Z

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this inflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    if-nez p1, :cond_1

    .line 197
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kpref/d;->c:Z

    .line 200
    iget-object v0, p0, Lcom/ijinshan/kpref/d;->d:Lcom/ijinshan/kpref/e;

    if-nez v0, :cond_2

    .line 201
    iput-object p1, p0, Lcom/ijinshan/kpref/d;->d:Lcom/ijinshan/kpref/e;

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_2
    new-instance v0, Lcom/ijinshan/kpref/f;

    iget-object v1, p0, Lcom/ijinshan/kpref/d;->d:Lcom/ijinshan/kpref/e;

    invoke-direct {v0, p1, v1}, Lcom/ijinshan/kpref/f;-><init>(Lcom/ijinshan/kpref/e;Lcom/ijinshan/kpref/e;)V

    iput-object v0, p0, Lcom/ijinshan/kpref/d;->d:Lcom/ijinshan/kpref/e;

    goto :goto_0
.end method

.method private b(ILcom/ijinshan/kpref/g;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/ijinshan/kpref/d;->a(ILcom/ijinshan/kpref/g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final b(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kpref/d;->d:Lcom/ijinshan/kpref/e;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 426
    :goto_0
    if-nez v0, :cond_0

    .line 427
    const/4 v0, -0x1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 428
    iget-object v0, p0, Lcom/ijinshan/kpref/d;->h:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/ijinshan/kpref/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    .line 435
    :cond_0
    :goto_1
    return-object v0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kpref/d;->d:Lcom/ijinshan/kpref/e;

    iget-object v1, p0, Lcom/ijinshan/kpref/d;->a:Landroid/content/Context;

    invoke-interface {v0, p1, v1, p2}, Lcom/ijinshan/kpref/e;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ijinshan/kpref/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_1

    .line 437
    :catch_0
    move-exception v0

    throw v0

    .line 440
    :catch_1
    move-exception v0

    .line 441
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 445
    throw v1

    .line 447
    :catch_2
    move-exception v0

    .line 448
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 452
    throw v1
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;Lcom/ijinshan/kpref/g;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/ijinshan/kpref/d;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/ijinshan/kpref/g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ijinshan/kpref/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 466
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_2

    :cond_1
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 468
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 469
    invoke-virtual {p0, p1, p2, p3}, Lcom/ijinshan/kpref/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-direct {p0, v1, p3}, Lcom/ijinshan/kpref/d;->b(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v3

    .line 488
    move-object v0, p2

    check-cast v0, Lcom/ijinshan/kpref/g;

    move-object v1, v0

    invoke-interface {v1, v3}, Lcom/ijinshan/kpref/g;->a(Ljava/lang/Object;)V

    .line 493
    invoke-direct {p0, p1, v3, p3}, Lcom/ijinshan/kpref/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 499
    :cond_2
    return-void
.end method

.method private c()Lcom/ijinshan/kpref/e;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ijinshan/kpref/d;->d:Lcom/ijinshan/kpref/e;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ijinshan/kpref/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;)Lcom/ijinshan/kpref/d;
.end method

.method protected a(Lcom/ijinshan/kpref/g;Lcom/ijinshan/kpref/g;)Lcom/ijinshan/kpref/g;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 518
    return-object p2
.end method

.method public final a(ILcom/ijinshan/kpref/g;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ijinshan/kpref/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 263
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/ijinshan/kpref/d;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/ijinshan/kpref/g;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 265
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/ijinshan/kpref/g;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 292
    iget-object v1, p0, Lcom/ijinshan/kpref/d;->e:[Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 294
    iget-object v0, p0, Lcom/ijinshan/kpref/d;->e:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ijinshan/kpref/d;->a:Landroid/content/Context;

    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v5, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 305
    :cond_1
    if-eq v0, v5, :cond_2

    .line 306
    new-instance v0, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": No start tag found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 331
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 317
    :cond_2
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/ijinshan/kpref/d;->b(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    .line 320
    check-cast v0, Lcom/ijinshan/kpref/g;

    invoke-virtual {p0, p2, v0}, Lcom/ijinshan/kpref/d;->a(Lcom/ijinshan/kpref/g;Lcom/ijinshan/kpref/g;)Lcom/ijinshan/kpref/g;

    move-result-object v0

    .line 326
    invoke-direct {p0, p1, v0, v2}, Lcom/ijinshan/kpref/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 346
    :try_start_4
    monitor-exit v1

    return-object v0

    .line 334
    :catch_1
    move-exception v0

    .line 335
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 337
    throw v2

    .line 338
    :catch_2
    move-exception v0

    .line 339
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 343
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/ijinshan/kpref/d;->h:Ljava/lang/String;

    .line 148
    return-void
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method
