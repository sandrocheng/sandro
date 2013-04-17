.class public final Luk;
.super Labu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk$a;
    }
.end annotation


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MMSThumbnailLoaderService"

    sput-object v0, Luk;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Labu;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Luk;->e:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lmp;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_7

    iget-object v0, p1, Lfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    move-object v1, v0

    check-cast v1, Ladh;

    invoke-virtual {v1}, Ladh;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Luk$a;

    invoke-direct {v1, p0}, Luk$a;-><init>(Luk;)V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lft;->d(Landroid/content/Context;)I

    move-result v8

    if-lt v6, v7, :cond_3

    mul-int/lit8 v9, v8, 0x3

    div-int/lit8 v9, v9, 0x5

    iput v9, v1, Luk$a;->a:I

    mul-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v6, v6, 0x5

    div-int v6, v7, v6

    iput v6, v1, Luk$a;->b:I

    :goto_2
    check-cast v0, Ladh;

    invoke-virtual {v0}, Ladh;->e()Ljava/lang/String;

    move-result-object v0

    iget v6, v1, Luk$a;->a:I

    iget v1, v1, Luk$a;->b:I

    invoke-static {v0, v6, v1}, Lgz;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_8

    iget-object v0, p1, Lfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    if-ne v0, v10, :cond_6

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02021a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_4
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_3
    div-int/lit8 v9, v8, 0x3

    iput v9, v1, Luk$a;->a:I

    mul-int/2addr v7, v8

    mul-int/lit8 v6, v6, 0x3

    div-int v6, v7, v6

    iput v6, v1, Luk$a;->b:I

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ladg;->b()I

    move-result v1

    if-ne v1, v11, :cond_5

    check-cast v0, Ladm;

    invoke-virtual {v0}, Ladm;->e()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    const/16 v6, 0x64

    invoke-static {v0, v1, v6}, Lgz;->b(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    if-ne v0, v10, :cond_9

    move-object v1, v2

    goto :goto_3

    :cond_6
    iget-object v0, p1, Lfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    if-ne v0, v11, :cond_8

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020353

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-object v4, p1, Lfo;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Luk;->e:Landroid/os/Handler;

    new-instance v1, Lul;

    invoke-direct {v1, p1}, Lul;-><init>(Lfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_4

    :cond_9
    move-object v1, v2

    goto/16 :goto_3
.end method

.method protected final b()V
    .locals 1

    invoke-super {p0}, Labu;->b()V

    sget-object v0, Luk;->d:Ljava/lang/String;

    return-void
.end method
