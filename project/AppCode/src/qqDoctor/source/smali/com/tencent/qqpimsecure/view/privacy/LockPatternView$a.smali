.class public final Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static f:[[Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;


# instance fields
.field a:I

.field b:I

.field public c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x3

    filled-new-array {v5, v5}, [I

    move-result-object v0

    const-class v2, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    sput-object v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->f:[[Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    sget-object v3, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->f:[[Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    aget-object v3, v3, v2

    new-instance v4, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    invoke-direct {v4, v2, v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;-><init>(II)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p2}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b(II)V

    iput p1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    iput p2, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static declared-synchronized a(II)Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;
    .locals 2

    const-class v1, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b(II)V

    sget-object v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->f:[[Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    aget-object v0, v0, p0

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    sget-object v3, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->f:[[Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    aget-object v3, v3, v2

    aget-object v3, v3, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->d:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->f:[[Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    aget-object v3, v3, v2

    aget-object v3, v3, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200bf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->e:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private static b(II)V
    .locals 2

    const/4 v0, 0x2

    if-ltz p0, :cond_0

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "row must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public static c()V
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    sget-object v3, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->f:[[Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;

    aget-object v3, v3, v2

    aget-object v3, v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->c:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    return v0
.end method

.method public final a(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;)V
    .locals 2

    sget-object v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$1;->a:[I

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->c:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(row="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
