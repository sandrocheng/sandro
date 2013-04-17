.class public Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lagh;

    invoke-direct {v0, p0}, Lagh;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->d:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    new-instance v0, Llv;

    invoke-direct {v0}, Llv;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Llv;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmp;->g:I

    iput-object p1, v0, Llv;->d:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Llv;->a:I

    iput-object p2, v0, Llv;->c:Landroid/widget/ImageView;

    new-instance v1, Lagi;

    invoke-direct {v1, p0, p2}, Lagi;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;Landroid/widget/ImageView;)V

    iput-object v1, v0, Lmp;->i:Labu$a;

    sget-object v1, Lbnd;->c:Lsl;

    invoke-virtual {v1, v0}, Lsl;->b(Lmp;)Z

    return-void
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300d5

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020313

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->c:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lbnd;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->b:Ljava/util/List;

    move v1, v2

    :goto_0
    sget-object v0, Lbnd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lbnd;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v3, Lbnd;->a:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->b:Ljava/util/List;

    sget-object v4, Lbnd;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->d:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->setSensitivity(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareScreenShotActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->setSelection(I)V

    :cond_3
    return-void
.end method
