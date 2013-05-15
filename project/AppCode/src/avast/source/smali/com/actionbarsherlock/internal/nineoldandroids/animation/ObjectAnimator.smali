.class public final Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
.source "ObjectAnimator.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mPropertyName:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 130
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 143
    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    .line 212
    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setIntValues([I)V

    .line 174
    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 255
    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setEvaluator(Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;)V

    .line 256
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 301
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;-><init>()V

    .line 302
    iput-object p0, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 303
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 304
    return-object v0
.end method


# virtual methods
.method animateValue(F)V
    .locals 4
    .parameter

    .prologue
    .line 467
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    .line 468
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v0

    .line 469
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 470
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 476
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 477
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method initAnimation()V
    .locals 4

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v0

    .line 385
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 386
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 390
    :cond_1
    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    .locals 0
    .parameter

    .prologue
    .line 403
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 404
    return-object p0
.end method

.method public bridge synthetic setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFloatValues([F)V
    .locals 3
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 330
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 3
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 315
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 345
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;

    invoke-static {v3, v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v0, v3

    .line 77
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 84
    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mInitialized:Z

    .line 85
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 426
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 427
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mInitialized:Z

    goto :goto_0
.end method

.method public setupEndValues()V
    .locals 4

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->initAnimation()V

    .line 447
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v0

    .line 448
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 449
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setupEndValue(Ljava/lang/Object;)V

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 4

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->initAnimation()V

    .line 438
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v0

    .line 439
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 440
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setupStartValue(Ljava/lang/Object;)V

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 364
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->start()V

    .line 365
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_0
    return-object v1
.end method
