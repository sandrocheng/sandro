.class public Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuModel"
.end annotation


# instance fields
.field private disable:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private id:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->disable:Z

    return v0
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isDisable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->disable:Z

    return v0
.end method

.method public setDisable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->disable:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->id:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->title:Ljava/lang/String;

    return-void
.end method
