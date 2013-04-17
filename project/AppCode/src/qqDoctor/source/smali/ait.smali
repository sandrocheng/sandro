.class public final Lait;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lait$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/text/SimpleDateFormat;

.field private c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/text/SimpleDateFormat;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View$OnClickListener;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ladg;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/ListView;

.field private k:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;",
            "Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lait;->a:Landroid/content/Context;

    iput-object p2, p0, Lait;->e:Ljava/util/List;

    invoke-direct {p0}, Lait;->c()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lait;->a:Landroid/content/Context;

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HH:mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lait;->b:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lait;->a:Landroid/content/Context;

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HH:mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lait;->c:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MM"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lait;->a:Landroid/content/Context;

    const v3, 0x7f0b04d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lait;->a:Landroid/content/Context;

    const v3, 0x7f0b042b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HH:mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lait;->d:Ljava/text/SimpleDateFormat;

    iput-object p3, p0, Lait;->k:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-virtual {p3}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->getMainView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lait;->j:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lait;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lait;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(Lait$a;II)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    iget-object v0, p0, Lait;->h:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lait;->h:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lait;->i:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lait;->i:Ljava/util/HashMap;

    iget-object v0, p0, Lait;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02021a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lait;->i:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f020353

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lait;->i:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lait;->i:Ljava/util/HashMap;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lait;->g:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    const/4 v2, 0x0

    iget-object v0, p0, Lait;->g:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lait;->i:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lait;->i:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lait$a;->f:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->setBitmap(Ljava/util/ArrayList;)V

    iget-object v0, p1, Lait$a;->f:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lfo;

    invoke-direct {v1}, Lfo;-><init>()V

    iput p3, v1, Lmp;->g:I

    iget-object v0, p0, Lait;->g:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lfo;->b:Ljava/util/ArrayList;

    new-instance v0, Laiu;

    invoke-direct {v0, p0, p3, p2}, Laiu;-><init>(Lait;II)V

    iput-object v0, v1, Lmp;->i:Labu$a;

    iget-object v0, p0, Lait;->k:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a()Luk;

    move-result-object v0

    invoke-virtual {v0, v1}, Luk;->b(Lmp;)Z

    :goto_2
    return-void

    :cond_4
    iget-object v1, p1, Lait$a;->f:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    iget-object v0, p0, Lait;->h:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->setBitmap(Ljava/util/ArrayList;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lait;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lait;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method private c()V
    .locals 11

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    move v3, v1

    :goto_1
    if-lez v3, :cond_0

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-wide v4, v0, Lmk;->date:J

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-wide v6, v0, Lmk;->date:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v4, p0, Lait;->e:Ljava/util/List;

    iget-object v5, p0, Lait;->e:Ljava/util/List;

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lait;->e:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->id:I

    if-ne v0, v8, :cond_3

    :cond_2
    return-void

    :cond_3
    move v1, v2

    move-wide v9, v3

    move-wide v2, v9

    :goto_2
    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    if-nez v1, :cond_5

    iget-wide v2, v0, Lmk;->date:J

    new-instance v0, Lmk;

    invoke-direct {v0}, Lmk;-><init>()V

    iput-wide v2, v0, Lmk;->date:J

    iput v8, v0, Lmk;->id:I

    iget-object v4, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v4, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-wide v4, v0, Lmk;->date:J

    sub-long/2addr v4, v2

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    iget-wide v2, v0, Lmk;->date:J

    new-instance v0, Lmk;

    invoke-direct {v0}, Lmk;-><init>()V

    iput-wide v2, v0, Lmk;->date:J

    iput v8, v0, Lmk;->id:I

    iget-object v4, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v4, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lait;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ladg;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lait;->g:Ljava/util/HashMap;

    iget-object v0, p0, Lait;->h:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lait;->h:Ljava/util/HashMap;

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->id:I

    if-lez v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lait;->h:Ljava/util/HashMap;

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lait;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lait;->e:Ljava/util/List;

    invoke-direct {p0}, Lait;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ladg;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lait;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    const/4 v1, 0x2

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->type:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->id:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Lait;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lait;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010f

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    new-instance v1, Lait$a;

    invoke-direct {v1}, Lait$a;-><init>()V

    const v0, 0x7f080344

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lait$a;->a:Landroid/widget/TextView;

    iget-object v0, v1, Lait$a;->a:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080371

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lait$a;->e:Landroid/widget/ImageView;

    const v0, 0x7f080372

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    iput-object v0, v1, Lait$a;->f:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    const v0, 0x7f0800fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    iput-object v0, v1, Lait$a;->g:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    const v0, 0x7f0800fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    iput-object v0, v1, Lait$a;->h:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {p2, v8}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_1
    invoke-virtual {p0, p1}, Lait;->getItemViewType(I)I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v1, v2, Lait$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-wide v2, v0, Lmk;->date:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, La;->a(JJ)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lait;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_3
    return-object p2

    :cond_2
    invoke-virtual {p0, p1}, Lait;->getItemViewType(I)I

    move-result v0

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lait;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030111

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lait;->getItemViewType(I)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lait;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030110

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lait$a;

    move-object v2, v0

    goto :goto_1

    :cond_5
    invoke-static {v4, v5, v2, v3}, La;->a(JJ)I

    move-result v0

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lait;->c:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lait;->d:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Lait;->getItemViewType(I)I

    move-result v0

    if-ne v0, v8, :cond_8

    const v0, 0x7f080373

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lait$a;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f080374

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lait$a;->c:Landroid/widget/ImageView;

    const v0, 0x7f080375

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lait$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->h:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, v2, Lait$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lait;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-nez v1, :cond_e

    iget-object v1, v2, Lait$a;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lmk;->body:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_5
    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-nez v1, :cond_a

    iget-object v1, v2, Lait$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->f:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    invoke-virtual {v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->g:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->h:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v1, :cond_b

    iget-object v1, v2, Lait$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->f:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    invoke-virtual {v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->g:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->h:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->e:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lait$a;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lait;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, v0, Lmk;->i:Z

    if-eqz v1, :cond_12

    iget-object v1, v2, Lait$a;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lait;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020236

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    :goto_6
    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-nez v1, :cond_c

    iget-boolean v1, v0, Lmk;->l:Z

    if-eqz v1, :cond_c

    iget-object v1, v2, Lait$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->f:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    invoke-virtual {v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->g:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v1, v7}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->h:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v1, v7}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->g:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->startRotationAnimation()V

    iget-object v1, v2, Lait$a;->h:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->startRotationAnimation()V

    :cond_c
    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-eqz v1, :cond_1

    iget-object v1, v2, Lait$a;->g:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->stopRotationAnimation()V

    iget-object v1, v2, Lait$a;->h:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->stopRotationAnimation()V

    iget-object v1, v2, Lait$a;->g:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->h:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->setVisibility(I)V

    iget-object v1, v2, Lait$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lait;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v3, v2, Lait$a;->f:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    iget-object v1, p0, Lait;->g:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    iget v5, v0, Lmk;->id:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->setData(Ljava/util/ArrayList;)V

    iget-object v1, v2, Lait$a;->f:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->createChidView()V

    iget-object v1, v2, Lait$a;->f:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->addChildView()Ljava/util/ArrayList;

    iget v0, v0, Lmk;->id:I

    invoke-direct {p0, v2, p1, v0}, Lait;->a(Lait$a;II)V

    iget-object v0, v2, Lait$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lait$a;->f:Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->setVisibility(I)V

    goto/16 :goto_3

    :sswitch_0
    iget-object v0, v2, Lait$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v2, Lait$a;->d:Landroid/widget/TextView;

    const v1, 0x7f0b04e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v2, Lait$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :sswitch_1
    iget-object v0, v2, Lait$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v2, Lait$a;->d:Landroid/widget/TextView;

    const v1, 0x7f0b04e3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v2, Lait$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :sswitch_2
    iget-object v0, v2, Lait$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v2, Lait$a;->d:Landroid/widget/TextView;

    const v1, 0x7f0b04e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v2, Lait$a;->c:Landroid/widget/ImageView;

    const v1, 0x7f02012f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v2, Lait$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_d
    iget-object v0, v2, Lait$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_e
    if-eqz v0, :cond_f

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-nez v1, :cond_11

    :cond_f
    move-object v1, v3

    :cond_10
    :goto_7
    if-eqz v1, :cond_9

    iget-object v3, v2, Lait$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_11
    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    :goto_8
    iget-object v3, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-eqz v3, :cond_10

    iget-object v3, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    goto :goto_7

    :cond_12
    iget-object v1, v2, Lait$a;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lait;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_13
    move-object v1, v3

    goto :goto_8

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x7d0 -> :sswitch_0
        0xbb8 -> :sswitch_2
    .end sparse-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
