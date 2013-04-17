.class public final Ldr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldr$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldr$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

.field public c:I

.field private d:I

.field private e:I

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(IILandroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldr;->d:I

    iput p2, p0, Ldr;->e:I

    iput-object p3, p0, Ldr;->f:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldr;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

    iget-object v1, p0, Ldr;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldr;->b:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

    return-void
.end method

.method private a(ILdr$a;Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 15

    const/4 v1, 0x4

    new-array v3, v1, [Ldr$a;

    const/4 v1, 0x0

    aput-object p2, v3, v1

    const/4 v1, 0x1

    invoke-direct {p0}, Ldr;->a()Ldr$a;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Ldr;->a()Ldr$a;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    invoke-direct {p0}, Ldr;->a()Ldr$a;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x1

    aget-object v1, v3, v1

    iget v1, v1, Ldr$a;->a:I

    const/4 v2, 0x0

    aget-object v2, v3, v2

    iget v2, v2, Ldr$a;->a:I

    sub-int/2addr v1, v2

    mul-int/lit8 v4, v1, 0x3

    const/4 v1, 0x2

    aget-object v1, v3, v1

    iget v1, v1, Ldr$a;->a:I

    const/4 v2, 0x1

    aget-object v2, v3, v2

    iget v2, v2, Ldr$a;->a:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    sub-int v5, v1, v4

    const/4 v1, 0x3

    aget-object v1, v3, v1

    iget v1, v1, Ldr$a;->a:I

    const/4 v2, 0x0

    aget-object v2, v3, v2

    iget v2, v2, Ldr$a;->a:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    sub-int v6, v1, v5

    const/4 v1, 0x1

    aget-object v1, v3, v1

    iget v1, v1, Ldr$a;->b:I

    const/4 v2, 0x0

    aget-object v2, v3, v2

    iget v2, v2, Ldr$a;->b:I

    sub-int/2addr v1, v2

    mul-int/lit8 v7, v1, 0x3

    const/4 v1, 0x2

    aget-object v1, v3, v1

    iget v1, v1, Ldr$a;->b:I

    const/4 v2, 0x1

    aget-object v2, v3, v2

    iget v2, v2, Ldr$a;->b:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    sub-int v8, v1, v7

    const/4 v1, 0x3

    aget-object v1, v3, v1

    iget v1, v1, Ldr$a;->b:I

    const/4 v2, 0x0

    aget-object v2, v3, v2

    iget v2, v2, Ldr$a;->b:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v7

    sub-int v9, v1, v8

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p3

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Ldr;->b:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

    iget v2, v2, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->a:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Ldr;->b:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

    iget v2, v2, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->a:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v10, Landroid/graphics/Rect;->right:I

    move/from16 v1, p1

    :goto_0
    int-to-float v2, v1

    move/from16 v0, p1

    int-to-float v11, v0

    const/high16 v12, 0x43c8

    add-float/2addr v11, v12

    cmpg-float v2, v2, v11

    if-gez v2, :cond_1

    int-to-float v2, v1

    const/high16 v11, 0x44fa

    cmpg-float v2, v2, v11

    if-gez v2, :cond_1

    sub-int v2, v1, p1

    int-to-float v2, v2

    const/high16 v11, 0x43c8

    rem-float/2addr v2, v11

    float-to-double v11, v2

    const-wide v13, 0x3f647ae147ae147bL

    mul-double/2addr v11, v13

    double-to-float v2, v11

    mul-float v11, v2, v2

    mul-float v12, v11, v2

    int-to-float v13, v6

    mul-float/2addr v13, v12

    int-to-float v14, v5

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    int-to-float v14, v4

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    const/4 v14, 0x0

    aget-object v14, v3, v14

    iget v14, v14, Ldr$a;->a:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v14, v9

    mul-float/2addr v12, v14

    int-to-float v14, v8

    mul-float/2addr v11, v14

    add-float/2addr v11, v12

    int-to-float v12, v7

    mul-float/2addr v2, v12

    add-float/2addr v2, v11

    const/4 v11, 0x0

    aget-object v11, v3, v11

    iget v11, v11, Ldr$a;->b:I

    int-to-float v11, v11

    add-float/2addr v2, v11

    float-to-int v2, v2

    new-instance v11, Ldr$a;

    invoke-direct {v11, v13, v2}, Ldr$a;-><init>(II)V

    iget v2, v11, Ldr$a;->a:I

    iget v12, v11, Ldr$a;->b:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Ldr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v11, Ldr$a;->b:I

    :goto_1
    iget-object v2, p0, Ldr;->b:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

    iget v2, v2, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->b:I

    sub-int v2, p5, v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Ldr;->a:Ljava/util/ArrayList;

    new-instance v3, Ldr$a;

    invoke-direct {v3, v13, v1}, Ldr$a;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    :cond_1
    return v1

    :cond_2
    iget v2, v11, Ldr$a;->a:I

    if-ltz v2, :cond_3

    iget v2, v11, Ldr$a;->a:I

    iget v12, p0, Ldr;->d:I

    if-le v2, v12, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_1

    iget v2, v11, Ldr$a;->a:I

    iget v12, v11, Ldr$a;->b:I

    invoke-virtual {v10, v2, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldr;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget v2, v11, Ldr$a;->b:I

    if-ltz v2, :cond_5

    iget v2, v11, Ldr$a;->b:I

    iget v12, p0, Ldr;->e:I

    if-le v2, v12, :cond_6

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private a()Ldr$a;
    .locals 6

    const-wide v4, 0x408f400000000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v4

    iget v2, p0, Ldr;->d:I

    int-to-double v2, v2

    rem-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double/2addr v1, v4

    iget v3, p0, Ldr;->e:I

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    add-double/2addr v1, v3

    iget v3, p0, Ldr;->e:I

    int-to-double v3, v3

    rem-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, Ldr$a;

    invoke-direct {v2, v0, v1}, Ldr$a;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7

    const-wide v5, 0x40c3880000000000L

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iget v1, p0, Ldr;->d:I

    rem-int v1, v0, v1

    iget v0, p0, Ldr;->e:I

    rem-int/2addr v3, v0

    iget v0, p0, Ldr;->d:I

    sub-int/2addr v0, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Ldr;->d:I

    sub-int/2addr v0, v1

    :goto_0
    iget v4, p0, Ldr;->e:I

    sub-int/2addr v4, v3

    if-ge v4, v3, :cond_1

    iget v4, p0, Ldr;->e:I

    sub-int/2addr v4, v3

    :goto_1
    if-ge v0, v4, :cond_3

    iget v0, p0, Ldr;->d:I

    sub-int/2addr v0, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Ldr;->d:I

    :goto_2
    move v1, v0

    move v0, v3

    :goto_3
    new-instance v3, Ldr$a;

    invoke-direct {v3, v1, v0}, Ldr$a;-><init>(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "restrictRect::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v1, v2

    move-object v2, v3

    :goto_4
    int-to-double v3, v1

    const-wide v5, 0x4092c00000000000L

    cmpg-double v0, v3, v5

    if-gez v0, :cond_5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ldr;->a(ILdr$a;Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    iget-object v0, p0, Ldr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_6

    iget-object v0, p0, Ldr;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Ldr;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldr$a;

    :goto_5
    if-le v3, v1, :cond_5

    move v1, v3

    move-object v2, v0

    goto :goto_4

    :cond_0
    move v0, v1

    goto/16 :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    iget v0, p0, Ldr;->e:I

    sub-int/2addr v0, v3

    if-ge v0, v3, :cond_4

    iget v0, p0, Ldr;->e:I

    goto :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_3

    :cond_5
    return-void

    :cond_6
    move-object v0, v2

    goto :goto_5
.end method
